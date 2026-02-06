PYTHON ?= python3
VENV ?= .venv
PIP := $(VENV)/bin/pip
PY := $(VENV)/bin/python

.PHONY: setup check run

setup:
	$(PYTHON) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

check:
	$(PY) -m compileall -q .
	$(PY) -c "import pathlib; print(pathlib.Path('app/main.py').exists())"

run:
	$(PY) -m uvicorn app.main:app --host 0.0.0.0 --port 8000
