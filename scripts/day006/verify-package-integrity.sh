#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day006
out="evidence/day006/package-integrity.md"
{
  echo '# 🔐 Day 006 Package Integrity Review'; echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Package Owning /bin/bash'; dpkg -S /bin/bash; echo
  echo '## Bash Policy'; apt-cache policy bash; echo
  echo '## Bash Verification'; dpkg -V bash || true; echo
  echo '## OpenSSL Policy'; apt-cache policy openssl; echo
  echo '## Curl Policy'; apt-cache policy curl
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"
