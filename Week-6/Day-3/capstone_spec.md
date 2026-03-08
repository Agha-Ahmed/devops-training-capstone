## Acceptance Criteria

The capstone project will be considered complete when the following conditions are met:

### Application
- The application is containerized using Docker.
- The container exposes working endpoints `/health` and `/version`.

### Container Registry
- Docker images are successfully pushed to AWS ECR.
- ECS pulls images from ECR during deployment.

### CI/CD Pipeline
- GitHub Actions automatically builds the Docker image.
- The pipeline pushes the image to AWS ECR.
- The ECS service updates automatically using the new image.

### Deployment
- The application runs successfully on AWS ECS Fargate.
- ECS service maintains the desired number of running tasks.

### Monitoring
- ECS logs are visible in CloudWatch.
- CloudWatch metrics track CPU and memory usage.
- CloudWatch alarms trigger when thresholds exceed limits.

### Documentation
- Architecture diagram is included in the repository.
- Deployment and monitoring workflow are documented.