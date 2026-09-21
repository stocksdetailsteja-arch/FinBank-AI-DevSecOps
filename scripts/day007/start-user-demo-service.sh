#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p labs/day007 evidence/day007
systemctl --user reset-failed finbank-day007-demo.service 2>/dev/null || true
systemd-run --user --unit=finbank-day007-demo --property=Description='FinBank Day007 safe demo' /bin/sh -c 'echo FINBANK_DAY007_SERVICE_STARTED; exec sleep 300'
sleep 1
systemctl --user show finbank-day007-demo.service -p Id -p ActiveState -p SubState -p MainPID > evidence/day007/demo-service-state.txt
cat evidence/day007/demo-service-state.txt
