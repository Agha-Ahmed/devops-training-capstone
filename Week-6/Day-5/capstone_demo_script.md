# Capstone Demo Script

## Introduction 

This project demonstrates a full DevOps workflow using Docker, GitHub Actions, and AWS ECS.

The system automatically builds, deploys, and monitors a containerized application.

---

## Step 1 – Show Repository

Explain project structure:

- Application code
- Dockerfile
- Terraform infrastructure
- GitHub Actions CI/CD
- Monitoring documentation

---

## Step 2 – Show CI/CD Pipeline

Push a small change.

Then open GitHub Actions and show:

- CI workflow building Docker image
- Image pushed to AWS ECR
- CD workflow deploying to ECS

---

## Step 3 – Show Running Application

Open browser or run:

curl http://APP_URL

Show response.

Also test health endpoint:

curl http://APP_URL/health

---

## Step 4 – Show Monitoring

Open AWS CloudWatch and show:

- Application logs
- CPU and memory metrics
- Alarm configuration

---

## Step 5 – Explain Architecture

Explain architecture flow:

Developer → GitHub → CI/CD → Docker → ECR → ECS → CloudWatch

---

## Conclusion

The system demonstrates automated build, deployment, and monitoring using modern DevOps practices.