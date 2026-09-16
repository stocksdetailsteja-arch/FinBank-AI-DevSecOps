<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🧪 Validation & Quality Gates

## ✅ Positive Tests
- Correct FinBank root and remote
- Sixteen-plus premium files present
- Baseline script completes
- No real secrets in evidence
## ❌ Negative Tests
- Nonexistent remote fails safely
- Git outside a repository produces a known error
- A temporary synthetic marker is detected and removed before commit
## 🔁 Regression Tests
- ShopSphere remote and working tree remain unchanged
- ZIP and temporary extraction content are not staged
## 🧾 Acceptance Commands
```bash
git diff --check
test "$(git rev-parse --show-toplevel)" = "$HOME/Projects/FinBank-AI-DevSecOps"
test "$(git remote get-url origin)" = "git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git"
test "$(find days/Day001 -maxdepth 1 -type f | wc -l)" -ge 16
```
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>
