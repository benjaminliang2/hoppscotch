#!/bin/bash
# print-config.sh - reads .env and prints sanitised config

if [ -f .env ]; then
	source .env
fi

echo "Environment: ${APP_ENV:-not set}"
echo "Database:    ${DATABASE_URL:-not set}"
echo "Secret:      [hidden]" 
