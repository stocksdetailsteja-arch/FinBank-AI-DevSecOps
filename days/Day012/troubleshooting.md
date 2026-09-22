[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Hardening Troubleshooting

1. **SSH access lost after change:** use approved console/break-glass recovery, preserve config and restore validated access.
2. **`sshd -T` fails:** inspect syntax/includes and host-key prerequisites; do not reload a broken configuration.
3. **Application fails after permission change:** compare identity, ownership, ACL, path traversal and prior state; rollback safely.
4. **AppArmor denial breaks service:** review denial evidence and required operation; avoid disabling the entire control as a shortcut.
5. **UFW says inactive but service is unreachable:** inspect cloud policy, routing, listener bind and other firewall layers.
6. **Unexpected SUID binary:** verify owning package, checksum, purpose and provenance before removal.
7. **World-writable path is required:** constrain scope, ownership, sticky bit and application design; document exception.
8. **Reverse-path filtering disrupts asymmetric traffic:** validate network design before changing policy.
9. **Secret found in logs/config:** restrict exposure, rotate secret, preserve incident evidence and remediate source.
10. **Benchmark remediation causes outage:** stop rollout, restore tested baseline and reassess risk versus compatibility.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
