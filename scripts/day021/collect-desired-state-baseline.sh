#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day021; out=evidence/day021/desired-state-baseline.md
{ echo '# Day021 Desired State Baseline'; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo '## Checksums'; sha256sum labs/day021/desired/app.conf labs/day021/actual/app.conf; echo '## Metadata'; stat -c '%A %a %U %G %s %y %n' labs/day021/desired/app.conf labs/day021/actual/app.conf; echo '## Boundary'; echo 'Synthetic repository-local configuration only.'; } | tee "$out"
printf 'Wrote %s\n' "$out"
