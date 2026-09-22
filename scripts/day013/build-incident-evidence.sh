#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day013
input=${1:-}; [[ -n "$input" ]] || { echo "Usage: $0 SYNTHETIC_LOG" >&2; exit 64; }; [[ -f "$input" ]] || { echo "Input not found: $input" >&2; exit 66; }
out=evidence/day013/incident-timeline.md; hash=evidence/day013/evidence-hashes.txt
{
 echo '# 🚨 Day013 Synthetic Incident Timeline'; echo
 echo '## Generated UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Correlation IDs'; grep -oE 'correlation=[^ ]+' "$input" | sort -u; echo
 echo '## Timeline'; cat "$input"
} > "$out"
sha256sum "$input" "$out" > "$hash"
sed -i 's/$//' "$out" "$hash"; sed -i 's/[[:space:]]*$//' "$out" "$hash"; printf 'Wrote %s and %s
' "$repo/$out" "$repo/$hash"
