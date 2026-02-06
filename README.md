# agent-runtime-setup

Provides env-var driven setup, Python/FastAPI/Uvicorn runtime basics, CI/CD workflows, and governance charter docs.

## Purpose
Offer a clean baseline repository for standing up an agent runtime with consistent environment setup, service bootstrapping, and operational docs.

## Features
- Environment variable-based runtime configuration.
- Python runtime baseline with FastAPI/Uvicorn web serving.
- Starter CI/CD workflow scaffolding.
- Governance docs (including constitution-style charter artifacts).
- Sanity and validation script entry points.

## Config
- `APP_ENV`: Runtime environment (`dev`, `staging`, `prod`).
- `APP_HOST`: API bind host.
- `APP_PORT`: API bind port.
- `LOG_LEVEL`: Application logging level.
- `GOVERNANCE_DOC_PATH`: Governance charter/constitution document path.

## Quickstart
```bash
cp .env.example .env
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --host 0.0.0.0 --port 8000
```

## Roadmap
- Add production deployment templates (container and systemd).
- Add CI quality gates for policy/schema checks.
- Add baseline observability stack (logs, metrics, tracing).
- Add hardening checklist for runtime security.
