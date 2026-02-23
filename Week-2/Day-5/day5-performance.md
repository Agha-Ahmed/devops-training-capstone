# Day 5 – CI Performance Improvement

## Before Caching
- Total workflow time: 18 seconds
- Build: 7 seconds
- Test (Python 3.10): 5 seconds
- Test (Python 3.11): 5 seconds
link: https://github.com/Agha-Ahmed/devops-training-capstone/actions/runs/22296460604


## After Caching
- Total workflow time: 33 seconds
- Build: 16 seconds
- Test (Python 3.10): 10 seconds
- Test (Python 3.11): 9 seconds
link: https://github.com/Agha-Ahmed/devops-training-capstone/actions/runs/22300540852

## Cache Confirmation
- Cache was missed on the first run and saved successfully.
- On the subsequent run, cache was restored successfully for both Python versions.
- Logs showed cache hit messages and confirmed cache restoration.

## Observation
- Although caching was applied correctly, the overall workflow time increased.
- I think the project dependencies are small and install quickly.
- Cache restore and save overhead in this case is slightly larger than the installation time.
- For larger projects with heavier dependencies, caching would reduce the total runtime significantly.