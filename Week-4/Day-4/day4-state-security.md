# Terraform State Security Notes

## Goal
Protect Terraform state because it is the source of truth for what Terraform created.

## Why Protect State?
Terraform state contains:
- Resource IDs
- Infrastructure mapping
- Sensitive metadata

If lost:
- Terraform cannot track resources.
- Infrastructure may be recreated or destroyed wrongly.

If exposed:
- Security risk.

## Locking (to avoid conflicts)
- Enable state locking (usually DynamoDB lock table) so two people/CI jobs can’t apply at the same time.
- Always use `terraform plan` + review before `apply`.

## Access control
- Keep the state bucket private (no public access).
- Use IAM roles (not shared IAM users).
- Give only the Terraform runner/team the minimum permissions needed (least privilege).
- Separate environments (dev/stage/prod) using separate state keys or separate buckets.

## Backups & recovery
- Enable S3 Versioning on the state bucket (recover old states if someone overwrites/deletes).
- Enable server-side encryption (SSE-S3 or SSE-KMS).
- Optionally replicate state bucket to another region for disaster recovery.

## Best Practices
- Store state in S3 (not locally).
- Enable versioning.
- Enable encryption.
- Restrict bucket access via IAM.
- Use locking (DynamoDB) in team environments.