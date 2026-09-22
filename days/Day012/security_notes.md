[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Host Security Control Standard

## Control Families
- Identity and privileged access
- Secure remote administration
- File/ACL and executable integrity
- Network exposure and firewall policy
- Mandatory access control
- Kernel runtime protections
- Patch and vulnerability governance
- Logging and incident readiness

## Threat Matrix
| Threat | Example | Control |
|---|---|---|
| credential attack | SSH password guessing | keys/MFA/rate controls |
| privilege escalation | risky SUID binary | inventory and package integrity |
| lateral movement | broad listeners | segmentation/firewall/bind policy |
| persistence | unauthorized key or job | inventory and integrity monitoring |
| secret exposure | credentials in config/log | secret storage and scanning |
| control bypass | disabled AppArmor | enforcement monitoring |

> [!WARNING]
> Do not commit SSH keys, complete SSH configuration, real usernames, internal IP inventories, firewall rules, tokens or secrets.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
