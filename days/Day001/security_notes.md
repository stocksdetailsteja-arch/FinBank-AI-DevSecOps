[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Security Control Center

## 🚫 Never Commit
AWS keys, tokens, private keys, passwords, JWT secrets, account identifiers, personal data or real banking information.
## 🛡️ Repository Controls
Separate roots, protected `main`, pull-request review, secret scanning, short-lived CI identity and staged-diff review.
## ⚠️ Threat Matrix
| Asset | Threat | Control |
|---|---|---|
| Git history | Secret committed | scanning, review, rotation |
| ShopSphere | FinBank contamination | separate roots and remotes |
| AWS account | Overprivilege | role-based least privilege |
| AI prompt | Data leakage | sanitization and refusal |
| EC2 host | Exposed listener | restricted ingress and review |

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
