#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$REPO_ROOT"

APP_DIR="./app"

if [ ! -d "$APP_DIR" ]; then
  echo "ERROR: $APP_DIR not found"
  exit 1
fi

echo "Setting directory perms to 755 and file perms to 644 under $APP_DIR..."
# Directories 755
find "$APP_DIR" -type d -print0 | xargs -0 -r chmod 755

# Files 644
find "$APP_DIR" -type f -print0 | xargs -0 -r chmod 644

# Make storage and bootstrap/cache writable by owner & group
if [ -d "$APP_DIR/storage" ]; then
  chmod -R 775 "$APP_DIR/storage"
fi
if [ -d "$APP_DIR/bootstrap/cache" ]; then
  chmod -R 775 "$APP_DIR/bootstrap/cache"
fi

# Keep app/.env readable
if [ -f "$APP_DIR/.env" ]; then
  chmod 644 "$APP_DIR/.env"
fi

echo "Permissions applied. If Apache user is not owner, ensure files are owned by uid 1000 (use ./scripts/fix-perms.sh)."
