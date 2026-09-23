[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 022 Git & Evidence Governance

## Branch

```bash
git switch main
git pull --ff-only
git switch -c day-022-ansible-foundations-banking-governance
```

## Stage Only Day022

```bash
git add INSTALL_DAY022_V1_PREMIUM_FINAL.md days/Day022 docs/progress/DAY022_COMPLETION_CHECKLIST.md evidence/day022 labs/day022 screenshots/labs/day022 scripts/day022 templates/day022
git diff --cached --check
git diff --cached --stat
```

## Commit and Push

```bash
git commit -m "feat(day022): ansible foundations and banking governance"
git push -u origin day-022-ansible-foundations-banking-governance
```

> [!IMPORTANT]
> Never stage the ZIP, plaintext secrets, production inventories, private keys, or temporary rendered output.

---

**🏦 FinBank AI DevSecOps · Day 022 of 120**
*Inventory · Validate · Automate · Converge · Verify · Govern*
