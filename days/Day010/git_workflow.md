[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 010 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-010-linux-automation-scheduling
```

## 📦 Stage and Review
```bash
find evidence/day010 -type f -exec sed -i 's/
$//' {} \;
find evidence/day010 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day010 docs/progress/DAY010_COMPLETION_CHECKLIST.md scripts/day010 labs/day010 evidence/day010 screenshots/labs/day010 templates/day010 INSTALL_DAY010_V2.md
git diff --cached --check
git diff --cached --stat
```

## 🚀 Commit and Push
```bash
git commit -m "feat(day-010): complete Linux automation and scheduling lab"
git push -u origin day-010-linux-automation-scheduling
```

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
