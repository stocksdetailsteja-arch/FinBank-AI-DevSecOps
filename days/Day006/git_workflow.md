[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 006 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-006-linux-package-management
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
git add days/Day006 docs/progress/DAY006_COMPLETION_CHECKLIST.md scripts/day006 labs/day006 evidence/day006 screenshots/labs/day006 templates/day006 INSTALL_DAY006_V2.md
git diff --cached --check
git diff --cached --stat
git diff --cached
```

## 🧹 Generated Evidence Cleanup
```bash
find evidence/day006 -type f -exec sed -i 's/
$//' {} \;
find evidence/day006 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-006): complete package management and patching lab"
git push -u origin day-006-linux-package-management
```

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
