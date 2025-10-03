#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$REPO_ROOT"

APP_DIR="./app"

if [ ! -d "$APP_DIR" ]; then
  echo "ERROR: $APP_DIR not found"
  exit 1
fi

echo "Setting directory perms to 755 and file perms to 644 under $APP_DIR (via Docker)..."

if ! command -v docker >/dev/null 2>&1; then
  echo "ERROR: docker command not found. This script requires Docker to set permissions correctly."
  exit 1
fi

# Use an ephemeral container to run chmod commands as root, avoiding host permission issues.
docker run --rm \
  -v "$PWD/$APP_DIR":/target:rw \
  --workdir /target \
  --entrypoint sh \
  alpine:3.18 -c '
    echo "Applying base permissions..."
    find . -type d -exec chmod 755 {} +
    find . -type f -exec chmod 644 {} +
    echo "Applying Laravel-specific permissions..."
    if [ -d "./storage" ]; then chmod -R 777 ./storage; fi
    if [ -d "./bootstrap/cache" ]; then chmod -R 777 ./bootstrap/cache; fi
    echo "Permissions applied successfully."
  '

echo "Done."
