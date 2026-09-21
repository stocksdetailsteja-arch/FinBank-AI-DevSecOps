[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 systemd Service Security

## 🛡️ Hardening Controls
- Dedicated non-root identity
- `NoNewPrivileges`
- Read-only/protected system paths
- Private temporary directory
- Restricted address families
- Minimal capabilities
- Resource and PID limits
- Controlled credentials and environment
- Explicit restart and timeout policy
- Centralized journal forwarding

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| privilege escalation | root service with broad capabilities | capability reduction and non-root user |
| secret exposure | token in unit environment/arguments | credential mechanism and redaction |
| persistence | malicious enabled unit | unit inventory and file integrity |
| denial of service | restart storm | start-rate limiting and stop criteria |
| filesystem tampering | broad write access | protected paths and allowlisted writes |
| lateral movement | unrestricted network access | network policy and address-family restriction |

> [!WARNING]
> Never publish unit files or journal excerpts containing credentials, internal endpoints, tokens or customer data.

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
