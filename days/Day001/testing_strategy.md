[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Validation & Quality Gates

## ✅ Positive Tests
- Correct FinBank root and remote
- Seventeen premium Markdown files
- Baseline script completes
- No real secrets in evidence
## ❌ Negative Tests
- Nonexistent remote fails safely
- Git outside a repository returns a known error
## 🔁 Regression Tests
- ShopSphere remains unchanged
- ZIP and temporary content are not staged
## 🧾 Acceptance Commands
```bash
git diff --check
test "$(git rev-parse --show-toplevel)" = "$HOME/Projects/FinBank-AI-DevSecOps"
test "$(git remote get-url origin)" = "git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git"
test "$(find days/Day001 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
```

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
