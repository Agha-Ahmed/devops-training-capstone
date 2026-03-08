## Capstone Walkthrough

This project demonstrates a complete DevOps workflow for deploying a containerized application on AWS.

### 1. Developer Workflow
A developer writes code and pushes changes to GitHub.

### 2. CI Pipeline
GitHub Actions automatically:

- Builds the application
- Runs tests (if configured)
- Builds a Docker image

### 3. Container Registry
The Docker image is pushed to **AWS ECR**.

### 4. Deployment
The CD pipeline updates the **ECS service**, which pulls the new container image.

### 5. Application Runtime
The containerized application runs on **AWS ECS Fargate**.

Endpoints:

/health
/version

### 6. Monitoring

AWS CloudWatch monitors:

- Application logs
- CPU utilization
- Memory utilization

CloudWatch alarms trigger alerts when thresholds exceed configured limits.

### 7. Verification

After deployment we verify:

- Application endpoint works
- Logs appear in CloudWatch
- Metrics show ECS health