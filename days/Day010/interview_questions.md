[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior Scheduling Interview Questions & Answers

> [!NOTE]
> Original enterprise practice content, not leaked employer questions.

## 1️⃣ Explain the five cron fields.
Minute, hour, day of month, month and day of week, followed by the command.

## 2️⃣ Cron vs systemd timer?
Cron is simple calendar scheduling. Timers integrate with units, dependencies, journal and persistent missed-run behavior.

## 3️⃣ Why do cron jobs fail despite working manually?
Different environment, PATH, working directory, shell, permissions, credentials and TTY behavior.

## 4️⃣ How do you prevent overlap?
Use an atomic lock plus bounded runtime. Locking does not replace business idempotency.

## 5️⃣ What is a stale lock?
A lock artifact remains without a valid owner. Robust lock mechanisms and ownership verification reduce the risk.

## 6️⃣ How do you handle missed runs?
Define policy: skip, replay, catch up or alert. Use authoritative run ledger and safe input windows.

## 7️⃣ Why are timezones risky?
DST and inconsistent host/business time can duplicate or skip windows. Standardize UTC and state business cutoffs explicitly.

## 8️⃣ What evidence should a batch run record?
Run ID, schedule, input window, versions, counts, outcome, exit code, checkpoint and reconciliation result.

## 9️⃣ How do you retry safely?
Classify failure, inspect authoritative state, use idempotency and apply bounded approved retries.

## 🔟 What is `flock`?
A utility/interface for advisory file locking used to avoid concurrent execution on the same locking scope.

## 1️⃣1️⃣ When use an enterprise scheduler?
Cross-system dependencies, centralized governance, calendars, SLAs, distributed execution and richer recovery needs.

## 1️⃣2️⃣ How do you test schedules without installing them?
Validate expressions, simulate intended times, invoke the job directly with fixtures and test overlap/failure paths.

## 1️⃣3️⃣ How do you secure scheduled automation?
Dedicated identity, least privilege, protected configuration, minimal environment, approved secrets and audited changes.

## 1️⃣4️⃣ Settlement batch times out. What next?
Freeze blind retries, inspect run ledger and authoritative transaction state, reconcile partial work and resume safely.

## 1️⃣5️⃣ What makes batch automation production-ready?
Ownership, schedule/SLA, idempotency, locking, timeout, observability, run ledger, tests, recovery and business validation.

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
