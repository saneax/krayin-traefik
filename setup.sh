#!/usr/bin/env bash
set -euo pipefail

# Simple setup script to create folders, ACME file, set perms and start the stack.
# Run from the repository root: ./setup.sh

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

echo "1) Ensure directories exist..."
mkdir -p ./letsencrypt
mkdir -p ./app
mkdir -p ./db_data

# Create acme.json for Traefik storage and secure it
ACME_FILE="./letsencrypt/acme.json"
if [ ! -f "$ACME_FILE" ]; then
  echo "{}" > "$ACME_FILE"
  chmod 600 "$ACME_FILE"
  echo "Created $ACME_FILE (600)"
else
  echo "$ACME_FILE already exists"
  chmod 600 "$ACME_FILE" || true
fi

# If app/.env is missing but example exists, create it
if [ ! -f "./app/.env" ]; then
  if [ -f "./app/.env.example" ]; then
    echo "Found ./app/.env.example — copying to ./app/.env"
    cp ./app/.env.example ./app/.env
  else
    echo "Warning: ./app/.env not found and no ./app/.env.example present."
    echo "You must create ./app/.env (database credentials / APP_URL etc)."
  fi
else
  echo "./app/.env found"
fi

# Ensure ownership/permissions match the container expectation (uid 1000)
echo "Setting ownership of ./app to UID 1000 (container expects uid 1000)"
sudo chown -R 1000:1000 ./app || echo "chown failed (you might not have sudo); ensure container user can read/write ./app"

# Pull images (safe) and bring up the stack
echo "Pulling docker images..."
docker compose pull

echo "Bringing up containers (detached)..."
docker compose up -d

echo ""
echo "Done. Check logs with: docker compose logs --tail 200 traefik krayin krayin-mysql"
echo "If Traefik ACME needs to obtain certs, check: docker logs traefik --tail 200"
echo ""
echo "Notes:"
echo "- phpMyAdmin is bound to 127.0.0.1:8082 (local only). Use SSH tunnel to access externally:"
echo "    ssh -L 8082:127.0.0.1:8082 user@your-vps-ip"
echo "  then open http://127.0.0.1:8082 locally."
echo "- Ensure the app's APP_URL in ./app/.env is set to https://${DOMAIN:-crm.agenticone.in}"
