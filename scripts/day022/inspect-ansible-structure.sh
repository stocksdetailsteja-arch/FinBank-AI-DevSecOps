#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p evidence/day022;out=evidence/day022/ansible-structure-review.md
{ echo '# Day022 Ansible Structure Review'; echo '## Timestamp UTC';date -u '+%Y-%m-%dT%H:%M:%SZ';echo '## Files';find labs/day022/ansible -type f | sort;echo '## Checksums';sha256sum labs/day022/ansible/ansible.cfg labs/day022/ansible/inventory.ini labs/day022/ansible/group_vars/all.yml labs/day022/ansible/templates/app.conf.j2 labs/day022/ansible/site.yml;echo '## Safety Markers';grep -nE 'localhost|ansible_connection=local|/tmp/finbank-day022|become: false' labs/day022/ansible/inventory.ini labs/day022/ansible/group_vars/all.yml labs/day022/ansible/site.yml; } | tee "$out"
printf 'Wrote %s\n' "$out"
