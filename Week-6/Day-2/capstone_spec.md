# Capstone Project Specification

## Project Title
Scalable Application Delivery with CI/CD and AWS ECS

## Overview

This project demonstrates a complete DevOps workflow for building, deploying, and monitoring a containerized application using modern DevOps tools and AWS services.

The system automates the process from code commit to deployment and monitoring.

## Architecture

Developer → GitHub → CI/CD Pipeline → Docker Image → AWS ECR → AWS ECS (Fargate) → CloudWatch Monitoring

## Components

### 1. Application
A simple containerized API application built with Python/Flask.

Endpoints:
- `/health`
- `/version`

The application is packaged inside a Docker container.

---

### 2. Containerization

Docker is used to package the application into a container image.

Key elements:
- Dockerfile
- Multi-stage builds (where applicable)
- Lightweight runtime image

---

### 3. Container Registry

AWS **ECR (Elastic Container Registry)** stores Docker images.

Process:
1. CI builds Docker image
2. Image is pushed to ECR
3. ECS pulls image during deployment

---

### 4. CI/CD Pipeline

GitHub Actions automates build and deployment.

Pipeline stages:

1. Code push to GitHub
2. CI workflow builds Docker image
3. Image pushed to AWS ECR
4. CD workflow updates ECS service
5. ECS deploys new task revision

---

### 5. Container Orchestration

AWS **ECS Fargate** runs the application containers.

Benefits:
- No server management
- Automatic scaling
- Integrated networking and security

---

### 6. Monitoring

AWS **CloudWatch** is used for monitoring and alerting.

Monitoring includes:

Metrics:
- CPUUtilization
- MemoryUtilization

Logs:
- ECS container logs
- Application startup and request logs

Alarms:
- High CPU usage
- High memory usage

Dashboards:
- Service health visualization

---

## Alarm Strategy

Two CloudWatch alarms are configured:

1. High CPU Alarm  
CPUUtilization > 70%

2. High Memory Alarm  
MemoryUtilization > 70%

These alarms send notifications through AWS SNS.

---

## Deployment Workflow

1. Developer pushes code to GitHub
2. CI builds Docker image
3. Image pushed to AWS ECR
4. CD updates ECS service
5. ECS deploys updated container
6. CloudWatch monitors service health

---