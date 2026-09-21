[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original enterprise-style practice material, not leaked employer questions.

## 1️⃣ journald vs rsyslog?
journald collects structured systemd events; rsyslog processes syslog messages and can route/forward them. Deployments may use both.

## 2️⃣ Facility vs severity?
Facility categorizes the source; severity communicates urgency from emerg to debug.

## 3️⃣ Logs vs metrics vs traces?
Logs provide event detail, metrics quantify behavior and traces follow requests across services. Correlation gives stronger diagnosis.

## 4️⃣ How do you filter one boot?
Use the boot selector or boot ID and bound the time window to avoid mixing restarts.

## 5️⃣ Why use correlation IDs?
They link events across distributed services and help reconstruct one transaction without searching by sensitive payload.

## 6️⃣ What is structured logging?
Stable machine-readable fields with consistent semantics, severity, service and outcome instead of free-form-only messages.

## 7️⃣ How do you prevent secrets in logs?
Data classification, safe logging libraries, redaction, code review, tests, access controls and secret scanning.

## 8️⃣ What is log rotation?
Policy-driven archive, compression and deletion to manage capacity while preserving required evidence.

## 9️⃣ How do you investigate missing logs?
Verify event generation, output routing, collector, permissions, rate limiting, buffering, forwarding and destination ingestion.

## 🔟 Why are synchronized clocks critical?
Cross-system ordering, security investigation and transaction reconciliation depend on accurate timestamps.

## 1️⃣1️⃣ What causes journal rate limiting?
High event bursts can trigger configured limits. Diagnose noisy sources and protect critical events rather than disabling limits blindly.

## 1️⃣2️⃣ How do you build a banking audit event?
Record attributable actor/service, approved action, target reference, timestamp, outcome and correlation ID while minimizing sensitive data.

## 1️⃣3️⃣ How do you validate log pipeline recovery?
Generate a controlled marker, verify each pipeline stage, measure delay/backlog and confirm alerts/dashboards without exposing secrets.

## 1️⃣4️⃣ Payment failed but logs disagree. What next?
Use authoritative transaction state, correlation IDs, database/queue evidence and timestamps. Treat application logs as one evidence source.

## 1️⃣5️⃣ What closes a logging incident?
Recovered ingestion, backlog processing, no evidence loss, business validation, exposure assessment, root cause and prevention actions.

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
