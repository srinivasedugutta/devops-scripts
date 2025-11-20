#!/bin/bash
# Author: Srinivas
# Script: system-health.sh
# Purpose: Check CPU, RAM, Disk, and Top Processes

echo "--------------------------------------"
echo "       SYSTEM HEALTH REPORT"
echo "--------------------------------------"
echo "Date: $(date)"
echo

echo "---- CPU Load ----"
uptime
echo

echo "---- Memory Usage ----"
free -h
echo

echo "---- Disk Usage ----"
df -h | grep -E "^Filesystem|/dev/"
echo

echo "---- Top 5 Memory-Consuming Processes ----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo

echo "Health check complete."
echo "--------------------------------------"

