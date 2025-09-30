#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
cd "$ROOT"

echo "1) creating required folders..."
mkdir -p letsencrypt mysql-data app uploads

echo "2) ensure acme.json exists and has correct perms..."
touch letsencrypt/acme.json
chmod 600 letsencrypt/acme.json

if [ ! -f .env ]; then
  echo ".env not found. Please create .env (see .env.example) and re-run."
  exit 1
fi

echo "3) pulling images..."
docker compose pull

echo "4) starting stack..."
docker compose up -d

echo "5) show Traefik logs (follow) to watch certificate issuance:"
echo "   docker logs -f traefik"
echo ""
echo "Visit https://${DOMAIN} after a minute or two (letsencrypt needs to complete the challenge)."

