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

# 3) Ensure app/ dir exists and is populated with Krayin source
mkdir -p app
echo " -> app/ exists at $ROOT/app"

# Check if app/ is empty or not populated with Krayin files (e.g., public/index.php)
if [ ! -f app/public/index.php ]; then
  echo " -> app/ directory is empty or not populated. Copying Krayin source from image..."
  TEMP_CONTAINER_NAME="krayin-source-extractor-$(date +%s)"
  # Use a temporary directory for docker cp to avoid host permission issues,
  # then move contents to app/ using host user's permissions.
  TEMP_HOST_DIR="$ROOT/app_temp_copy" # Temporary directory on host
  mkdir -p "$TEMP_HOST_DIR" # Ensure temp dir exists and is owned by host user
  
  docker create --name "$TEMP_CONTAINER_NAME" webkul/krayin:2.0.1
  docker cp "$TEMP_CONTAINER_NAME":/var/www/html/. "$TEMP_HOST_DIR"
  docker rm "$TEMP_CONTAINER_NAME"

  # Copy contents from temp dir to app/ preserving attributes, then clean up temp.
  cp -a "$TEMP_HOST_DIR"/. "$ROOT/app/"
  rm -rf "$TEMP_HOST_DIR" # Clean up temp dir

  echo " -> Krayin source moved to $ROOT/app"
else
  echo " -> app/ directory already populated with Krayin source."
fi

# 5) Ensure scripts are executable and fix permissions (Docker-based, portable)
chmod +x scripts/*
echo " -> scripts/ made executable"

# Run fix-perms.sh first to set ownership, then fix-files-perms.sh to set desired file permissions.
./scripts/fix-perms.sh
./scripts/fix-files-perms.sh
# 4) Create app/.env if it doesn't exist
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

# 6) Validate docker-compose file and start stack
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
