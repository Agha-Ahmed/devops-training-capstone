# Week 5 Day 2 — ECS Setup

## ECS Cluster
Name: devops-training-cluster  
Launch type: AWS Fargate  
Region: us-east-1 

## Task Definition
Family: devops-training-task  
Container: devops-training-container

Image:
604977880911.dkr.ecr.us-east-1.amazonaws.com/devops-training-app:latest

Port:
3000/TCP

Task Size:
CPU: 0.25 vCPU  
Memory: 1 GB

Logging:
CloudWatch logs enabled