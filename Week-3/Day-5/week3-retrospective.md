# Week 3 Retrospective – Containerization & CI Integration

## Overview
Week 3 focused on containerization using Docker, Docker Compose, and CI integration with GitHub Actions.  
The goal was to package applications and supporting services into containers and integrate Docker builds into CI workflows.

---

### 1️⃣ Docker Fundamentals
- How Docker images are built using Dockerfiles.
- Difference between single-stage and multi-stage builds.
- Importance of smaller runtime images.

### 2️⃣ Docker Compose
- Running multi-container applications.
- Service dependencies (`depends_on`).
- Networks and port mappings.
- Using Compose for local development and testing.

### 3️⃣ Test Containers
- Creating a separate tests container.
- Using exit codes as CI signals.
- Running tests inside containers.

### 4️⃣ CI Integration
- Building Docker images inside GitHub Actions.
- Triggering workflows on pull requests.
- Understanding Linux runner case sensitivity.
- Debugging CI path issues.

## Achieved

- Reduced image size from **236MB → 219MB** using multi-stage build.
- Created automated PR validation for Docker builds.
- Structured project into separate app, tests, and compose services.

## Reflection

Week 3 strengthened my understanding of container-based workflows and how modern DevOps pipelines rely on Docker for consistency, scalability, and automation.

I now feel confident building, optimizing, and validating Docker images inside CI environments.