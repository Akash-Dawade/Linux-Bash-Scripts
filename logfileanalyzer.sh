#!/bin/bash
set -e

log_file="/var/log/syslog"
error_pattern="ERROR"

if [ ! -f "$log_file" ]; then
	ehco "Log file not found: $log_file"
	exit 1
fi

echo "Searching for '$error_pattern' in $sys_log..."
error_count=$(grep -c "$error_pattern" $log_file)

echo "Total error found: $error_count"

echo ""
echo "Last 10 errors:"
grep "$error_pattern" $log_file | tail -10
