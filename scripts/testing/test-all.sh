#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/day023/smoke-test.sh
./scripts/day025/customer-service-test.sh
./scripts/day026/account-service-test.sh
