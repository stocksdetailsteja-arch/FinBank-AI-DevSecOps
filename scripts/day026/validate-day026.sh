#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";fail=0
pass(){ echo "PASS: $1"; };bad(){ echo "FAIL: $1";fail=1; };check(){ n=$1;shift;if "$@";then pass "$n";else bad "$n";fi; }
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016 Day017 Day018 Day019 Day020 Day021 Day022 Day023 Day024 Day025;do check "$d preserved" test -d "days/$d";done
check '17 Day026 documents' test "$(find days/Day026 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
check 'AccountService source' test -s finbank-app/src/com/finbank/AccountService.java
check 'Nine Java sources' test "$(find finbank-app/src/com/finbank -type f -name '*.java' | wc -l)" -ge 9
for f in account-service-validation.md account-api-contract.md account-regression-report.md account-architecture-review.md;do check "Evidence $f" test -s "evidence/day026/$f";done
check 'Summary depth' test "$(wc -w days/Day026/summary.md | awk '{print $1}')" -ge 700
check '10 screenshot names' test "$(grep -c '^| 0' days/Day026/screenshot_checklist.md)" -eq 10
check 'Recovery command' test -x finbank
if python3 -c "from pathlib import Path;a=chr(38);s=chr(59);t=[a+'lt'+s,a+'gt'+s,chr(60)+'br'+chr(62)];r=['days/Day026','scripts/day026','evidence/day026','finbank-app/src'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for x in r for p in Path(x).rglob('*') if p.is_file()) else 0)";then pass 'No formatting artifacts';else bad 'No formatting artifacts';fi
if python3 -c "from pathlib import Path;t=['BEGIN '+'PRIVATE'+' KEY','Authorization:'+chr(32)+'Bearer'];r=['days/Day026','scripts/day026','evidence/day026','finbank-app/src'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for x in r for p in Path(x).rglob('*') if p.is_file()) else 0)";then pass 'No secret patterns';else bad 'No secret patterns';fi
check 'No committed classes' test "$(git ls-files | grep -c '\.class$' || true)" -eq 0
exit "$fail"
