[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 002 Testing Strategy

## ✅ Positive Tests
- Repository safety gate passes
- Inventory script syntax is valid
- Lab files exist only under approved paths
- Hard link shares inode
- Symbolic link resolves to synthetic data
- Evidence report is generated

## ❌ Negative Tests
- Missing file returns a controlled error
- Broken symbolic link is detected
- Permission-denied scenario is recovered

## 🔁 Regression Tests
- ShopSphere working tree and remote remain unchanged
- No changes exist under protected system paths
- No ZIP or temporary extraction directory is staged
- No secret-like file is tracked

## 🧾 Automated Acceptance
```bash
bash scripts/day002/validate-day002.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
