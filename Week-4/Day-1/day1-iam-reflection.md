# Week 4 – Day 1 – IAM Reflection

## 1. What is Least Privilege?

Least privilege means granting only the minimum permissions required to perform a specific task.

Example:
If a service only needs to read from S3,
it should not have permission to delete S3 buckets or manage EC2 instances.

## 2. What is Convenience Access?

Convenience means giving broad permissions (like AdministratorAccess)
so that tasks are easier and there are fewer permission errors.

## 3. Why AdministratorAccess is Convenient
- No permission issues
- Faster experimentation
- Easier for beginners
- Less time debugging IAM policies


## 4. Risks of Overly Permissive Access
- Accidental deletion of infrastructure
- Security breaches if credentials are leaked
- Full account compromise
- Unexpected high AWS costs
- Harder auditing and compliance


## 5. Why Least Privilege is Important in Production
- Reduces attack surface
- Limits damage if credentials are compromised
- Enforces better security practices
- Aligns with AWS security best practices



## 6. Reflection in This Training Account
In this training environment:
- I am using AdministratorAccess via SSO.
- This is acceptable for learning purposes.
- In real production systems, specific IAM roles with limited permissions should be used.
