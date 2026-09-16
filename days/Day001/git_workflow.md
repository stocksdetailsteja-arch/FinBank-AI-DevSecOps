<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🌿 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch day-001-engineering-baseline
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
git diff
```
## 📦 Stage Intentionally
```bash
git add days/Day001 docs/progress evidence/day001 scripts/day001 screenshots/labs/day001
git diff --cached --check
git diff --cached --stat
git diff --cached
```
## 🚀 Commit and Push
```bash
git commit -m "docs(day-001): redesign premium learning experience"
git push origin day-001-engineering-baseline
```
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>
