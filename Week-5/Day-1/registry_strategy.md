# Container Registry Strategy

## Goal
Define a clear Docker image tagging strategy for Amazon ECR so images are traceable, reusable, and safe to deploy across environments.

## Why Tagging Strategy Matters
A good tagging strategy helps us:
- identify exactly which code version created an image
- separate development, staging, and production images
- make rollbacks easier
- avoid confusion caused by using only `latest`

## Tag Types

### 1. latest
Represents the most recently pushed image.

Example:
`devops-training-app:latest`

Use:
- quick testing
- simple local pulls

Note:
- should not be the only tag used for deployments

### 2. Commit SHA
Tag each image with the Git commit SHA.

Example:
`devops-training-app:66b9b5a`

Use:
- exact traceability
- deployments with fixed versions
- rollback to a known code state

### 3. Environment + Commit
Tag images using environment name plus commit SHA.

Examples:
- `dev-66b9b5a`
- `staging-66b9b5a`
- `prod-66b9b5a`

Use:
- environment-specific deployment tracking
- clear separation between dev, staging, and production

### 4. Branch + Commit
Tag images using branch name plus commit SHA.

Examples:
- `main-66b9b5a`
- `feature-login-66b9b5a`

Use:
- testing feature branches
- preview or temporary environments

## Recommended Strategy
For this training project, the recommended tagging strategy is:

- `latest`
- `<commit-sha>`
- `dev-<commit-sha>`

Example:
- `latest`
- `66b9b5a`
- `dev-66b9b5a`

This gives:
- a simple latest image
- an exact traceable version
- an environment-specific deployment tag


- Development builds can use `dev-<commit-sha>`
- Staging builds can use `staging-<commit-sha>`
- Production deployments should use a fixed commit SHA or `prod-<commit-sha>`
- Avoid deploying only `latest` in production
