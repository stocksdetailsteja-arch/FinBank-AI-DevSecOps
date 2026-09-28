#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
./scripts/runtime/stop-all.sh
rm -rf /tmp/finbank-day023
rm -rf finbank-app/build
rm -f evidence/day023/compiler.log
echo 'PASS: Generated local artifacts reset; source preserved'
