[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 008 Controlled Git Workflow

## 🌿 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-008-linux-logging-observability
```

## 📦 Controlled Staging
```bash
find evidence/day008 -type f -exec sed -i 's/
$//' {} \;
find evidence/day008 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day008 docs/progress/DAY008_COMPLETION_CHECKLIST.md scripts/day008 labs/day008 evidence/day008 screenshots/labs/day008 templates/day008 INSTALL_DAY008_V2.md
git diff --cached --check
git diff --cached --stat
```

## 🔍 Rendering and Secret Checks
```bash
if grep -RInE '&(lt|gt);|<([[:space:]]*)?(br|div|p|a)([[:space:]>])' days/Day008; then echo 'STOP: rendering artifact'; else echo 'PASS: GitHub-native Markdown'; fi
```

## 🚀 Commit and Push
```bash
git commit -m "docs(day-008): complete Linux logging and observability lab"
git push -u origin day-008-linux-logging-observability
```

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
