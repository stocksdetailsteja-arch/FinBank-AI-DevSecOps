[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 009 Testing Strategy

## ✅ Positive Tests
- All scripts pass `bash -n`
- Manifest contains two synthetic files and checksums
- Known services produce a report
- Synthetic log counts are correct
- Validator finds all required evidence

## ❌ Negative Tests
- Missing source path returns documented nonzero exit
- Missing log file returns documented nonzero exit
- Unknown service is classified without mutation
- Secret scan remains clean

## 🔁 Regression Tests
- Day001 through Day008 remain present
- ShopSphere remains unchanged
- No system service changed
- No real backup/archive/customer data created

## 🧾 Acceptance
```bash
bash scripts/day009/validate-day009.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
