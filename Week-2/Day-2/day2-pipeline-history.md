# Week 2 – Day 2: Pipeline Execution History

## Failed Run
Link: https://github.com/Agha-Ahmed/devops-training-capstone/actions/runs/22198712711

Reason:
The test script was using random logic:

    if [ $((RANDOM % 2)) -eq 0 ];

The test script was using random logic to simulate test results.  
Because of this, some tests failed randomly and the script exited with code 1.  
This caused the GitHub Actions pipeline to fail.


## Fix Applied

I removed the random failure logic and made the tests deterministic (always passing).  
This ensures the CI pipeline gives consistent and reliable results.

## Passing Run

Link: https://github.com/Agha-Ahmed/devops-training-capstone/actions/runs/22217799755

Result:
All tests passed and the script exited with code 0.  
The GitHub Actions workflow completed successfully (green status).