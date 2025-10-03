#!/usr/bin/env bash
set -euo pipefail

# Resolve absolute path to this script (follow symlinks)
SOURCE="${BASH_SOURCE[0]}"
while [ -L "$SOURCE" ]; do
  DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
ROOT="$SCRIPT_DIR"

cd "$ROOT"

echo "Repo root: $ROOT"

# 1) Ensure project .env exists (repo root .env)
if [ ! -f "$ROOT/.env" ]; then
  cat > "$ROOT/.env" <<EOF
# project settings (edit if needed)
DOMAIN=crm.agenticone.in
LETSENCRYPT_EMAIL=tech@agenticone.in

# mysql defaults (change if needed)
MYSQL_ROOT_PASSWORD=OneVision!12
MYSQL_DATABASE=krayin_db
MYSQL_USER=krayin_user
MYSQL_PASSWORD=TwoVision!23
EOF
  echo ".env created at $ROOT/.env — please edit if values differ."
else
  echo "project .env already present"
fi

# 2) traefik acme.json
mkdir -p traefik
touch traefik/acme.json
chmod 600 traefik/acme.json
echo " -> traefik/acme.json ready (600)"

# 3) Ensure app/ dir exists
mkdir -p app
echo " -> app/ exists at $ROOT/app"

# 4) Backup existing app/.env
if [ ! -f app/.env ]; then
  if [ -f app/.env.example ]; then
    sudo cp app/.env.example app/.env
    echo " -> app/.env created from app/.env.example"
  else
    # Use sudo tee to create the file even if app/ is owned by another user (e.g., root)
    sudo tee app/.env > /dev/null <<'EOF'
APP_URL=https://crm.agenticone.in
DB_CONNECTION=mysql
DB_HOST=krayin-mysql
DB_PORT=3306
DB_DATABASE=krayin_db
DB_USERNAME=krayin_user
DB_PASSWORD=TwoVision!23
EOF
    echo " -> app/.env created with default values."
  fi
else
  echo "app/.env already present"
fi

# 5) Ensure scripts are executable
chmod +x scripts/*
echo " -> scripts/ made executable"

# 6) Fix permissions using scripts (Docker-based, portable)
#    Run fix-files-perms.sh first to set desired file permissions, then fix-perms.sh to set ownership.
./scripts/fix-files-perms.sh
./scripts/fix-perms.sh

# 7) Validate docker-compose file and start stack
if [ ! -f docker-compose.yml ] && [ ! -f docker-compose.yaml ]; then
  echo "ERROR: no docker-compose.yml found in $ROOT"
  exit 1
fi

echo "Validating docker compose config..."
docker compose config >/dev/null

echo "Bringing stack down (keeps volumes by default) and up"
docker compose down || true
docker compose up -d --remove-orphans

echo "Done. Useful checks:"
echo "  docker compose ps"
echo "  docker compose logs -f traefik krayin krayin-mysql phpmyadmin"
