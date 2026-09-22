[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 014 Git & Evidence Governance

```bash
git switch main
git pull --ff-only
git switch -c day-014-backup-recovery-disaster-readiness
find evidence/day014 -type f -exec sed -i 's/
$//' {} \;
find evidence/day014 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day014 docs/progress/DAY014_COMPLETION_CHECKLIST.md scripts/day014 labs/day014 evidence/day014 screenshots/labs/day014 templates/day014 INSTALL_DAY014_V4.md
git diff --cached --check
git diff --cached --stat
git commit -m "feat(day-014): complete enterprise backup and recovery lab"
git push -u origin day-014-backup-recovery-disaster-readiness
```

> [!IMPORTANT]
> Do not use `git add .` until `find . -name '*.zip'` and the secret scan are reviewed. Stage only the Day014 paths listed above.

---

**🏦 FinBank AI DevSecOps · Day 014 of 120**
*Protect · Recover · Reconcile · Validate · Document · Improve*
