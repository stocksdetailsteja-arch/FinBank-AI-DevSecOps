[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 007 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-007-systemd-services-boot
```

## 📦 Stage
```bash
git add days/Day007 docs/progress/DAY007_COMPLETION_CHECKLIST.md scripts/day007 labs/day007 evidence/day007 screenshots/labs/day007 templates/day007 INSTALL_DAY007_V2.md
find evidence/day007 -type f -exec sed -i 's/
$//' {} \;
find evidence/day007 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git diff --cached --check
git diff --cached --stat
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-007): complete systemd services and boot lab"
git push -u origin day-007-systemd-services-boot
```

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
