[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 005 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-005-linux-networking
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
git add days/Day005 docs/progress/DAY005_COMPLETION_CHECKLIST.md scripts/day005 labs/day005 evidence/day005 screenshots/labs/day005 templates/day005 INSTALL_DAY005_V2.md
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
git commit -m "docs(day-005): complete Linux networking and DNS lab"
git push -u origin day-005-linux-networking
```

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
