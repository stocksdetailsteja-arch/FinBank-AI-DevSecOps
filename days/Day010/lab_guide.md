[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Safe Scheduling & Batch Laboratory

## 🎯 Objective
Inspect schedulers read-only, validate schedule definitions, generate a synthetic report, simulate a locked batch run, prove repeatability and capture controlled failures without installing jobs.

## 1️⃣ Branch and Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-010-linux-automation-scheduling
mkdir -p labs/day010 evidence/day010 screenshots/labs/day010
```

## 2️⃣ Inspect Scheduler State
```bash
systemctl is-active cron.service || true
systemctl list-timers --all --no-pager | head -n 30
crontab -l 2>/dev/null || echo 'No user crontab'
```

## 3️⃣ Create Synthetic Transactions
```bash
printf '%s
' 'transaction_id,status,amount' 'TXN-001,SUCCESS,120.50' 'TXN-002,FAILED,75.00' 'TXN-003,SUCCESS,204.25' > labs/day010/synthetic-transactions.csv
cat labs/day010/synthetic-transactions.csv
```

## 4️⃣ Validate Schedules
```bash
chmod +x scripts/day010/*.sh
./scripts/day010/validate-schedules.sh
cat evidence/day010/schedule-validation.md
```

## 5️⃣ Generate Scheduled Report
```bash
./scripts/day010/generate-scheduled-report.sh labs/day010/synthetic-transactions.csv
cat evidence/day010/scheduled-report.md
```

## 6️⃣ Simulate Locked Batch Run
```bash
./scripts/day010/batch-job-simulator.sh --run-id DAY010-RUN-001
cat evidence/day010/batch-run-ledger.md
```

## 7️⃣ Controlled Failure
```bash
set +e
./scripts/day010/generate-scheduled-report.sh /does/not/exist
echo "controlled_exit_code=$?"
set -e
```

## 8️⃣ Final Validation
```bash
./scripts/day010/validate-day010.sh
git diff --check
```

> [!CAUTION]
> Do not use `crontab -e`, place files in `/etc/cron*`, enable timers, submit `at` jobs or schedule real payment processing.

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
