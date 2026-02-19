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



## Test Execution Environment
### 1. Where will tests run?
Tests will run on GitHub Actions runner using the `ubuntu-latest` operating system. 
This ensures a clean, isolated Linux environment for every build.

### 2. When will tests trigger?
1. Pull Requests:
- When you try to merge your new code into main, the tests run automatically.
- To catch bugs before they are added to the official project.
- if tests fail, the "Merge" button stays locked.
2. Push to Main:
- Confirms the main branch is stable and ready to be deployed to users. 
- Once the code is merged, the tests run one last time on the combined code.
### 3. Requirements for Test Environment
- Python 3.10+
- Virtual Environment (pip install -r requirements.txt)
- Execution of `./scripts/run_tests.sh`