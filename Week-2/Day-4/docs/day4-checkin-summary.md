# Day 4 – Check-In Summary

## Multi-Stage Pipeline
- Refactored CI workflow to include two jobs: build and test.
- Added dependency using `needs: build`.
- Ensured tests only run after successful build.

## Matrix Strategy
- Maintained Python matrix testing (3.10 and 3.11).
- Verified matrix works with multi-stage setup.

## Secrets Handling
- Created placeholder AWS secrets:
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY
- Understood how secrets are securely stored and referenced.

## AWS Integration Plan
- Documented AWS CI integration strategy.
- Planned to use least privilege IAM user.
- Will integrate AWS CLI next week.
