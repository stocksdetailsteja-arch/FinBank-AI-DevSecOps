[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Process & Service Security Controls

## 🛡️ Controls
- Dedicated non-root service identities
- Minimal Linux capabilities
- Controlled unit files and environment sources
- Resource limits and cgroups
- Restrictive listening addresses and firewall rules
- Signed or verified artifacts
- Centralized service and privilege logs
- Approved signal/restart operations
- No secrets in process arguments

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| credential exposure | secret in command line | secret manager and protected file descriptor |
| rogue listener | unauthorized service port | port inventory and firewall policy |
| resource exhaustion | fork bomb or memory leak | cgroup and PID limits |
| privilege escalation | root service with broad capabilities | non-root identity and capability reduction |
| log evasion | process disables logging | centralized protected telemetry |
| unsafe kill | interrupted ledger write | graceful shutdown and reconciliation |

## 🔍 Read-Only Review
```bash
ps -eo pid,user,stat,comm,args --sort=user | head -n 30
ss -lntup
systemctl --failed --no-pager || true
```

> [!WARNING]
> Process command lines may contain sensitive arguments. Review before storing or publishing evidence.

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
