#!/usr/bin/env bash
set -euo pipefail

# Run from repo root (scripts/)
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$REPO_ROOT"

APP_DIR="./app"

if [ ! -d "$APP_DIR" ]; then
  echo "ERROR: $APP_DIR not found in $REPO_ROOT"
  exit 1
fi

echo "Attempting to set owner uid:gid 1000:1000 on $APP_DIR using ephemeral container..."

# Prefer docker ephemeral container approach (avoids requiring sudo for many hosts)
if command -v docker >/dev/null 2>&1; then
  docker run --rm \
    -v "$PWD/$APP_DIR":/target:rw \
    --workdir /target \
    --entrypoint sh \
    alpine:3.18 -c "chown -R 1000:1000 /target && chmod -R u+rwX,g+rX,o-rX /target || true"
  echo "Ownership changed to 1000:1000 (via docker)."
else
  echo "docker not found. Trying sudo chown on host (requires password)..."
  sudo chown -R 1000:1000 "$PWD/$APP_DIR"
  sudo chmod -R u+rwX,g+rX,o-rX "$PWD/$APP_DIR" || true
  echo "Ownership changed to 1000:1000 (via sudo)."
fi

# Ensure storage and cache writable by owner+group
chmod -R 775 "$PWD/$APP_DIR/storage" 2>/dev/null || true
chmod -R 775 "$PWD/$APP_DIR/bootstrap/cache" 2>/dev/null || true

echo "Done."
