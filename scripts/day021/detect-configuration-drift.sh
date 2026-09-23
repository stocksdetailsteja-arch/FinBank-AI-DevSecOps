#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day021
desired=${1:-}; actual=${2:-}; if test -z "$desired" -o -z "$actual";then echo "Usage: $0 DESIRED ACTUAL";exit 64;fi;if test ! -f "$desired" -o ! -f "$actual";then echo 'Input file missing';exit 66;fi
out=evidence/day021/drift-detection-report.md
{ echo '# Day021 Drift Detection Report'; echo '## Desired File'; echo "$desired"; echo '## Actual File'; echo "$actual"; echo '## Unified Diff'; echo '```diff'; diff -u "$desired" "$actual" || true; echo '```'; } | tee "$out"
printf 'Wrote %s\n' "$out"
