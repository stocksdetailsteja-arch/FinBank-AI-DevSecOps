[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Controlled Git Workflow

## 🔍 Review
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote -v
git status --short
git diff --check
git diff --stat
```
## 📦 Stage Intentionally
```bash
git add days/Day001 docs/progress scripts/day001 INSTALL_DAY001_V2_CORRECTED.md
git add -u INSTALL_DAY001_REDESIGNED.md
git diff --cached --check
git diff --cached --stat
```
## 🚀 Commit and Push
```bash
git commit -m "docs(day-001): correct premium GitHub rendering"
git push origin day-001-engineering-baseline
```

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
