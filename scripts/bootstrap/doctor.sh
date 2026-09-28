#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
echo '================================='
echo ' FinBank Environment Doctor'
echo '================================='
grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release
uname -r
uname -m
printf 'vCPU: '; nproc
free -h
df -h /
./scripts/bootstrap/tool-validation.sh
printf 'Docker enabled: '; systemctl is-enabled docker
printf 'Docker active: '; systemctl is-active docker
printf 'Repository: '; git rev-parse --show-toplevel
printf 'Branch: '; git branch --show-current
