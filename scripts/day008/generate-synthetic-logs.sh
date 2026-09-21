#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"; mkdir -p labs/day008 evidence/day008
correlation="DAY008-$(date -u +%Y%m%dT%H%M%SZ)"
printf '%s
' "$correlation" > labs/day008/correlation-id.txt
logger -t finbank-day008 -p user.info "event=payment_health outcome=ok correlation_id=$correlation data=synthetic"
logger -t finbank-day008 -p user.warning "event=dependency_latency outcome=degraded correlation_id=$correlation data=synthetic"
logger -t finbank-day008 -p user.err "event=payment_demo_failure outcome=failed correlation_id=$correlation data=synthetic"
sleep 1
journalctl -t finbank-day008 --since '5 minutes ago' --no-pager > evidence/day008/synthetic-events.txt
sed -i 's/$//' evidence/day008/synthetic-events.txt
sed -i 's/[[:space:]]*$//' evidence/day008/synthetic-events.txt
printf 'Generated synthetic log set with correlation %s
' "$correlation"
