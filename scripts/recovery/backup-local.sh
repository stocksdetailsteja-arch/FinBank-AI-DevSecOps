#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
mkdir -p docs/recovery/snapshots
ts=$(date -u '+%Y%m%dT%H%M%SZ')
out="docs/recovery/snapshots/recovery-snapshot-$ts.txt"
{
 echo 'FinBank Recovery Metadata Snapshot'
 echo "Timestamp UTC: $ts"
 echo "Commit: $(git rev-parse HEAD)"
 echo "Branch: $(git branch --show-current)"
 echo "Origin: $(git remote get-url origin)"
 git status --short
 git --version
 java -version 2>&1 | head -1
 aws --version
 docker --version
 terraform version | head -1
 grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release
 uname -r
 uname -m
} > "$out"
echo "PASS: Safe metadata snapshot created: $out"
