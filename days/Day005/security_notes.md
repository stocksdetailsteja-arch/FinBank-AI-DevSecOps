[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Network Security Controls

## 🛡️ Controls
- Bind only to required interfaces
- Deny-by-default inbound rules
- Private subnets for internal workloads
- TLS with hostname and trust validation
- Distinct ingress, egress and administration paths
- Network-flow and application logs
- DNS change governance
- No credentials in URLs or command lines
- Egress restriction and destination allowlisting

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| unnecessary exposure | service on `0.0.0.0` | explicit bind and firewall policy |
| DNS poisoning | forged answer | trusted resolver and encrypted/authenticated application layer |
| MITM | disabled TLS validation | certificate validation and managed trust |
| data exfiltration | unrestricted outbound traffic | egress control and monitoring |
| lateral movement | flat network | segmentation and workload identity |
| port scanning | exposed management plane | restricted source and alerting |

## 🔍 Read-Only Review
```bash
ss -lntup
ip route
resolvectl status 2>/dev/null | sed -n '1,80p' || true
```

> [!WARNING]
> Never publish credentials embedded in URLs, Authorization headers, certificates, internal DNS zones or full private-network inventories.

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
