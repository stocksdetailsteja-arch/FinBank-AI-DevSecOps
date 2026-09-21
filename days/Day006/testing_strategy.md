[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 006 Testing Strategy

## ✅ Positive Tests
- Correct repository and remote
- Package inventory generated
- Source summary generated
- Installed/candidate versions captured
- Upgrade plan uses simulation only
- Integrity evidence generated

## ❌ Negative Tests
- Missing package query produces controlled evidence
- Validator rejects absent reports
- Validator rejects forbidden mutation commands in evidence workflow
- Secret-pattern scan passes

## 🔁 Regression Tests
- Day 001 through Day 005 remain present
- ShopSphere remains unchanged
- No package/repository/system mutation performed
- No ZIP or temporary extraction staged

## 🧾 Acceptance
```bash
bash scripts/day006/validate-day006.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
