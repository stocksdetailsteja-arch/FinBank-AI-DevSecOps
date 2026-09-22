[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 013 Git Workflow

```bash
git switch main
git pull --ff-only
git switch -c day-013-linux-auditing-incident-readiness
find evidence/day013 -type f -exec sed -i 's/
$//' {} \;
find evidence/day013 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day013 docs/progress/DAY013_COMPLETION_CHECKLIST.md scripts/day013 labs/day013 evidence/day013 screenshots/labs/day013 templates/day013 INSTALL_DAY013_V3.md
git diff --cached --check
git diff --cached --stat
git commit -m "docs(day-013): complete Linux auditing and incident readiness lab"
git push -u origin day-013-linux-auditing-incident-readiness
```

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
