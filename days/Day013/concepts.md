[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Auditing & Incident Concepts

## Concept Matrix
| Concept | Meaning | Risk if weak |
|---|---|---|
| audit event | attributable security-relevant action | repudiation |
| operational log | service/system diagnostic evidence | incomplete context |
| event time | source timestamp | ordering errors |
| ingestion time | collector arrival timestamp | delay confusion |
| correlation ID | cross-component link | fragmented timeline |
| chain of custody | evidence handling record | challenged integrity |
| hash | change-detection digest | unnoticed alteration |
| false positive | benign event flagged | alert fatigue |
| containment | limiting active harm | unnecessary outage |
| recovery | safe return to service | recurrence or data uncertainty |

## Evidence Sources
Use journal, authentication logs, sudo logs, service logs, process metadata, deployment records and authoritative business systems. Each has limits and retention rules.

## Auditd Awareness
Linux Audit can capture policy-defined kernel events. Availability and configuration vary. Day013 inspects existing state only and does not install or add rules.

## Timeline Discipline
Record absolute UTC timestamps, boot ID, host, source, event and confidence. Separate observed fact from analyst hypothesis.

## Evidence Integrity
Hash repository-local synthetic evidence, preserve original copies and document who handled evidence. A hash proves equality to a known digest, not truthfulness of content.

## Human Safety
Security events are not employee-performance evidence. Do not infer intent, emotion or culpability from logs.

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
