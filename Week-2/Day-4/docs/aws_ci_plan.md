# AWS CI Integration Plan

## Objective
Integrate AWS deployment into the GitHub Actions pipeline.

## Credentials Management
- Use GitHub encrypted secrets:
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY
- Do not store credentials in the repository.
- Never print secrets in workflow logs.

## Planned CI Steps for Next Week
1. Install AWS CLI in the GitHub Actions workflow.
2. Configure AWS credentials using environment variables from secrets.
3. Authenticate to AWS securely.
4. Deploy application (S3 / EC2 / other AWS service).

## Security Best Practices
- Follow the principle of least privilege.
- Create a dedicated IAM user with limited permissions.
- Rotate AWS credentials regularly.
- Avoid exposing secrets in logs.