#!/bin/bash
#check-logs.sh - fail if ERROR appears in a log file

LOG_FILE=${1:-'app.log'}

if [ ! -f $LOG_FILE ]; then
	echo "Log file not found: $LOG_FILE"
	exit 1
fi

ERROR_COUN=$(grep -c 'ERROR' $LOG_FILE || true)

echo "Found $ERROR_COUNT error(s) in $LOG_FILE"

if [ $ERROR_COUNT -gt 0]; then 
	echo "Build failed: errors detected"
	exit 1
fi

echo "All clear" 
exit 0
