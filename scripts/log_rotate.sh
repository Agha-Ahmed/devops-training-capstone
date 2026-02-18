#!/bin/bash
# Script to find logs older than 7 days and compress them
LOG_DIR="./logs"

echo "Starting log rotation in $LOG_DIR..."

# find files modified MORE than 7 days ago and gzip them
find $LOG_DIR -name "*.log" -mtime +7 -exec gzip {} \;

echo "Rotation complete. Current status of logs:"
ls -lh $LOG_DIR