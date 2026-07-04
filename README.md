# LaunchOps Kit

[![CI](https://github.com/Dun1702/launchops-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/Dun1702/launchops-kit/actions/workflows/ci.yml)

Production-minded deployment starter for full-stack apps: Docker Compose, Nginx reverse proxy, CI checks, health probes, backups, and release operations.

## Why This Exists

Shipping a full-stack project is more than running the app locally. LaunchOps Kit gives small teams a practical operations baseline so a project can move from demo to server with predictable checks and repeatable deployment habits.

## Included

- Docker Compose skeleton for app + Nginx.
- Nginx reverse proxy config with health endpoint routing.
- GitHub Actions CI template.
- Environment example with production-safe defaults to review.
- Healthcheck script for release validation.
- Release checklist and backup policy docs.

## Quick Start

```bash
cp .env.example .env
docker compose up --build
```

Validate after deploy:

```bash
bash scripts/deploy-check.sh http://localhost
```

## Deployment Shape

```txt
GitHub push -> CI checks -> Docker image/build -> server compose -> Nginx proxy -> health probe
```

## Suggested App Contract

Your app container should expose:

- `GET /health` for readiness.
- `PORT` environment variable.
- structured logs to stdout/stderr.
- migration command documented in release notes.

## Roadmap

- PostgreSQL service profile.
- Zero-downtime deploy script.
- Uptime monitor examples.
- Log rotation config.
- Database restore drill.

## License

MIT
