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




## week 5 day 5

## Deployment Process

This project uses a CI/CD pipeline with GitHub Actions and AWS ECS.

Deployment flow:

1. Developer pushes code to the `main` branch.
2. GitHub Actions CI/CD pipeline is triggered.
3. The pipeline builds a Docker image.
4. The image is pushed to Amazon ECR.
5. A new ECS task definition revision is created.
6. The ECS service updates to the new task definition.
7. ECS launches a new container and replaces the old one.

Architecture Flow:

Developer → GitHub → CI/CD Pipeline → Docker Image → Amazon ECR → Amazon ECS → Running Container

---

## Rollback Procedure

If a deployment fails, the service can be rolled back to a previous task definition.

Steps:

1. Go to **AWS Console → ECS**
2. Open **Clusters**
3. Select **devops-training-cluster**
4. Open **Services → devops-training-service**
5. Click **Update Service**
6. Select a **previous task definition revision**
7. Deploy the previous working version.

This restores the last stable version of the application.