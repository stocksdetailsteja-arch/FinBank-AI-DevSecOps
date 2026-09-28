#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
echo '================================='
echo ' FinBank Runtime Status'
echo '================================='
printf 'Repository: '; git rev-parse --show-toplevel
printf 'Branch: '; git branch --show-current
java -version 2>&1 | head -1
git --version
aws --version
docker --version
terraform version | head -1
if test -s /tmp/finbank-day023/finbank.pid && kill -0 "$(cat /tmp/finbank-day023/finbank.pid)" 2>/dev/null; then echo 'FinBank Process: RUNNING'; else echo 'FinBank Process: STOPPED'; fi
