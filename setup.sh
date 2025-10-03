#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "1) Ensure .env (project) exists"
if [ ! -f .env ]; then
  echo "LETSENCRYPT_EMAIL=tech@agenticone.in" > .env
  echo "DOMAIN=crm.agenticone.in" >> .env
  echo "MYSQL_ROOT_PASSWORD=OneVision!12" >> .env
  echo "MYSQL_DATABASE=krayin_db" >> .env
  echo "MYSQL_USER=krayin_user" >> .env
  echo "MYSQL_PASSWORD=TwoVision!23" >> .env
  echo ".env created. Edit if necessary."
fi

echo "2) Create traefik/acme.json and set permissions"
mkdir -p traefik
touch traefik/acme.json
chmod 600 traefik/acme.json

echo "3) Ensure app/.env exists and backup if present"
if [ -f app/.env ]; then
  cp -v app/.env app/.env.backup.$(date +%s)
fi

# create minimal app/.env if missing. DO NOT overwrite secrets if present.
cat > app/.env <<'EOF'
APP_URL=https://crm.agenticone.in
DB_CONNECTION=mysql
DB_HOST=krayin-mysql
DB_PORT=3306
DB_DATABASE=krayin_db
DB_USERNAME=krayin_user
DB_PASSWORD=TwoVision!23
EOF
echo "app/.env written/overwritten. If you want different DB credentials, edit app/.env now."

echo "4) Fix permissions so container user 1000 can read/write app (and host user can edit)"
sudo chown -R 1000:1000 app || true
sudo chmod -R u+rwX,g+rwX,o-rwx app || true

echo "5) Bring stack down and up cleanly"
docker compose down -v || true
docker compose up -d --remove-orphans

echo "Done. Run: docker compose logs -f traefik krayin krayin-mysql phpmyadmin"
