[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 009 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-009-bash-scripting-fundamentals
```

## 📦 Controlled Staging
```bash
find evidence/day009 -type f -exec sed -i 's/
$//' {} \;
find evidence/day009 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day009 docs/progress/DAY009_COMPLETION_CHECKLIST.md scripts/day009 labs/day009 evidence/day009 screenshots/labs/day009 templates/day009 INSTALL_DAY009_V2.md
git diff --cached --check
git diff --cached --stat
```

## 🚀 Commit and Push
```bash
git commit -m "feat(day-009): complete production Bash scripting lab"
git push -u origin day-009-bash-scripting-fundamentals
```

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
