[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 012 Git Workflow

```bash
git switch main
git pull --ff-only
git switch -c day-012-linux-security-hardening
find evidence/day012 -type f -exec sed -i 's/
$//' {} \;
find evidence/day012 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day012 docs/progress/DAY012_COMPLETION_CHECKLIST.md scripts/day012 labs/day012 evidence/day012 screenshots/labs/day012 templates/day012 INSTALL_DAY012_V3.md
git diff --cached --check
git diff --cached --stat
git commit -m "docs(day-012): complete Linux security hardening lab"
git push -u origin day-012-linux-security-hardening
```

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
