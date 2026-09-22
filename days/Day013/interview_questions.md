[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior Audit & Incident Interview Q&A

1. **Audit vs log?** Audit evidence is policy-oriented and attributable; logs can be broader operational telemetry.
2. **Why UTC?** It reduces timezone ambiguity across systems.
3. **What is chain of custody?** A record of evidence collection, handling, transfer and integrity checks.
4. **Does a hash prove authenticity?** It proves content matches a digest, not that the source content was truthful.
5. **How investigate failed SSH attempts?** Bound time/host, correlate source and account safely, assess exposure, avoid identity conclusions.
6. **What is auditd?** Linux userspace service for managing kernel audit events and records.
7. **How preserve volatile evidence?** Capture approved bounded process/network/session data before disruptive actions.
8. **False positive vs false negative?** Benign alert versus missed malicious event.
9. **Why preserve boot ID?** It separates events across reboots.
10. **How review sudo safely?** Use named identity, bounded timeframe and effective-policy context; protect sensitive details.
11. **How triage severity?** Combine exploitability, scope, confidence, asset criticality and business impact.
12. **What closes an incident?** Containment, recovery, business validation, evidence, root cause and preventive actions.
13. **How prevent log tampering?** Central forwarding, restricted access, integrity monitoring and retention governance.
14. **Banking timeout and security alert coincide:** preserve evidence, validate authoritative transaction state and avoid blind retry.
15. **What makes an investigation defensible?** Facts separated from hypotheses, reproducible queries, integrity records and documented decisions.

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
