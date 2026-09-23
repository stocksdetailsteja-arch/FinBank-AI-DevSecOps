#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day018 labs/day018
if (($#)); then echo "Unsupported argument: $1" >&2; exit 64; fi
fixture=labs/day018/security-demo.txt
printf 'synthetic security fixture
' > "$fixture"; chmod 600 "$fixture"
out=evidence/day018/file-security-review.md
{
 echo '# 📁 Day018 File Security Review'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Fixture Mode'; stat -c '%A %a %U %G %n' "$fixture"; echo
 echo '## ACL Capability'; command -v getfacl >/dev/null && getfacl -p labs/day018 2>/dev/null | head -n 40 || echo 'getfacl unavailable'; echo
 echo '## Bounded Set-ID Sample'; find /usr/bin /usr/sbin -xdev -type f \( -perm -4000 -o -perm -2000 \) -print 2>/dev/null | head -n 30; echo
 echo '## World-Writable Day018 Files'; find labs/day018 -xdev -type f -perm -0002 -print
} > "$out"
printf 'Wrote %s
' "$out"
