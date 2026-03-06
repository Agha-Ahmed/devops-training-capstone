# Deployment Flow

## Overview
This project uses GitHub Actions to automate building, pushing, and deploying the application to AWS.

## Deployment Flow Diagram


Developer
   │
   │ git push origin main
   ▼
GitHub Repository
   │
   ▼
GitHub Actions Workflow
   │
   ├── Checkout repository
   ├── Configure AWS credentials
   ├── Login to Amazon ECR
   ├── Build Docker image
   ├── Tag Docker image
   ├── Push image to ECR
   ├── Download current ECS task definition
   ├── Render updated task definition with new image
   └── Deploy updated task definition to ECS
   ▼
Amazon ECR
   │
   │ stores Docker image
   ▼
Amazon ECS Fargate
   │
   ├── ECS Cluster: devops-training-cluster
   ├── ECS Service: devops-training-service
   └── Task Definition: devops-training-task
   ▼
Running Container
   │
   ▼
Public Endpoint
   │
   ├── /
   └── /health
   ▼
CloudWatch Logs


## End-to-End Flow

- Developer pushes code to the main branch.
- GitHub Actions workflow starts automatically.
- Docker image is built from the application source code.
- The image is tagged and pushed to Amazon ECR.
- The ECS task definition is updated with the new image.
- ECS deploys the updated task definition to the service.
- ECS waits until the service becomes stable.
- The new application version becomes available through the public endpoint.
- Logs are collected in CloudWatch.