[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Advanced Observability Troubleshooting & RCA

## 1. Logs Missing During a Payment Incident
**Symptoms:** application errors exist, but expected events are absent.
**Evidence:** service state, stdout/stderr route, journal rate limits, disk use, agent queues, destination health.
**Investigation:** follow the event from application to journal, forwarder, transport, index, and retention.
**Root Cause:** misrouting, rate limiting, queue exhaustion, permissions, rotation, or collector outage.
**Fix:** restore the failed pipeline component and preserve remaining evidence.
**Rollback:** revert unsafe logging changes; avoid restarting transaction services without approval.
**Prevention:** pipeline health alerts, synthetic canary logs, queue monitoring, capacity forecasts.
**Banking Impact:** incomplete transaction trace and audit gap.

## 2. Journal Consumes the Root Filesystem
**Symptoms:** journal usage grows and root capacity approaches threshold.
**Evidence:** `journalctl --disk-usage`, retention configuration, event rate, noisy units, filesystem trend.
**Investigation:** identify growth source and policy versus actual retention.
**Root Cause:** event storm, missing limits, forwarding failure, or retention mismatch.
**Fix:** approved retention/capacity response after evidence preservation.
**Prevention:** rate/size alerts and noisy-service controls.
**Banking Impact:** write failures may affect services and audit collection.

## 3. Central Logs Arrive Late or Out of Order
**Symptoms:** incident timeline conflicts across systems.
**Evidence:** source timestamp, ingestion timestamp, NTP, queues, retries, network delay.
**Investigation:** separate event time from arrival time and preserve source metadata.
**Root Cause:** clock skew or buffered forwarding.
**Fix:** restore time/transport health and rebuild timeline transparently.
**Banking Impact:** incorrect transaction sequence or fraud analysis.

## 4. Sensitive Data Appears in Logs
**Symptoms:** tokens, customer data, or account details are logged.
**Evidence:** affected fields, scope, destinations, retention, access logs.
**Investigation:** contain exposure without destroying incident evidence.
**Fix:** rotate secrets, restrict access, deploy redaction, and follow incident policy.
**Prevention:** schema reviews, logging libraries, scanners, and tests.
**Banking Impact:** privacy, security, and regulatory exposure.

## 5. rsyslog Active but Central Destination Has No Events
Validate action queues, TLS, DNS, network path, destination acknowledgement, filters, and suspended actions. Process state alone is not delivery proof.

## 6. logrotate Truncates an Active Application Log Incorrectly
Inspect application reopen behavior, policy method, state file, ownership, and postrotate actions. Restore through tested rotation strategy and application coordination.

## 7. Alert Fires but No Customer Impact Exists
Review threshold, duration, cardinality, retries, SLO burn, deployment context, and business KPIs. Tune detection with peer review, not by suppressing evidence blindly.

## 8. Service Recovers but Transactions Remain Uncertain
Reconcile gateway, idempotency, queue, database, ledger, and audit states. Do not close the incident on an `active` service status alone.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*
