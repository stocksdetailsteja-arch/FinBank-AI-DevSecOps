[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 002 Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-002-linux-filesystem
```

## 🔍 Review
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote -v
git status --short
git diff --check
git diff --stat
```

## 📦 Stage Controlled Paths
```bash
git add days/Day002 docs/progress/DAY002_COMPLETION_CHECKLIST.md scripts/day002 labs/day002 evidence/day002 screenshots/labs/day002 INSTALL_DAY002.md
git diff --cached --check
git diff --cached --stat
git diff --cached
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-002): complete Linux architecture and filesystem lab"
git push -u origin day-002-linux-filesystem
```

## 📝 Pull Request Title
`docs(day-002): complete Linux architecture and filesystem lab`

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
