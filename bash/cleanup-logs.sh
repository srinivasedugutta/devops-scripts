#!/bin/bash
# Author: Srinivas
# Script: cleanup-logs.sh
# Purpose: Delete log files older than X days (default: 7)

DIR=${1:-/var/log}
DAYS=${2:-7}

echo "Cleaning log files older than $DAYS days in: $DIR"
find "$DIR" -type f -name "*.log" -mtime +$DAYS -print -delete

echo "Cleanup completed successfully."

