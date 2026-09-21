#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day009
(($#)) || { echo "Usage: $0 SERVICE..." >&2; exit 64; }
out=evidence/day009/service-health-report.md
services=("$@")
{
 echo '# ⚙️ Day009 Service Health Report'; echo
 echo 'Generated UTC:'; date -u +%Y-%m-%dT%H:%M:%SZ; echo
 echo '| Service | Load | Active | Sub |'
 echo '|---|---|---|---|'
 for service in "${services[@]}"; do
   props=$(systemctl show "$service.service" -p LoadState -p ActiveState -p SubState --value 2>/dev/null | paste -sd '|' - || true)
   [[ -n "$props" ]] || props='not-found|unknown|unknown'
   printf '| %s | %s |
' "$service" "$props"
 done
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"
