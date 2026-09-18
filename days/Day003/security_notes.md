[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Linux Authorization Security Controls

## 🛡️ Enterprise Controls
- Unique attributable identities
- Noninteractive service accounts where appropriate
- Minimum group membership
- Restrictive default umask
- Controlled ACL and ownership changes
- Reviewed sudo policy without broad shell access
- SUID/SGID and capability inventory
- Centralized authentication and privilege audit
- Periodic orphaned-file and dormant-account review

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| privilege escalation | unexpected SUID binary | allowlist and integrity verification |
| data exposure | world-readable customer export | restrictive mode and data classification |
| shared-account abuse | multiple operators use one identity | unique identities and audit trail |
| stale access | former member remains in privileged group | lifecycle review and revocation |
| ACL drift | hidden named-user grant | ACL inventory and configuration management |
| symlink/path abuse | privileged write follows unsafe path | canonical paths and safe file operations |
| sudo escape | editor or shell permitted as root | constrained commands and secure defaults |

## 🔍 Review Commands
```bash
id
getent group
sudo -l 2>/dev/null || true
find /usr/bin -xdev -perm -4000 -type f -printf '%M %u:%g %p
' 2>/dev/null
getcap -r /usr/bin 2>/dev/null || true
```

> [!CAUTION]
> Do not copy complete account databases, authentication hashes or confidential directory-service information into GitHub evidence.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
