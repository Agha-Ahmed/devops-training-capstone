# Docker Compose Architecture – Local Development Scenario

## Overview
This project uses Docker Compose to define a multi-container setup consisting of:
- Web service (Flask application)
- Database service (PostgreSQL)
Both services run inside isolated containers and communicate through Docker’s internal network.

## Architecture Diagram
Developer → Web Container → Database Container

- The web service runs on port 5000 inside the container.
- It is exposed to localhost on port 5001.
- The database runs internally and is accessed using the service name `db`.

## Local Development Scenario

This stack can be used in a local development environment where:

1. A developer is building a web application that depends on a PostgreSQL database.
2. Instead of installing PostgreSQL locally, Docker Compose spins up a ready-to-use database container.
3. The web application connects to the database using:   
   DATABASE_URL=postgres://user:pass@db:5432/appdb
4. All services run in isolated containers, ensuring:
   - No dependency conflicts
   - Consistent environment across team members
   - Easy setup using a single command

Command to start the environment:
docker compose up -d


## Persistent Storage
A named Docker volume (`postgres_data`) is used to ensure:

- Database data persists across container restarts
- Developers do not lose test data during development
- The environment behaves closer to production systems