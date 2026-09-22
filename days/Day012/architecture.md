[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Banking Host Defense Architecture

## Layered Controls
```mermaid
flowchart TB
  SG[Cloud Network Policy] --> FW[Host Firewall]
  FW --> SSH[SSH Governance]
  FW --> APP[Banking Service]
  SSH --> SUDO[Scoped Privilege]
  APP --> MAC[AppArmor]
  SUDO --> AUDIT[Audit Evidence]
  MAC --> AUDIT
  AUDIT --> SIEM[Central Monitoring]
```
## Hardening Change Flow
```mermaid
flowchart LR
  FIND[Finding] --> VALIDATE[Validate Effective Risk]
  VALIDATE --> TEST[Test Compatibility]
  TEST --> APPROVE[Approve Change]
  APPROVE --> CANARY[Canary Host]
  CANARY --> VERIFY[Technical and Business Checks]
  VERIFY --> ROLLOUT[Controlled Rollout]
```
## Principles
- Preserve remote recovery before SSH/firewall changes.
- Test application behavior before permission or MAC changes.
- Validate payment, ledger and audit paths after hardening.
- Record exceptions with owner and expiry.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
