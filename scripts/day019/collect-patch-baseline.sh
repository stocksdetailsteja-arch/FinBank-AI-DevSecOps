#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day019; out=evidence/day019/patch-baseline.md
{ echo '# Day019 Patch Baseline'; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo '## OS'; grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release; echo '## Kernel'; uname -r; echo '## Installed Package Count'; dpkg-query -W -f='${binary:Package}\n' | wc -l; echo '## Upgradable Count'; apt list --upgradable | tail -n +2 | wc -l; echo '## Held Packages'; held=$(apt-mark showhold); if test -n "$held"; then printf '%s\n' "$held"; else echo 'No held packages'; fi; echo '## Reboot Marker'; if test -f /var/run/reboot-required; then cat /var/run/reboot-required; else echo 'No reboot-required marker'; fi; } | tee "$out"
printf 'Wrote %s\n' "$out"
