[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 017 Git Workflow

```bash
git switch main
git pull --ff-only
git switch -c day-017-enterprise-linux-observability-incident-response
find evidence/day017 -type f -exec sed -i 's/
$//' {} \;
find evidence/day017 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day017 docs/progress/DAY017_COMPLETION_CHECKLIST.md scripts/day017 labs/day017 evidence/day017 screenshots/labs/day017 templates/day017 INSTALL_DAY017_V6.md
git diff --cached --check
git diff --cached --stat
git commit -m "feat(day-017): complete enterprise observability and incident response lab"
git push -u origin day-017-enterprise-linux-observability-incident-response
```

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*
