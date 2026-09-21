#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"; mkdir -p evidence/day008
src=evidence/day008/synthetic-events.txt
[[ -f "$src" ]] || { echo 'Synthetic event file missing'; exit 1; }
out=evidence/day008/synthetic-log-analysis.md
{
 echo '# 📊 Day 008 Synthetic Log Analysis'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Correlation ID'; cat labs/day008/correlation-id.txt; echo
 echo '## Event Counts';
 printf 'payment_health: '; grep -c 'event=payment_health' "$src" || true
 printf 'dependency_latency: '; grep -c 'event=dependency_latency' "$src" || true
 printf 'payment_demo_failure: '; grep -c 'event=payment_demo_failure' "$src" || true
 echo; echo '## Timeline'; grep 'finbank-day008' "$src" || true
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"
