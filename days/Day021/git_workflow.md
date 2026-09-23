[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 021 Git & Evidence Governance

## Branch

```bash
git switch main
git pull --ff-only
git switch -c day-021-enterprise-configuration-drift-governance
```

## Stage Only Day021

```bash
git add INSTALL_DAY021_V1_PREMIUM_FINAL.md days/Day021 docs/progress/DAY021_COMPLETION_CHECKLIST.md evidence/day021 labs/day021 screenshots/labs/day021 scripts/day021 templates/day021
git diff --cached --check
git diff --cached --stat
```

## Commit and Push

```bash
git commit -m "feat(day021): enterprise configuration drift governance"
git push -u origin day-021-enterprise-configuration-drift-governance
```

> [!IMPORTANT]
> Never stage the ZIP file, secrets, production configuration, private endpoints, or temporary sorted files.

---

**🏦 FinBank AI DevSecOps · Day 021 of 120**
*Define · Detect · Review · Remediate · Verify · Govern*
