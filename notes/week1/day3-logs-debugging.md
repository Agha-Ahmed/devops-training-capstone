# Day 3 Reflection: CLI for Automation Debugging

## Current Workflow Comparison
In my current role as a Software Automation Engineer, I regularly deal with long execution logs from test suites. Previously, my usual approach was to open the log file to scroll through errors manually, It worked, but it was time consuming.

## How CLI Tools Improve My Workflow
- Instead of opening a huge file, I can use `grep` to find the word "FAIL" instantly.
- Using a script like `log_rotate.sh` helps keep the server clean so it doesn't run out of space during long test runs.
