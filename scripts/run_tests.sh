#!/bin/bash

# Hardening the script
set -euo pipefail

# Print environment (CI or local)
echo "Running in environment: ${APP_ENV:-local}"

# Ensure logs directory exists
if [ ! -d "./logs" ]; then
  echo "Logs directory not found. Creating it..."
  mkdir -p ./logs
fi

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
LOG_FILE="logs/test-$TIMESTAMP.log"

echo "Running tests and logging to $LOG_FILE..."

PASSED=0
FAILED=0

# Simulate 5 tests

for i in {1..5}
do
  if [ $((RANDOM % 2)) -eq 0 ]; then
    echo "Test $i: PASSED" | tee -a "$LOG_FILE"
    PASSED=$((PASSED + 1))
  else
    echo "Test $i: FAILED" | tee -a "$LOG_FILE"
    FAILED=$((FAILED + 1))
  fi
done

echo "----------------------" | tee -a "$LOG_FILE"
echo "Passed: $PASSED" | tee -a "$LOG_FILE"
echo "Failed: $FAILED" | tee -a "$LOG_FILE"

if [ "$FAILED" -gt 0 ]; then
  echo "Some tests failed."
  exit 1
else
  echo "All tests passed."
  exit 0
fi