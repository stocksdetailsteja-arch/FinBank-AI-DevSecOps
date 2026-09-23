#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";fail=0
pass(){ printf 'PASS: %s\n' "$1"; };bad(){ printf 'FAIL: %s\n' "$1";fail=1; };check(){ local x=$1;shift;if "$@";then pass "$x";else bad "$x";fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$HOME/Projects/FinBank-AI-DevSecOps"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016 Day017 Day018 Day019 Day020 Day021 Day022;do check "$d preserved" test -d "days/$d";done
check '17 documents' test "$(find days/Day023 -maxdepth 1 -type f -name '*.md'|wc -l)" -eq 17
check 'Java sources' test "$(find finbank-app/src -type f -name '*.java'|wc -l)" -ge 6
for f in build-report.md runtime-report.md smoke-test-report.md architecture-validation.md;do check "Evidence $f" test -s "evidence/day023/$f";done
check 'Localhost bind' grep -q '127.0.0.1' finbank-app/src/com/finbank/FinBankApplication.java
check 'Summary depth' test "$(wc -w days/Day023/summary.md|awk '{print $1}')" -ge 800
if python3 -c "from pathlib import Path;a=chr(38);s=chr(59);t=[a+'lt'+s,a+'gt'+s,chr(60)+'br'+chr(62)];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in ['days/Day023','scripts/day023','evidence/day023','finbank-app'] for p in Path(r).rglob('*') if p.is_file() and 'build/classes' not in str(p)) else 0)";then pass 'No formatting artifacts';else bad 'No formatting artifacts';fi
if python3 -c "from pathlib import Path;t=['BEGIN '+'PRIVATE'+' KEY','Authorization:'+chr(32)+'Bearer','pass'+'word='];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in ['days/Day023','scripts/day023','evidence/day023','finbank-app'] for p in Path(r).rglob('*') if p.is_file() and 'build/classes' not in str(p)) else 0)";then pass 'No secret patterns';else bad 'No secret patterns';fi
check '10 screenshot names' test "$(grep -c '^| 0' days/Day023/screenshot_checklist.md)" -eq 10
exit "$fail"
