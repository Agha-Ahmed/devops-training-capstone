# Day 4 Scripting Decisions

- `set -euo pipefail`: Used for "Safe Scripting." It ensures the script stops if any error occurs, which is vital for CI/CD pipelines.
- `Timestamping`: Added `$(date +%Y%m%d_%H%M%S)` to log filenames to prevent overwriting previous test results.
- `Input Validation`: Added an `if` check to verify the `logs/` directory exists before writing to it.