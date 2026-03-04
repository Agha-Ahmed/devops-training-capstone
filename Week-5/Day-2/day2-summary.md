# Week 5 – Day 2 Summary

## What was implemented
Deployed containerized Flask application on AWS ECS using the Fargate launch type.

Steps completed:
- Created ECS cluster: devops-training-cluster
- Created task definition: devops-training-task:1
- Used image stored in Amazon ECR
- Created ECS service to run the task
- Assigned a public IP to the task
- Verified the application using the public URL

## Working endpoint:
http://3.84.217.40:5000

## Observability
CloudWatch logging was enabled for the container.

## Log group:
/ecs/devops-training-task