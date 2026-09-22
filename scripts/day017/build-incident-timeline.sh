#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day017
input=${1:-}; [[ -n "$input" ]] || { echo "Usage: $0 SYNTHETIC_LOG" >&2; exit 64; }; [[ -f "$input" ]] || { echo "Input not found: $input" >&2; exit 66; }
out=evidence/day017/incident-timeline.md
{
 echo '# 🚨 Day017 Synthetic Incident Timeline'; echo; echo '## Generated UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Correlation IDs'; grep -oE 'correlation=[^ ]+' "$input" | sort -u; echo
 echo '## Event Counts'; for level in INFO WARN ERROR; do printf '%s=%s
' "$level" "$(grep -c "level=$level" "$input" || true)"; done; echo
 echo '## Timeline'; sort "$input"; echo
 echo '## Interpretation'; echo 'Synthetic payment events require authoritative transaction and ledger reconciliation before retry or closure.'
} > "$out"
printf 'Wrote %s
' "$out"
