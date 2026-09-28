#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";fail=0
pass(){ printf 'PASS: %s\n' "$1"; };bad(){ printf 'FAIL: %s\n' "$1";fail=1; };check(){ local n=$1;shift;if "$@";then pass "$n";else bad "$n";fi; }
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016 Day017 Day018 Day019 Day020 Day021 Day022 Day023;do check "$d preserved" test -d "days/$d";done
check '17 Day024 documents' test "$(find days/Day024 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for f in BACKUP_AND_RESTORE.md BUILD_FROM_SCRATCH.md DISASTER_RECOVERY.md LOCAL_DEVELOPMENT.md TOOLS_AND_VERSIONS.md finbank;do check "Root asset $f" test -s "$f";done
for f in environment-audit-report.md bootstrap-validation-report.md recovery-validation-report.md disaster-recovery-review.md;do check "Evidence $f" test -s "evidence/day024/$f";done
for f in scripts/bootstrap/bootstrap.sh scripts/bootstrap/doctor.sh scripts/bootstrap/tool-validation.sh scripts/runtime/build-all.sh scripts/runtime/start-all.sh scripts/runtime/status.sh scripts/runtime/stop-all.sh scripts/testing/test-all.sh scripts/validation/validate-environment.sh scripts/validation/verify-all.sh scripts/recovery/backup-local.sh scripts/recovery/reset-local.sh scripts/recovery/restore-local.sh;do check "Executable $f" test -x "$f";done
check 'Summary depth' test "$(wc -w days/Day024/summary.md | awk '{print $1}')" -ge 800
check '10 screenshot names' test "$(grep -c '^| 0' days/Day024/screenshot_checklist.md)" -eq 10
if python3 -c "from pathlib import Path;a=chr(38);s=chr(59);t=[a+'lt'+s,a+'gt'+s,chr(60)+'br'+chr(62)];roots=['days/Day024','scripts/day024','scripts/bootstrap','scripts/runtime','scripts/recovery','scripts/validation','scripts/testing','evidence/day024'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in roots for p in Path(r).rglob('*') if p.is_file()) else 0)";then pass 'No formatting artifacts';else bad 'No formatting artifacts';fi
if python3 -c "from pathlib import Path;t=['BEGIN '+'PRIVATE'+' KEY','Authorization:'+chr(32)+'Bearer','pass'+'word='];roots=['days/Day024','scripts/day024','scripts/bootstrap','scripts/runtime','scripts/recovery','scripts/validation','scripts/testing','evidence/day024'];raise SystemExit(1 if any(any(x in p.read_text(errors='ignore') for x in t) for r in roots for p in Path(r).rglob('*') if p.is_file()) else 0)";then pass 'No secret patterns';else bad 'No secret patterns';fi
check 'No committed classes' test "$(git ls-files | grep -c '\.class$' || true)" -eq 0
check 'No committed Terraform state' test "$(git ls-files | grep -c 'terraform\.tfstate' || true)" -eq 0
exit "$fail"
