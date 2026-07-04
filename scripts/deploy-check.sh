#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${1:-http://localhost}"

echo "Checking ${BASE_URL}/health"
STATUS_CODE="$(curl -sS -o /tmp/launchops-health.json -w "%{http_code}" "${BASE_URL}/health")"

if [ "${STATUS_CODE}" != "200" ]; then
  echo "Healthcheck failed with status ${STATUS_CODE}"
  cat /tmp/launchops-health.json || true
  exit 1
fi

cat /tmp/launchops-health.json
echo
echo "LaunchOps healthcheck passed."
