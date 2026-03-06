# Week 5 Day 1 – Elastic Container Registry (ECR) Setup

# ECR Setup

## Repository
Created repository:

devops-training-app

## Authenticate Docker to ECR

aws ecr get-login-password --region us-east-1 \
| docker login \
--username AWS \
--password-stdin 604977880911.dkr.ecr.us-east-1.amazonaws.com

Login succeeded.

## Push images

docker push 604977880911.dkr.ecr.us-east-1.amazonaws.com/devops-training-app:latest

docker push 604977880911.dkr.ecr.us-east-1.amazonaws.com/devops-training-app:66b9b5a

## Result
Images successfully pushed to Amazon ECR.

ECR will be used to store Docker images before deploying to ECS.