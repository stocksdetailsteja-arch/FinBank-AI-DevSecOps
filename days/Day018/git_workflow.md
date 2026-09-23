[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 018 Git & Evidence Governance

```bash
git switch main
git pull --ff-only
git switch -c day-018-enterprise-linux-security-compliance
find evidence/day018 -type f -exec sed -i 's/
$//' {} \;
find evidence/day018 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day018 docs/progress/DAY018_COMPLETION_CHECKLIST.md scripts/day018 labs/day018 evidence/day018 screenshots/labs/day018 templates/day018 INSTALL_DAY018_V2.md
git diff --cached --check
git diff --cached --stat
git commit -m "feat(day-018): complete enterprise Linux security and compliance lab"
git push -u origin day-018-enterprise-linux-security-compliance
```

> [!IMPORTANT]
> Stage only the listed Day018 paths after reviewing secret, rendering, ZIP, and identity-exposure scans.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*
