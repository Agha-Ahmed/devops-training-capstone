# devops-training-capstone

## My Goal
I am transitioning from a Software Automation Engineer background into DevOps.  
My goal is to understand CI/CD, cloud infrastructure, Docker, Kubernetes, and Infrastructure as Code so I can build, deploy, and manage scalable systems.

This repository will track my hands-on DevOps learning journey.



## CI Pipeline Overview
Our repository uses GitHub Actions for CI.

### Pipeline Triggers
- Runs on `push` events to `main` and `feature/*` branches.
- Runs on `pull_request` events targeting `main`.

### Pipeline Jobs

#### 1. Build Job
- Runs on `ubuntu-latest`.
- Checks out the repository.
- Sets up Python 3.11.
- Installs dependencies from `requirements.txt`.
- Marks build as completed.

#### 2. Test Job
- Runs after `build` job (`needs: build`).
- Uses a matrix of Python versions: 3.10 and 3.11.
- Checks out the repository.
- Sets up Python version from matrix.
- Installs dependencies with caching to speed up workflow.
- Makes test script executable.
- Runs tests using `./scripts/run_tests.sh`.
- Uploads test logs as artifacts.



## Week 3 Preview – Containerization
In Week 3, we will start integrating containerization into our CI/CD pipeline.

### Goals
- Use Docker to create consistent build and test environments.
- Ensure that all dependencies and environments are reproducible across different machines.
- Simplify deployment by packaging applications into containers.
