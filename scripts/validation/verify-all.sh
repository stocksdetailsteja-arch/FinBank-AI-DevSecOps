#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/validation/validate-environment.sh
./scripts/day023/validate-day023.sh
./scripts/day024/validate-day024.sh
./scripts/day025/validate-day025.sh
./scripts/day026/validate-day026.sh
./scripts/day027/generate-evidence.sh
./scripts/day027/validate-day027.sh
echo "PASS: Recovery, Customer, Account and Transaction Services"
