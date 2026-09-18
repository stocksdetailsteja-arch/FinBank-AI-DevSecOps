[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏦 Banking Security & Segregation of Duties

## 💳 Service Identity Boundaries
Payment, ledger, fraud, notification and audit workloads should have distinct identities and minimum access. A compromised notification service should not gain ledger-write capability.

## ⚖️ Segregation of Duties
Developers, deployers, operators and auditors have different responsibilities. Linux groups alone do not complete segregation, but they contribute to enforceable host controls.

## 🔍 Auditability
Privileged activity must be attributable. Shared credentials and unrestricted root shells weaken investigation and non-repudiation.

## 🔐 Sensitive Data
Customer exports, statements and reconciliation reports require restrictive ownership, dedicated storage, retention and monitored access. This lab uses synthetic content only.

## ♻️ Joiner, Mover and Leaver Controls
Identity lifecycle must revoke stale groups, keys, sessions and ownership. Orphaned files and reused numeric UIDs are operational risks.

## 🚨 Production Failure Mode
If a payment process loses access to its outbox or ledger path, retries can amplify uncertainty. Fail safely, preserve evidence and reconcile before replay.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
