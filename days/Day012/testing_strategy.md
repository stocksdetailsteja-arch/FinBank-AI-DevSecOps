[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 012 Testing Strategy

## Positive
- Four scripts pass `bash -n`.
- SSH, filesystem and exposure reports are generated.
- Synthetic risky permission is detected.
- Cleanup restores mode `600`.
- Validator passes.

## Negative
- Unsupported argument returns `64`.
- Validator fails if synthetic risky mode remains.
- Secret-pattern scan remains clean.
- No system configuration changes occur.

## Regression
Days001–011 preserved, ShopSphere unchanged, no service/firewall/sysctl/AppArmor mutation, no ZIP staged.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
