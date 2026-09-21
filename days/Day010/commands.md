[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 010 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## ⚙️ Scheduler Inspection
```bash
systemctl is-active cron.service || true
systemctl list-timers --all --no-pager | head -n 30
crontab -l 2>/dev/null || echo 'No user crontab'
ls -ld /etc/cron.d /etc/cron.daily /etc/cron.weekly
```

## 🧪 Syntax and Execution
```bash
for script in scripts/day010/*.sh; do bash -n "$script"; done
./scripts/day010/validate-schedules.sh
./scripts/day010/generate-scheduled-report.sh labs/day010/synthetic-transactions.csv
./scripts/day010/batch-job-simulator.sh --run-id DAY010-RUN-001
```

## 🚨 Negative Tests
```bash
./scripts/day010/generate-scheduled-report.sh /does/not/exist; echo "exit=$?"
./scripts/day010/batch-job-simulator.sh --run-id ''; echo "exit=$?"
```

## 🔍 Quality
```bash
find evidence/day010 -type f -exec sed -i 's/
$//' {} \;
find evidence/day010 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
