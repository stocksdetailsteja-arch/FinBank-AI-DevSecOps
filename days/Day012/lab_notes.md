[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 012 Engineering Lab Notes

## Context
- Date:
- Branch:
- Host role:

## SSH Review
- root login:
- password authentication:
- public-key authentication:
- forwarding:
- recovery consideration:

## Filesystem Security
- synthetic world-writable finding:
- SUID/SGID observations:
- ACL observation:
- cleanup result:

## Exposure
- listening addresses:
- firewall state:
- externally exposed services requiring review:

## Host Defenses
- AppArmor state:
- ASLR:
- protected symlinks/hardlinks:
- reverse-path filtering:

## Prioritized Backlog
| Priority | Finding | Risk | Safe remediation | Owner/expiry |
|---|---|---|---|---|

## Banking Reflection
- payment path controls:
- audit evidence:
- recovery path:
- exception governance:

## 🔐 Day012 Security Audit

### Topics Covered

- SSH Governance
- File Permissions
- SUID Review
- ACL Awareness
- Firewall Review
- AppArmor
- Kernel Hardening
- Host Exposure
- Security Audit Evidence

### Observation

Host hardening requires
verification of effective controls
without disrupting availability.

### Banking Relevance

Security controls must protect
confidentiality, integrity and
availability of payment systems.

### Screenshot References

001_Day012_Repository_Safety.png

002_Effective_SSH_Security_Review.png

003_File_Permissions_SUID_And_ACL_Audit.png

004_Listening_Sockets_And_Firewall_State.png

005_AppArmor_And_Kernel_Hardening_Review.png

## 🛡️ Prioritized Hardening Backlog

### High Priority

- Review SSH effective configuration
- Review externally exposed services
- Validate firewall policy

### Medium Priority

- Review SUID/SGID inventory
- Review ACL usage

### Low Priority

- Periodic security-baseline review

### Observation

Security hardening requires
prioritization based on risk and
business impact.

### Screenshot Reference

007_Hardening_Backlog_And_Cleanup.png

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*
---
