#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day009
input=${1:-}
[[ -n "$input" ]] || { echo "Usage: $0 LOG_FILE" >&2; exit 64; }
[[ -f "$input" ]] || { echo "Log file not found: $input" >&2; exit 66; }
out=evidence/day009/log-parser-report.md
levels=(INFO WARN ERROR)
{
 echo '# 📊 Day009 Synthetic Log Parser Report'; echo
 printf 'Generated UTC: %s

' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
 echo '| Level | Count |'
 echo '|---|---:|'
 for level in "${levels[@]}"; do printf '| %s | %s |
' "$level" "$(grep -c "^$level " "$input" || true)"; done
 echo; echo '## Correlation IDs'; grep -oE 'correlation=[^ ]+' "$input" | sort -u || true
 echo; echo '## Error Events'; grep '^ERROR ' "$input" || true
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"
