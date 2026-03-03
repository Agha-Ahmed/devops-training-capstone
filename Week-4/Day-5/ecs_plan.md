# ECS Deployment Plan 

## Goal
Deploy my Dockerized app to AWS using ECS Fargate with CI/CD later.

## Components Needed
- ECR Repository: store Docker images
- ECS Cluster: logical group for services
- Task Definition: container config (image, port, env vars)
- ECS Service (Fargate): runs tasks and keeps them healthy
- VPC + Subnets: networking for tasks
- Security Group: allow inbound HTTP/HTTPS (and restrict others)
- IAM Roles:
  - Task execution role (pull image from ECR, write logs)
- CloudWatch Logs: container logs
- Load Balancer (optional but likely): stable public URL + health checks

## CI/CD Flow (future)
1. CI builds Docker image on PR
2. On main merge:
   - build & push to ECR
   - deploy/update ECS service (new task definition revision)
