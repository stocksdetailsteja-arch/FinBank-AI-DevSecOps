#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p evidence/day022
input=${1:-};if test -z "$input";then echo "Usage: $0 CSV";exit 64;fi;if test ! -f "$input";then echo "Input not found: $input";exit 66;fi
python3 - "$input" evidence/day022/automation-risk-review.md <<'PY2'
import csv,sys
s,o=sys.argv[1:];scope={'fleet':30,'group':20,'canary':5};priv={'high':25,'medium':15,'low':5};cmd={'yes':20,'no':0};sec={'yes':25,'no':0};handler={'restart':15,'reload':8,'none':0};rb={'weak':15,'moderate':8,'strong':0};rows=[]
for r in csv.DictReader(open(s,encoding='utf-8')):rows.append((scope[r['scope']]+priv[r['privilege']]+cmd[r['command_use']]+sec[r['secrets']]+handler[r['handler']]+rb[r['rollback']],r))
rows.sort(reverse=True,key=lambda x:x[0])
with open(o,'w') as f:
 f.write('# Day022 Automation Risk Review\n| Score | Risk | Scope | Privilege | Command | Secrets | Handler | Rollback | Owner | Action |\n|---:|---|---|---|---|---|---|---|---|---|\n')
 for score,r in rows:f.write(f"| {score} | {r['risk_id']} | {r['scope']} | {r['privilege']} | {r['command_use']} | {r['secrets']} | {r['handler']} | {r['rollback']} | {r['owner']} | {r['action']} |\n")
print('Wrote '+o)
PY2
