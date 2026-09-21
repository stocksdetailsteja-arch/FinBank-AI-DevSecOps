[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 009 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## ✅ Syntax and Permissions
```bash
bash --version | head -n 1
bash -n scripts/day009/backup-manifest-simulator.sh
bash -n scripts/day009/service-health-checker.sh
bash -n scripts/day009/synthetic-log-parser.sh
bash -n scripts/day009/validate-day009.sh
```

## 🧪 Execute Labs
```bash
./scripts/day009/backup-manifest-simulator.sh --source labs/day009/source --output evidence/day009/backup-manifest.txt
./scripts/day009/service-health-checker.sh ssh systemd-journald rsyslog
./scripts/day009/synthetic-log-parser.sh labs/day009/synthetic-app.log
```

## 🚨 Negative Tests
```bash
./scripts/day009/backup-manifest-simulator.sh --source /does/not/exist --output evidence/day009/invalid.txt; echo "exit=$?"
./scripts/day009/synthetic-log-parser.sh /does/not/exist; echo "exit=$?"
```

## 🔍 Quality
```bash
grep -RInE '&(lt|gt);|<([[:space:]]*)?(br|div|p|a)([[:space:]>])' days/Day009
find evidence/day009 -type f -exec sed -i 's/
$//' {} \;
find evidence/day009 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
