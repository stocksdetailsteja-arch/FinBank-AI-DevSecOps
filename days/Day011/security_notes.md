[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Administration Security Controls

## 🛡️ Controls
- Named human identities and dedicated service accounts
- MFA and approved access path
- Command-scoped sudo with expiry/ownership
- No shared root login
- Non-interactive shells for service identities where appropriate
- Periodic group and key certification
- PAM change peer review and recovery path
- Resource limits and capacity alerts
- Centralized immutable admin audit evidence
- Timely joiner/mover/leaver processing

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| stale access | leaver remains in sudo group | lifecycle automation/review |
| privilege escalation | broad `NOPASSWD: ALL` | scoped policy and expiry |
| persistence | unauthorized SSH key/job | inventory and integrity checks |
| repudiation | shared admin identity | named accounts and audit |
| availability | resource exhaustion | limits and alerts |
| lockout | faulty PAM/sudo change | validated change and break-glass |

> [!WARNING]
> Do not commit full `/etc/passwd`, shadow data, SSH keys, sudoers content, internal host inventories or personal information.

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*
