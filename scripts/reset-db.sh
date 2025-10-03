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

echo "Resetting database (dropping all tables and re-seeding)..."
docker compose exec -w /var/www/html/laravel-crm krayin php artisan migrate:fresh --seed

echo "Database has been reset."
echo "You may now need to go through the web installation wizard again to create an admin user."