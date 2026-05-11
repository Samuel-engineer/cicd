# CI/CD FastAPI Project

A simple FastAPI application with Docker support and automated tests.

## Project Structure

```
.
├── main.py           # FastAPI application
├── test_main.py      # Unit tests
├── requirements.txt  # Python dependencies
└── Dockerfile        # Docker image definition
```

## Prerequisites

- Python 3.11+
- Docker (optional)

## Installation

```bash
pip install -r requirements.txt
```

## Running the App

```bash
uvicorn main:app --host 0.0.0.0 --port 8000
```

The API will be available at `http://localhost:8000`.

## Running Tests

```bash
pytest test_main.py
```

## Docker

**Build the image:**

```bash
docker build -t cicd-app .
```

**Run the container:**

```bash
docker run -p 8000:8000 cicd-app
```

## Endpoints

| Method | Path | Description              |
|--------|------|--------------------------|
| GET    | `/`  | Returns a welcome message |
