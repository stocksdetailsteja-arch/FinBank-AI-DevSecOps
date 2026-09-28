#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day024
{
 echo '# Day024 Environment Audit Report'; echo; date -u '+Timestamp UTC: %Y-%m-%dT%H:%M:%SZ';
 grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release; uname -r; uname -m; printf 'vCPU: '; nproc; free -h; df -h /;
 git --version; java -version 2>&1 | head -1; aws --version; docker --version; terraform version | head -1;
 printf 'Docker enabled: '; systemctl is-enabled docker; printf 'Docker active: '; systemctl is-active docker;
} > evidence/day024/environment-audit-report.md
{
 echo '# Day024 Bootstrap Validation Report'; echo; ./finbank bootstrap; echo; ./finbank doctor;
} > evidence/day024/bootstrap-validation-report.md 2>&1
{
 echo '# Day024 Recovery Validation Report'; echo; ./finbank build; ./finbank status; echo 'Root commands and Day023 application integration validated.';
} > evidence/day024/recovery-validation-report.md 2>&1
{
 echo '# Day024 Disaster Recovery Review'; echo; cat DISASTER_RECOVERY.md; echo; echo '## Boundary'; echo 'GitHub protects definitions. Secrets and persistent runtime data require approved external systems.';
} > evidence/day024/disaster-recovery-review.md
printf 'PASS: Day024 evidence generated\n'
