[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 016 Git Workflow

```bash
git switch main
git pull --ff-only
git switch -c day-016-enterprise-linux-performance-engineering
find evidence/day016 -type f -exec sed -i 's/
$//' {} \;
find evidence/day016 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day016 docs/progress/DAY016_COMPLETION_CHECKLIST.md scripts/day016 labs/day016 evidence/day016 screenshots/labs/day016 templates/day016 INSTALL_DAY016_V5.md
git diff --cached --check
git diff --cached --stat
git commit -m "feat(day-016): complete enterprise Linux performance engineering lab"
git push -u origin day-016-enterprise-linux-performance-engineering
```

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*
