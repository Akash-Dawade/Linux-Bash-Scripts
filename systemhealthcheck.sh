#!/bin/bash

cd /home/ubuntu/DailyChecks

report_file="Report_$(date +%F)"

touch "$report_file"
{
echo "SYSTEM HEALTH CHECK"
echo ""
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Uptime: $(uptime -p)"
echo ""
echo "Memory Usage:"

free -h | awk 'NR==2 {print "Used: " $3 ", Free: " $4}'
echo ""
echo "Disk Usage:"
df -h / | awk 'NR==2 {print "Used: " $3 ", Available: " $4}'
echo ""
echo "Running Processes: $(ps aux | wc -l)"
} >> "$report_file"

