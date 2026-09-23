#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day021
input=${1:-};if test -z "$input";then echo "Usage: $0 CSV";exit 64;fi;if test ! -f "$input";then echo "Input not found: $input";exit 66;fi
python3 - "$input" evidence/day021/drift-risk-review.md <<'PY2'
import csv,sys
s,o=sys.argv[1:]; cls={'security':35,'reliability':30,'compliance':28,'operational':15};exp={'external':25,'internal':15,'isolated':5};asset={'tier1':25,'tier2':15,'tier3':5};ctl={'weak':0,'moderate':5,'strong':10};rows=[]
for r in csv.DictReader(open(s,encoding='utf-8')):
 score=cls[r['classification']]+exp[r['exposure']]+asset[r['asset']]-ctl[r['control']]-(15 if r['approved']=='yes' else 0);rows.append((score,r))
rows.sort(reverse=True,key=lambda x:x[0])
with open(o,'w') as f:
 f.write('# Day021 Drift Risk Review\n| Score | Drift | Class | Exposure | Asset | Approved | Control | Owner | Action |\n|---:|---|---|---|---|---|---|---|---|\n')
 for score,r in rows:f.write(f"| {score} | {r['drift_id']} | {r['classification']} | {r['exposure']} | {r['asset']} | {r['approved']} | {r['control']} | {r['owner']} | {r['action']} |\n")
print('Wrote '+o)
PY2
