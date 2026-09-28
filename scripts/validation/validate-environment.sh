#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/bootstrap/tool-validation.sh
test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
test -d finbank-app
test -x finbank
test "$(df -Pk / | awk 'NR==2 {print $4}')" -ge 1048576
systemctl is-active --quiet docker
echo 'PASS: Environment validation complete'
