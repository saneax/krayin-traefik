#!/usr/bin/env bash
set -euo pipefail

# Make sure this script runs from repo root
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR"

# UID / GID used by the web container for the app files. 
# Most images use uid 1000; adjust if your krayin container runs a different uid.
APP_UID=${APP_UID:-1000}
APP_GID=${APP_GID:-1000}

echo "Fixing ownership of ./app to ${APP_UID}:${APP_GID} using a short ephemeral container..."

# Use alpine to chown and set secure permissions
docker run --rm -v "$REPO_DIR":/work -w /work alpine:3.18 /bin/sh -c \
"chown -R ${APP_UID}:${APP_GID} app || true; \
 find app -type d -exec chmod 2755 {} \; ; \
 find app -type f -exec chmod 0644 {} \; ; \
 chmod 0664 app/.env 2>/dev/null || true"

echo "Done. Files under ./app are now owned by ${APP_UID}:${APP_GID} and perms tightened."
