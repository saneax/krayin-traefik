#!/usr/bin/env bash
set -euo pipefail


# Make sure to source your .env file or have the variables exported
source .env

# Create a backup directory if it doesn't exist
mkdir -p backups

# Execute mysqldump with the --no-tablespaces flag
docker compose exec -T krayin-mysql mysqldump --no-tablespaces -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" "${MYSQL_DATABASE}" > backups/krayin-db-backup-$(date +%Y-%m-%d).sql

echo "Database dump saved to backups/krayin-db-backup-$(date +%Y-%m-%d).sql"

# Back up the krayin_storage volume
docker run --rm \
  -v krayin-traefik_krayin_storage:/data \
  -v $(pwd)/backups:/backup \
  alpine:latest \
  tar -czf /backup/krayin-storage-backup-$(date +%Y-%m-%d).tar.gz -C /data .

echo "User uploads backed up to backups/krayin-storage-backup-$(date +%Y-%m-%d).tar.gz"

