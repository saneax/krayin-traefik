#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# UID used by web container (adjust if needed)
APP_UID=${APP_UID:-1000}
APP_GID=${APP_GID:-1000}

echo "1) Ensure ./app/.env exists (created from .env.example if necessary)"
if [ ! -f ./app/.env ]; then
  if [ -f ./.env.example ]; then
    echo " - Creating ./app/.env from .env.example"
    # create .env as root then chown to container uid
    cp ./.env.example ./app/.env
    docker run --rm -v "$REPO_DIR":/work -w /work alpine:3.18 /bin/sh -c "chown ${APP_UID}:${APP_GID} app/.env && chmod 0644 app/.env"
  else
    echo " - No .env.example in repo, creating empty app/.env"
    touch ./app/.env
    docker run --rm -v "$REPO_DIR":/work -w /work alpine:3.18 /bin/sh -c "chown ${APP_UID}:${APP_GID} app/.env && chmod 0644 app/.env"
  fi
else
  echo " - app/.env already exists; ensuring ownership and perms"
  docker run --rm -v "$REPO_DIR":/work -w /work alpine:3.18 /bin/sh -c "chown ${APP_UID}:${APP_GID} app/.env && chmod 0644 app/.env"
fi

echo "2) Ensure app code ownership + perms (scripts/fix-perms.sh)"
chmod +x ./scripts/fix-perms.sh
./scripts/fix-perms.sh

echo "3) Make sure your docker-compose has a bind for app/.env mounted read-only (see instructions)."

echo "4) Bring down and up docker-compose cleanly (networks/volumes removed)"
docker compose down -v --remove-orphans || true

# Remove stale networks created by older runs (harmless if not present)
docker network rm krayin-traefik_web krayin-traefik_internal 2>/dev/null || true

docker compose up -d --remove-orphans

echo "Waiting a few seconds for services..."
sleep 4

echo "Docker containers:"
docker compose ps

echo "Tail logs for the key services (traefik, krayin, krayin-mysql):"
docker compose logs --tail 100 traefik krayin krayin-mysql || true

echo "Done. Verify: curl -vk --resolve crm.agenticone.in:443:127.0.0.1 https://crm.agenticone.in/"
