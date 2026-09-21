[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Scheduling & Batch Concepts

## 🗺️ Concept Matrix

| Concept | Meaning | Production risk |
|---|---|---|
| cron expression | recurring calendar schedule | timezone or field error |
| systemd timer | unit-integrated scheduler | dependency/config mismatch |
| one-time job | future single execution | missed environment/context |
| idempotency | repeated call has safe effect | duplicate transaction |
| lock | overlap prevention | stale or ineffective lock |
| timeout | bounded runtime | hung worker |
| retry | repeated attempt after failure | duplicate side effect |
| run ID | unique execution identity | weak audit correlation |
| checkpoint | durable progress boundary | unsafe replay |
| run ledger | authoritative execution record | missing/duplicate run ambiguity |

## 🕒 Cron Fields
```text
minute hour day-of-month month day-of-week command
```
Cron uses the scheduler environment, not an interactive shell. PATH, working directory, locale, timezone and credentials must be explicit.

## ⏲️ Cron vs systemd Timers
Cron is simple and widely available. Systemd timers integrate with services, journal, dependencies and persistent missed-run behavior. External enterprise schedulers add centralized governance and cross-system orchestration.

## 🔒 Locking
Use an atomic lock mechanism such as `flock`. A PID file alone can become stale. Locking prevents overlap but does not replace business idempotency.

## 🔁 Retry Safety
Retry only when failure classification and transaction state are known. Network timeout may leave an uncertain completed transaction.

## 🧾 Run Ledger
Record schedule, run ID, start/end time, input window, outcome, exit code, counts, checkpoint and reconciliation result.

> [!TIP]
> Scheduling answers “when.” Reliability also requires safe execution, ownership, observability, idempotency and recovery.

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
