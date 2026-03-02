# Week 4 – Day 3 – Terraform vs AWS Console

Today I created infrastructure using Terraform instead of the AWS Console.

## Terraform (Infrastructure as Code)

- Infrastructure is written in code (.tf files).
- Can recreate the same setup anytime.
- Works with Git and CI/CD.
- `terraform plan` shows changes before applying.
- `terraform destroy` removes everything cleanly.

## AWS Console (Manual Way)

- Resources are created by clicking.
- Hard to repeat exactly.
- No version control.
- Easy to forget configuration details.
- Deleting resources manually can miss components.

## conclusion

Terraform is better for:
- Reproducibility
- Automation
- Team collaboration
- Production environments