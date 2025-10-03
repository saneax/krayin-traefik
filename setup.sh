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
mkdir -p app/laravel-crm
echo " -> app/laravel-crm exists at $ROOT/app/laravel-crm"

# Check if app/ is empty or not populated with Krayin files (e.g., public/index.php)
if [ ! -f app/laravel-crm/public/index.php ]; then
  echo " -> app/laravel-crm directory is empty or not populated. Copying Krayin source from image..."
  TEMP_CONTAINER_NAME="krayin-source-extractor-$(date +%s)"
  # Use a temporary directory for docker cp to avoid host permission issues,
  # then move contents to app/ using host user's permissions.
  TEMP_HOST_DIR="$ROOT/app_temp_copy" # Temporary directory on host
  mkdir -p "$TEMP_HOST_DIR" # Ensure temp dir exists and is owned by host user
  
  docker create --name "$TEMP_CONTAINER_NAME" webkul/krayin:2.0.1
  docker cp "$TEMP_CONTAINER_NAME":/var/www/html/laravel-crm/. "$TEMP_HOST_DIR" # Copy from /laravel-crm
  docker rm "$TEMP_CONTAINER_NAME"

  # Copy contents from temp dir to app/ preserving attributes, then clean up temp.
  cp -a "$TEMP_HOST_DIR"/. "$ROOT/app/laravel-crm/" # Copy to app/laravel-crm
  rm -rf "$TEMP_HOST_DIR" # Clean up temp dir
  echo " -> Krayin source moved to $ROOT/app/laravel-crm"
else
  echo " -> app/laravel-crm directory already populated with Krayin source."
fi

# 5) Ensure all scripts are executable and fix permissions
chmod +x scripts/*
echo " -> scripts/ made executable"

# Run fix-perms.sh first to set ownership, then fix-files-perms.sh to set desired file permissions.
./scripts/fix-perms.sh
./scripts/fix-files-perms.sh

# 4) Create/overwrite app/laravel-crm/.env to ensure correct settings
echo " -> Ensuring app/laravel-crm/.env has correct settings..."
sudo tee app/laravel-crm/.env > /dev/null <<'EOF'
APP_NAME=KrayinCRM
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=https://crm.agenticone.in
LOG_CHANNEL=stack
DB_CONNECTION=mysql
DB_HOST=krayin-mysql
DB_PORT=3306
DB_DATABASE=krayin_db
DB_USERNAME=krayin_user
DB_PASSWORD=TwoVision!23
BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120
MAIL_MAILER=smtp
MAIL_HOST=sandbox.smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="tech@agenticone.in"
MAIL_FROM_NAME="${APP_NAME}"
EOF
echo " -> app/laravel-crm/.env configured."

# Ensure the .env file has correct ownership before key:generate
echo " -> Fixing ownership of app/laravel-crm/.env..."
./scripts/fix-perms.sh

# Generate the Laravel APP_KEY. This is critical.
echo " -> Generating APP_KEY..."
docker compose run --rm --no-deps -w /var/www/html/laravel-crm krayin php artisan key:generate

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
