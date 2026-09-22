[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Linux Hardening Concepts

## Control Matrix
| Control | Purpose | Failure mode |
|---|---|---|
| SSH policy | secure remote administration | weak auth or broad reachability |
| file modes | owner/group/other authorization | unintended modification/read |
| ACL | fine-grained access | hidden accumulated privilege |
| SUID/SGID | execute with file identity | privilege escalation |
| firewall | host traffic filtering | unintended exposure |
| AppArmor | mandatory access control | excessive application access |
| sysctl | kernel runtime policy | weak network/memory protections |
| patching | vulnerability remediation | exploitable stale software |
| audit log | attributable evidence | undetected or unprovable action |

## SSH Governance
Review effective settings, not only one source file. Include authentication methods, root login, forwarding, idle behavior and listening addresses. Preserve a tested recovery path before real changes.

## Permissions and ACLs
Traditional modes and ACLs combine to determine access. World-writable and SUID findings require context, ownership and package verification before remediation.

## Exposure
A listener bound to loopback differs from one bound to all interfaces. Effective exposure also depends on cloud security groups, host firewall, routing and application authentication.

## Mandatory Access Control
AppArmor restricts applications beyond discretionary permissions. Enforcing, complain and unconfined states carry different risk.

## Hardening Principle
Prioritize exploitable exposure and business impact. A benchmark finding is not automatically a safe production change.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
