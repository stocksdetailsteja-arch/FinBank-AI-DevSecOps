[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 004 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-004-linux-process-monitoring
```

## 🔍 Review
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
git status --short
git diff --check
git diff --stat
```

## 📦 Controlled Staging
```bash
git add days/Day004 docs/progress/DAY004_COMPLETION_CHECKLIST.md scripts/day004 labs/day004 evidence/day004 screenshots/labs/day004 templates/day004 INSTALL_DAY004_V2.md
git diff --cached --check
git diff --cached --stat
git diff --cached
```

## 🔐 Sensitive Filename Check
```bash
if git diff --cached --name-only | grep -Ei '(^|/)(\.env|.*\.pem|.*\.key|id_rsa|id_ed25519)$'; then echo 'STOP: sensitive filename staged'; else echo 'PASS: no sensitive filename staged'; fi
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-004): complete Linux process and monitoring lab"
git push -u origin day-004-linux-process-monitoring
```

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
