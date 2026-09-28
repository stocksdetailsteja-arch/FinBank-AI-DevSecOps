#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/validation/validate-environment.sh
./scripts/day023/validate-day023.sh
./scripts/day024/generate-evidence.sh
./scripts/day024/validate-day024.sh
echo 'PASS: Recovery Framework'
