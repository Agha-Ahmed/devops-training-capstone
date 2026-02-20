# Matrix Environment Mapping

In this CI pipeline, I used a matrix strategy to test the project on two Python versions: 3.10 and 3.11.
Each matrix value represents a different runtime environment.
This helps ensure that the application works correctly on multiple Python versions.

In real-world projects, this approach can be used to test:
- Different Python versions
- Different operating systems (Ubuntu, Windows, macOS)
- Different configurations (fast vs full tests)
Using a matrix strategy improves reliability and helps detect compatibility issues early.
The tradeoff is that more matrix combinations increase pipeline runtime.
Artifacts help debug environment-specific failures by storing logs from each job.