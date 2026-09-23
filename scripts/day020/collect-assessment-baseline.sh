#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day020; out=evidence/day020/assessment-baseline.md
{ echo '# Day020 Assessment Baseline'; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo '## OS'; grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release; echo '## Kernel'; uname -r; echo '## Package Count'; dpkg-query -W -f='${binary:Package}\n' | wc -l; echo '## Running Service Count'; systemctl list-units --type=service --state=running --no-legend | wc -l; echo '## Listening Socket Count'; ss -lntuH | wc -l; echo '## AppArmor'; systemctl is-active apparmor.service || true; echo '## Evidence Boundary'; echo 'Aggregate metadata only; no private endpoints, full inventory, secrets, or real findings.'; } | tee "$out"
printf 'Wrote %s\n' "$out"
