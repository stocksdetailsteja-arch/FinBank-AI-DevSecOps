[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Audit Troubleshooting

1. **auditd inactive:** identify platform policy and log alternatives; do not install during incident without approval.
2. **`ausearch` returns nothing:** verify service, rules, time format, event type, permissions and rotation.
3. **Journal event missing:** confirm boot, unit, identifier, time window, user/system journal and rate limits.
4. **Timestamps conflict:** compare source time, ingestion time, timezone, NTP and buffering.
5. **Authentication logs expose identities/IPs:** restrict access and sanitize exported evidence.
6. **Evidence file changed:** preserve both copies, recompute hashes and document custody gap.
7. **Too many alerts:** improve detection context and suppress known benign patterns with review, not blind deletion.
8. **Sudo event lacks command detail:** confirm logging configuration and alternate evidence; do not guess.
9. **Containment may disrupt payments:** coordinate security and business owners, preserve state and validate transaction impact.
10. **No single root cause:** document confirmed facts, competing hypotheses, missing evidence and next discriminating checks.

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
