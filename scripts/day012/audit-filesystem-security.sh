#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day012 labs/day012
out=evidence/day012/filesystem-security-review.md
{
 echo '# 📁 Day012 Filesystem Security Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Day012 World-Writable Findings'; find labs/day012 -xdev -type f -perm -0002 -printf '%m %p
' 2>/dev/null || true; echo
 echo '## SUID and SGID Sample'; find /usr/bin /usr/sbin -xdev -type f \( -perm -4000 -o -perm -2000 \) -print 2>/dev/null | head -n 30; echo
 echo '## ACL Support'; command -v getfacl >/dev/null && getfacl -p labs/day012 2>/dev/null | head -n 40 || echo 'getfacl unavailable'
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"
