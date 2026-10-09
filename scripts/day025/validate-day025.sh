#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";fail=0
pass(){ printf 'PASS: %s\n' "$1"; };bad(){ printf 'FAIL: %s\n' "$1";fail=1; };check(){ local n=$1;shift;if "$@";then pass "$n";else bad "$n";fi; }
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016 Day017 Day018 Day019 Day020 Day021 Day022 Day023 Day024;do check "$d preserved" test -d "days/$d";done
check '17 Day025 documents' test "$(find days/Day025 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
check 'CustomerService source' test -s finbank-app/src/com/finbank/CustomerService.java
check 'Eight Java sources' test "$(find finbank-app/src/com/finbank -type f -name '*.java' | wc -l)" -ge 8
for f in customer-service-validation.md customer-api-contract.md customer-regression-report.md customer-architecture-review.md;do check "Evidence $f" test -s "evidence/day025/$f";done
check 'Summary depth' test "$(wc -w days/Day025/summary.md | awk '{print $1}')" -ge 700
check '10 screenshot names' test "$(grep -c '^| 0' days/Day025/screenshot_checklist.md)" -eq 10
check 'Day024 recovery command' test -x finbank
if python3 -c "from pathlib import Path;a=chr(38);s=chr(59);t=[a+'lt'+s,a+'gt'+s,chr(60)+'br'+chr(62)];roots=['days/Day025','scripts/day025','evidence/day025','finbank-app/src'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in roots for p in Path(r).rglob('*') if p.is_file()) else 0)";then pass 'No formatting artifacts';else bad 'No formatting artifacts';fi
if python3 -c "from pathlib import Path;t=['BEGIN '+'PRIVATE'+' KEY','Authorization:'+chr(32)+'Bearer','pass'+'word='];roots=['days/Day025','scripts/day025','evidence/day025','finbank-app/src'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in roots for p in Path(r).rglob('*') if p.is_file()) else 0)";then pass 'No secret patterns';else bad 'No secret patterns';fi
check 'No committed classes' test "$(git ls-files | grep -c '\.class$' || true)" -eq 0
exit "$fail"
