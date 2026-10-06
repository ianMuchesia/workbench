.PHONY: help up down test lint

help:
	@echo "Targets:"
	@echo "  up    docker compose up -d"
	@echo "  down  docker compose down"
	@echo "  test  uv run pytest -q tests/spec tests/unit"
	@echo "  lint  uv run ruff check ."

up:
	docker compose up -d

down:
	docker compose down

test:
	uv run pytest -q tests/spec tests/unit

lint:
	uv run ruff check .
