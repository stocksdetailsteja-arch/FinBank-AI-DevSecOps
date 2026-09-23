#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day020
input=${1:-}; if test -z "$input"; then echo "Usage: $0 CSV"; exit 64; fi; if test ! -f "$input"; then echo "Input not found: $input"; exit 66; fi
python3 - "$input" evidence/day020/risk-priority-review.md <<'PY2'
import csv,sys
s,o=sys.argv[1:]; sev={'critical':40,'high':30,'medium':20,'low':10}; exp={'external':25,'internal':15,'isolated':5}; ex={'active':25,'public':18,'limited':10,'none':0}; asset={'tier1':10,'tier2':7,'tier3':3}; ctl={'weak':0,'moderate':5,'strong':10}; rows=[]
for r in csv.DictReader(open(s,encoding='utf-8')): rows.append((sev[r['severity']]+exp[r['exposure']]+ex[r['exploit']]+asset[r['asset']]-ctl[r['control']],r))
rows.sort(reverse=True,key=lambda x:x[0])
with open(o,'w') as f:
 f.write('# Day020 Risk Priority Review\n## Model\nSeverity + exposure + exploit + asset tier - control strength.\n| Score | Finding | Severity | Exposure | Exploit | Asset | Control | Treatment |\n|---:|---|---|---|---|---|---|---|\n')
 for score,r in rows:f.write(f"| {score} | {r['finding']} | {r['severity']} | {r['exposure']} | {r['exploit']} | {r['asset']} | {r['control']} | {r['treatment']} |\n")
print('Wrote '+o)
PY2
