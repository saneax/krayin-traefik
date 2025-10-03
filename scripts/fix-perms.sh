#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "Fixing ownership of ./app to uid 1000 via ephemeral container..."
docker run --rm -v "$ROOT_DIR/app":/app alpine:3.18 sh -c "chown -R 1000:1000 /app || true; chmod -R u+rwX /app || true"
echo "Done."
