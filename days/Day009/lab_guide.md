[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Production-Style Bash Laboratory

## 🎯 Objective
Validate syntax, create synthetic input, exercise variables/conditions/loops/functions, generate a backup manifest, check service health, parse logs and prove controlled failures and cleanup.

## 1️⃣ Branch and Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-009-bash-scripting-fundamentals
mkdir -p labs/day009/source evidence/day009 screenshots/labs/day009
```

## 2️⃣ Create Synthetic Inputs
```bash
printf 'synthetic reconciliation record
' > labs/day009/source/reconciliation.txt
printf 'synthetic audit record
' > labs/day009/source/audit.txt
printf '%s
' 'INFO correlation=DAY009-A event=payment_check outcome=ok' 'WARN correlation=DAY009-A event=dependency_latency outcome=degraded' 'ERROR correlation=DAY009-A event=payment_check outcome=failed' > labs/day009/synthetic-app.log
```

## 3️⃣ Syntax Validation
```bash
chmod +x scripts/day009/*.sh
for script in scripts/day009/*.sh; do printf 'Checking %s
' "$script"; bash -n "$script"; done
```

## 4️⃣ Backup Manifest Simulation
```bash
./scripts/day009/backup-manifest-simulator.sh --source labs/day009/source --output evidence/day009/backup-manifest.txt
cat evidence/day009/backup-manifest.txt
```

## 5️⃣ Service Health Checker
```bash
./scripts/day009/service-health-checker.sh ssh systemd-journald rsyslog
cat evidence/day009/service-health-report.md
```

## 6️⃣ Synthetic Log Parser
```bash
./scripts/day009/synthetic-log-parser.sh labs/day009/synthetic-app.log
cat evidence/day009/log-parser-report.md
```

## 7️⃣ Controlled Failure
```bash
set +e
./scripts/day009/synthetic-log-parser.sh /does/not/exist
echo "controlled_exit_code=$?"
set -e
```

## 8️⃣ Final Validation
```bash
./scripts/day009/validate-day009.sh
git diff --check
```

> [!CAUTION]
> Use only the synthetic source/log paths. Do not point scripts at customer data, credential files or production log trees.

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
