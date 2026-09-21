#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day010
out=evidence/day010/schedule-validation.md
schedules=('0 2 * * *|Daily at 02:00' '*/15 * * * *|Every 15 minutes' '30 23 * * 1-5|Weekdays at 23:30')
{
 echo '# ⏱️ Day010 Schedule Validation'; echo
 echo '| Expression | Intended Meaning | Fields |'
 echo '|---|---|---:|'
 for item in "${schedules[@]}"; do expression=${item%%|*}; meaning=${item#*|}; fields=$(awk '{print NF}' <<< "$expression"); printf '| `%s` | %s | %s |
' "$expression" "$meaning" "$fields"; done
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"
