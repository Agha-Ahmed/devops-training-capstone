# Capstone Dry Run

## Objective
Verify full DevOps pipeline from code commit to deployed application.

## Steps

1. Pushed code change to GitHub.
2. GitHub Actions pipeline built Docker image.
3. Image pushed to AWS ECR.
4. ECS deployed updated container.
5. Verified application endpoint.
6. Verified logs in CloudWatch.
7. Verified CPU and memory metrics.

## Endpoint Test

Example request:

curl http://54.86.41.84:5000

Response:

Hello from DevOps Capstone!

## Health Check

curl http://54.86.41.84:5000/health 

Response:

{"status":"healthy"}

## Result

The deployment pipeline successfully deployed the application and monitoring systems confirmed service health.