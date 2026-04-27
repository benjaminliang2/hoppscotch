#!/bin/bash
# health-check.sh checks if a URL is responding

URL=${1:-'https://hoppscotch.io'} #use default argument

echo "checking $URL ..."

STATUS=$(curl -o /dev/null -s -w '%{http_code}' $URL)

if [ $STATUS -eq 200 ]; then
	echo "OK - got HTTP $STATUS"
	exit 0
else 
	echo "FAIL - got HTTP $STATUS"
	exit 1
fi
