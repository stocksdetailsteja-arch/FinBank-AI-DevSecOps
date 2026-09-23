#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p evidence/day022;out=evidence/day022/ansible-validation-report.md
python3 - <<'PY2' | tee "$out"
from pathlib import Path
import sys
print('# Day022 Ansible Validation Report')
print('## Repository Content')
required=['ansible.cfg','inventory.ini','group_vars/all.yml','templates/app.conf.j2','site.yml']
root=Path('labs/day022/ansible')
for name in required:
 p=root/name
 print(f'- {name}: {"PASS" if p.is_file() and p.stat().st_size else "FAIL"}')
 if not p.is_file() or not p.stat().st_size: sys.exit(1)
try:
 import yaml
 for name in ['group_vars/all.yml','site.yml']:
  yaml.safe_load((root/name).read_text())
 print('- YAML parse: PASS')
except ImportError:
 print('- YAML parse: SKIPPED because PyYAML is unavailable')
except Exception as e:
 print(f'- YAML parse: FAIL: {e}');sys.exit(1)
print('## Optional Ansible Tooling')
PY2
if command -v ansible-inventory >/dev/null 2>&1;then ansible-inventory -i labs/day022/ansible/inventory.ini --graph | sed 's/^/    /' | tee -a "$out";else echo '- ansible-inventory: NOT INSTALLED; optional check skipped' | tee -a "$out";fi
if command -v ansible-playbook >/dev/null 2>&1;then ansible-playbook -i labs/day022/ansible/inventory.ini labs/day022/ansible/site.yml --syntax-check | sed 's/^/    /' | tee -a "$out";else echo '- ansible-playbook: NOT INSTALLED; optional check skipped' | tee -a "$out";fi
