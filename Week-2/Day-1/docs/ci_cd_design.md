# CI/CD Pipeline Design for devops-training-capstone

## Pipeline Stages

Pipeline Stages:
1. Build: 
- Install dependencies, compile code, set up environment.
- Lint code
2. Test: 
- Run automated tests (unit, integration).
- Run `scripts/run_tests.sh`
- Capture logs in `logs/test-<timestamp>.log`
- Report pass/fail summary
3. Package: 
- Bundle artifacts (ZIP, Docker image, etc.).
- Optionally bundle app or create Docker image
4. Deploy: 
- Send artifacts to staging/production.
- Deploy to staging or production environment
