#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
printf 'The following transient files are eligible for removal:
'
printf '%s
' 'labs/day003/acl-demo temporary ACL entries only'
printf 'No deletion is performed automatically. Review lab state and remove only intentionally transient content.
'
