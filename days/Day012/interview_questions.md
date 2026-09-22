[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior Security Interview Questions & Answers

1. **Defense in depth?** Multiple independent preventive, detective and recovery controls so one failure is not decisive.
2. **Why inspect `sshd -T`?** It shows effective daemon configuration after includes/defaults.
3. **Why is password auth riskier?** It expands brute-force and credential-reuse exposure compared with managed keys/MFA controls.
4. **SUID risk?** A vulnerable SUID executable can confer effective file-owner privilege.
5. **Modes vs ACLs?** Modes provide owner/group/other permissions; ACLs add named user/group entries.
6. **Listener vs exposure?** A listener is local socket state; exposure also depends on bind address, firewall, routing and cloud policy.
7. **AppArmor enforcing vs complain?** Enforcing blocks violations; complain records them without blocking.
8. **ASLR?** Randomizes memory mappings to make some exploitation less reliable.
9. **Why not blindly apply benchmarks?** Compatibility and business risk require testing and contextual prioritization.
10. **How secure SSH changes?** Validate syntax, preserve recovery, canary, monitor and test named access.
11. **How investigate SUID?** Identify owner/package, purpose, hash, provenance, exposure and available safer alternative.
12. **How handle hardening exception?** Record risk, owner, compensating controls, approval and expiry.
13. **How prevent secret leakage?** Approved secret stores, least access, redaction, scanning and rotation.
14. **Banking service breaks under MAC:** preserve denials, identify minimum required access, test narrow policy update and validate transactions.
15. **What proves hardening success?** Control active, access preserved, services/business healthy, evidence complete and no new exposure.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
