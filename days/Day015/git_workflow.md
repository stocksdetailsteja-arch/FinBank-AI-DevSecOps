[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🌿 Day 015 Git Workflow

```bash
git switch main
git pull --ff-only
git switch -c day-015-enterprise-linux-storage-governance
find evidence/day015 -type f -exec sed -i 's/
$//' {} \;
find evidence/day015 -type f -exec sed -i 's/[[:space:]]*$//' {} \;
git add days/Day015 docs/progress/DAY015_COMPLETION_CHECKLIST.md scripts/day015 labs/day015 evidence/day015 screenshots/labs/day015 templates/day015 INSTALL_DAY015_V4.md
git diff --cached --check
git diff --cached --stat
git commit -m "docs(day-015): complete enterprise Linux storage governance lab"
git push -u origin day-015-enterprise-linux-storage-governance
```

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*
