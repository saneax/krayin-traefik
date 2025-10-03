#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$REPO_ROOT"

echo "WARNING: This will completely WIPE your Krayin CRM database and re-seed it."
read -p "Are you sure you want to continue? [y/N] " -n 1 -r
echo    # move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Aborting."
    exit 1
fi

echo "Ensuring stack is running..."
docker compose up -d krayin

echo "Resetting database by dropping it and recreating..."
docker compose exec -T krayin-mysql mysql -u root -p"${MYSQL_ROOT_PASSWORD}" -e "DROP DATABASE IF EXISTS ${MYSQL_DATABASE}; CREATE DATABASE ${MYSQL_DATABASE};"

echo "Running Krayin installer to set up the fresh database..."
docker compose exec -w /var/www/html/laravel-crm krayin php artisan krayin:install

echo "Database reset and re-installation complete."