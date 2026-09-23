[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 020 Git & Evidence Governance

## Branch

```bash
git switch main
git pull --ff-only
git switch -c day-020-enterprise-vulnerability-compliance-governance
```

## Stage Only Day020

```bash
git add INSTALL_DAY020_V1_PREMIUM_FINAL.md days/Day020 docs/progress/DAY020_COMPLETION_CHECKLIST.md evidence/day020 labs/day020 screenshots/labs/day020 scripts/day020 templates/day020
git diff --cached --check
git diff --cached --stat
```

## Commit and Push

```bash
git commit -m "feat(day020): enterprise vulnerability and compliance governance"
git push -u origin day-020-enterprise-vulnerability-compliance-governance
```

> [!IMPORTANT]
> Never stage the ZIP, private findings, credentials, internal URLs, or full production inventories.

---

**🏦 FinBank AI DevSecOps · Day 020 of 120**
*Discover · Validate · Prioritize · Remediate · Prove · Govern*
