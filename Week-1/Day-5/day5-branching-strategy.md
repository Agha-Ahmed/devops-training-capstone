# Branching Strategy for DevOps Training
For this project, I will use a Feature Branch Workflow
The goal is to:
- Keep the main branch stable.
- Isolate new work in separate feature branches.
- Use Pull Requests (PRs) for review and merging.

## Branch Structure
### main
- Represents the stable, production-ready branch.
- No direct commits should be made to main.
- All changes must go through a Pull Request.

### feature/*
- Used for new features, improvements, or experiments.
- Naming convention:  
  feature/<short-description>

Examples:
- feature/setup-app
- feature/add-ci
- feature/improve-logging

## Workflow Process
1. Create a new branch from main:
   git checkout -b feature/<feature-name>

2. Make changes and commit locally:
   git add .
   git commit -m "feat: description of change"

3. Push branch to remote:
   git push origin feature/<feature-name>

4. Open a Pull Request (PR) on GitHub.

5. Review changes (self-review in this training project).

6. Merge PR into main only after:
   - Code review
   - Script/test validation
   - No conflicts

7. Pull updated main locally:
   git checkout main
   git pull origin main


## Why This Strategy?

- Prevents unstable code from entering main.
- Makes changes traceable and organized.
- Simulates real team collaboration.

## CI/CD Preparation

In future integration:
- Every PR will trigger automated tests.
- The script scripts/run_tests.sh will run automatically.
- If tests fail, the PR should not be merged.
This branching model ensures safe and controlled deployments.
