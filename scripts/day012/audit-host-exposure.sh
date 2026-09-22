#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day012
out=evidence/day012/host-exposure-review.md
{
 echo '# 🌐 Day012 Host Exposure Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Listening TCP and UDP'; ss -lntup; echo
 echo '## Firewall State'; ufw status verbose 2>/dev/null || echo 'ufw unavailable or permission restricted'; echo
 echo '## AppArmor'; systemctl is-active apparmor.service 2>/dev/null || true; aa-status 2>/dev/null | head -n 30 || true; echo
 echo '## Kernel Controls'; sysctl kernel.randomize_va_space fs.protected_symlinks fs.protected_hardlinks net.ipv4.conf.all.rp_filter 2>/dev/null
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"
