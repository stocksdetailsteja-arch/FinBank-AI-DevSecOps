<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🔐 Security Control Center

## 🚫 Never Commit
AWS keys, session tokens, private keys, passwords, JWT secrets, account identifiers, personal data or real banking information.

## 🛡️ Repository Controls
- Separate roots and remotes
- Protected `main`
- Pull-request review
- Secret scanning
- Short-lived CI identity
- Deliberate staged-diff review

## 🖥️ Host Hygiene
Restrict ingress, review listeners, patch through controlled change, avoid routine root use and prefer approved temporary access.

## ⚠️ Threat Matrix
| Asset | Threat | Control |
|---|---|---|
| Git history | Secret committed | scanning, review, rotation |
| ShopSphere | FinBank contamination | separate roots/remotes |
| AWS account | Overprivilege | role-based least privilege |
| AI prompt | Data leakage | sanitization and refusal |
| EC2 host | Exposed listener | restricted ingress and review |
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>
