# AWS Mapping – CI Agents / Build Machines → AWS Services (Week 4 Day 1)

# Current Setup (Before AWS)
- Local machine → Docker build & run
- GitHub Actions → Build Docker image on PR
- Docker Compose → Multi-container setup
- Local logs → Docker logs / CI logs

# AWS Equivalent Services

## Build / CI Agent
Current:
- GitHub Actions runner builds Docker image

AWS Equivalent:
- AWS CodeBuild (managed CI build service)
- OR EC2 (self-hosted runner)

## Docker Image Storage
Current:
- Docker images stored locally

AWS Equivalent:
- Amazon ECR (Elastic Container Registry)

## Running the Web Application
Current:
- docker run -p 5000:5000
- Docker Compose

AWS Equivalent:
- AWS App Runner (simplest)
- OR ECS (Fargate)
- OR EKS (Kubernetes)

## Running Tests
Current:
- Tests container runs locally
- Exit code decides pass/fail

AWS Equivalent:
- CodeBuild build phase
- OR ECS task that runs tests and exits

## Logs & Monitoring
Current:
- docker logs
- GitHub Actions logs

AWS Equivalent:
- CloudWatch Logs
- CloudWatch Metrics & Alarms


## Networking
Current:
- Local ports (5000)
- Docker bridge network

AWS Equivalent:
- VPC
- Subnets
- Security Groups

## Access Control

Current:
- GitHub permissions
- AWS SSO profile

AWS Equivalent:
- IAM Roles
- IAM Policies
- IAM Identity Center (SSO)


# Final Flow (Future AWS Setup)
Developer  
→ GitHub  
→ Build Docker image  
→ Push image to ECR  
→ Deploy to App Runner / ECS  
→ Logs in CloudWatch  

