# Week 3 – Day 4: Supporting Service (Tests Container)

## What I built
- Created a dedicated `tests` container that runs pytest and exits.
- Added `web` and `tests` services in docker-compose.yml.
- Ran tests using Docker Compose and saved logs to `logs/week3-day4-tests-container.log`.

## Why a tests container
- The app container is long-running (server).
- Tests container runs once and exits with a clear status code.
- CI uses exit code + logs to decide pass/fail.

## How to run
- `docker compose up --build --abort-on-container-exit tests`
- Exit code 0 means success, non-zero means failure.

