
# krayin-traefik

This repository provides a minimal, production-like local orchestration for the [Krayin CRM](https://krayincrm.com/) using Docker Compose, Traefik (reverse proxy), MySQL, and Apache. It is designed for secure, reproducible development and deployment.

## Architecture
- **Services** (see `docker-compose.yml`):
	- `traefik`: Reverse proxy, HTTPS via Let's Encrypt, routes all traffic.
	- `krayin`: Main Laravel CRM app, served by Apache.
	- `krayin-mysql`: MySQL database for Krayin.
	- `phpmyadmin`: (Optional) DB admin, localhost-only.
- **Networks**: `krayin-traefik_internal` (private), `krayin-traefik_web` (public-facing).
- **Volumes**: Persistent MySQL data, mounted app code, config files.
- **Config**: Traefik and Apache configs are mounted for easy editing.

## Quick Start
1. **Clone the repo**
2. **Run setup:**
	 ```bash
	 ./setup.sh
	 ```
	 - This creates `.env` files, sets up permissions, and starts the stack.
3. **Access the CRM:**
	- Visit `https://crm.agenticone.in` (default domain).
	- To use a different domain, update all occurrences of `crm.agenticone.in` in `docker-compose.yml`, `apache/000-default.conf`, and `.env` files as needed.

## Key Workflows
- **Start/Stop stack:**
	```bash
	docker compose up -d
	docker compose down
	```
- **Fix permissions (after code changes or git pull):**
	```bash
	./scripts/fix-perms.sh
	./scripts/fix-files-perms.sh
	```
- **Edit environment variables:**
		- Root `.env` for global settings (DOMAIN, LETSENCRYPT_EMAIL, DB credentials; default domain is `crm.agenticone.in`)
		- `app/.env` for Laravel app config (APP_URL should match your domain, default is `https://crm.agenticone.in`)

## Security & Conventions
- Traefik dashboard and phpMyAdmin are only exposed to localhost.
- All scripts avoid `sudo` where possible (prefer Docker-based fixes).
- Minimal, clear configs—avoid unnecessary complexity.

## Key Files & Directories
- `docker-compose.yml`: Main orchestration file
- `setup.sh`: One-step setup and launch
- `scripts/`: Permission and setup scripts
- `apache/000-default.conf`: Apache vhost config
- `app/`: Laravel CRM codebase (mounted)
- `letsencrypt/`: Traefik ACME certs (auto-generated)

---
For more details, see `.github/copilot-instructions.md` or inspect the scripts and compose file.
