#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/validation/validate-environment.sh
./scripts/day023/validate-day023.sh
./scripts/day024/validate-day024.sh
./scripts/day025/validate-day025.sh
./scripts/day026/validate-day026.sh
./scripts/day027/validate-day027.sh
./scripts/day028/validate-day028.sh
./scripts/day029/validate-day029.sh
./scripts/day030/generate-evidence.sh
./scripts/day030/validate-day030.sh
echo "PASS: Recovery and Payment Authorization Foundation"
