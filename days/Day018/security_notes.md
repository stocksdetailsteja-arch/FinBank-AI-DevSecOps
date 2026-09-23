[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Security Control Standard, Threats & Guardrails

## Control Matrix

| Threat | Preventive Control | Detective Control | Recovery Control |
|---|---|---|---|
| credential attack | keys, MFA, rate controls | authentication alerts | revoke/rotate |
| privilege escalation | scoped sudo, MAC, patching | audit and integrity | isolate/recover |
| stale access | lifecycle automation | recertification | disable/remove |
| persistence | key/job/file baselines | drift detection | trusted rebuild |
| evidence tampering | centralized protected logs | integrity alerts | protected archive |

## Security Guardrails

- Named identities only for human administration
- Separate human and service accounts
- No shared SSH private keys
- No unrestricted permanent sudo by default
- PAM and SSH changes require recovery validation
- Security evidence is sanitized before Git
- Break-glass use is monitored and reviewed
- Exceptions have owner, approval, expiry, and remediation

> [!WARNING]
> Never commit `/etc/shadow`, private keys, raw sudoers content, complete identity inventories, public/internal IP lists, tokens, customer data, or production security findings.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*
