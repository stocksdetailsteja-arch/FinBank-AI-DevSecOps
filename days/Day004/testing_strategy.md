[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 004 Testing Strategy

## ✅ Positive Tests
- Correct FinBank repository and remote
- Synthetic workload starts with a recorded PID
- Process appears in `ps` and `/proc`
- SIGTERM stops the workload
- Baseline report is generated
- No Day 004 workload remains after cleanup

## ❌ Negative Tests
- Signal to nonexistent PID produces controlled evidence
- Querying nonexistent service is captured safely
- Validator detects a running leftover workload
- Validator rejects secret-like content

## 🔁 Regression Tests
- Day 001 through Day 003 remain present
- ShopSphere remains unchanged
- No system unit file or service state modified
- No ZIP or temporary extraction directory staged

## 🧾 Acceptance
```bash
bash scripts/day004/validate-day004.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
