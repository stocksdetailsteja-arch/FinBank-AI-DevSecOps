[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Observability & Logging Deep Concepts

## Signal Model
| Signal | Best for | Limitation | Banking example |
|---|---|---|---|
| Logs | event detail and context | cost/noise | payment status transition |
| Metrics | trends and alerting | low context | p99 latency and error rate |
| Traces | cross-service causality | sampling/overhead | API to ledger path |
| Events | state changes | schema discipline | deployment or failover |
| Profiles | code/resource hotspots | specialized analysis | CPU regression |

## Structured Logging
Prefer stable fields such as timestamp, level, service, environment, event, correlation ID, transaction reference, outcome, duration, and error class. Avoid secrets and regulated payloads.

## journald
The system journal stores indexed metadata and messages. Query by boot, unit, executable, PID, priority, time, or cursor. Persistence and retention depend on configuration and available storage.

## rsyslog and Forwarding
rsyslog can receive, filter, transform, write, and forward messages. Reliable delivery needs queues, backpressure handling, TLS, monitoring, and tested destination failure behavior.

## Retention and Rotation
Retention is a governance decision based on incident, legal, regulatory, cost, and privacy needs. Rotation limits local growth; central retention preserves investigation evidence.

## Correlation
A correlation ID links related operations but does not by itself prove causality. Combine timestamps, service boundaries, transaction state, traces, deployment history, and authoritative records.

> [!TIP]
> Separate confirmed facts, hypotheses, missing evidence, and next discriminating queries in every incident record.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*
