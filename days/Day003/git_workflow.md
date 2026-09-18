[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 003 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-003-linux-identities-permissions
```

## 🔍 Pre-Staging Review
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
git add days/Day003 docs/progress/DAY003_COMPLETION_CHECKLIST.md scripts/day003 labs/day003 evidence/day003 screenshots/labs/day003 templates/day003 INSTALL_DAY003_V2.md
git diff --cached --check
git diff --cached --stat
git diff --cached
```

## 🔐 Secret and Key Sanity Check
```bash
if git diff --cached --name-only | grep -Ei '(^|/)(\.env|.*\.pem|.*\.key|id_rsa|id_ed25519)$'; then echo 'STOP: sensitive filename staged'; else echo 'PASS: no sensitive filename staged'; fi
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-003): complete Linux identities and permissions lab"
git push -u origin day-003-linux-identities-permissions
```

## 📝 Pull Request Title
`docs(day-003): complete Linux identities and permissions lab`

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
