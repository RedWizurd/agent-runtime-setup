from fastapi import FastAPI

app = FastAPI(title="Agent Runtime Setup", version="0.1.0")


@app.get("/health")
def health() -> dict:
    return {"status": "ok", "service": "agent-runtime-setup"}


@app.get("/")
def index() -> dict:
    return {"message": "Agent runtime baseline is running"}
