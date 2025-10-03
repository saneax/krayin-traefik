#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)
cd "$ROOT_DIR"

echo "=== setup.sh: Starting ($(date)) ==="

# 1) create folders
mkdir -p ./letsencrypt
mkdir -p ./app
mkdir -p ./db_data

# 2) ensure acme.json exists and has correct perms (traefik requires 600)
ACME="./letsencrypt/acme.json"
if [ ! -f "$ACME" ]; then
  echo "{}" > "$ACME"
  chmod 600 "$ACME" || true
  echo "Created $ACME with 600 perms"
else
  chmod 600 "$ACME" || true
  echo "$ACME exists"
fi

# 3) copy .env from example if missing (do NOT override a real .env)
if [ ! -f ./app/.env ]; then
  if [ -f ./app/.env.example ]; then
    cp -p ./app/.env.example ./app/.env
    echo "Copied ./app/.env from example"
  else
    echo "WARNING: ./app/.env missing and no example found — create it before deploy"
  fi
else
  echo "./app/.env present — not overwriting"
fi

# 4) Pull images (fast check)
echo "Pulling images..."
docker compose pull --quiet

# 5) Start required core services first (db + traefik) to reduce races
docker compose up -d krayin-mysql traefik || true

# 6) Ensure ownership on ./app is set to uid 1000 (container's expected uid).
#    We avoid doing host 'sudo chown' by using a short-lived Alpine container run as root which chowns the bind mount.
#    This requires docker is available on host and the user can run docker.
echo "Setting ownership of ./app to uid:1000 (via transient container)..."
docker run --rm \
  -v "$ROOT_DIR/app":/app \
  --workdir /app \
  --entrypoint sh \
  alpine:3.18 -c "chown -R 1000:1000 /app || true; chmod -R u+rwX /app || true" || true

# 7) Start remaining services
docker compose up -d krayin phpmyadmin || true

# 8) Run initial app commands inside krayin (artisan caches, key gen if missing)
if docker compose ps krayin >/dev/null 2>&1; then
  echo "Running artisan maintenance commands..."
  docker compose exec krayin bash -lc "cd /var/www/html && \
    if [ -f artisan ]; then \
      php artisan config:clear || true; \
      php artisan cache:clear || true; \
      php artisan config:cache || true; \
      php artisan route:clear || true; \
      php artisan route:cache || true; \
      if [ -z \"\$(php -r \"echo getenv('APP_KEY') ?: '';\")\" ]; then php artisan key:generate --force || true; fi; \
    fi"
fi

echo "=== setup.sh: Done ($(date)) ==="
echo "Check logs: docker compose logs --tail 200 traefik krayin krayin-mysql"
