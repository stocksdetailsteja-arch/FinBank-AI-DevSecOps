[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Advanced 5+ Years Observability Interview Mastery

> [!NOTE]
> Twenty senior, architect, troubleshooting, and banking scenarios with production reasoning.

### 1. Monitoring vs observability?
Monitoring checks known conditions; observability uses system outputs to investigate known and unknown behavior. Mature operations need both.

### 2. Logs, metrics, and traces?
Metrics summarize trends, logs provide event context, and traces show cross-service paths. Correlation gives a fuller explanation than any one signal.

### 3. Why structured logging?
Stable fields improve parsing, indexing, filtering, correlation, validation, and detection while reducing ambiguous free text.

### 4. How does journald help investigation?
It indexes metadata and supports filters by boot, unit, executable, PID, priority, cursor, and time. Retention and persistence must still be governed.

### 5. What does rsyslog add?
Collection, filtering, transformation, local files, forwarding, queues, and transport options. End-to-end delivery requires monitoring and destination acknowledgement.

### 6. Why use correlation IDs?
They link related events across services. They aid investigation but do not prove causality or business correctness.

### 7. How design log retention?
Balance incident and regulatory needs, privacy, volume, tiering, immutability, legal hold, access, recovery, and cost.

### 8. What is log cardinality risk?
Unbounded field values create index, cost, memory, and query problems. Govern labels and preserve high-cardinality detail in suitable stores.

### 9. How prevent secret leakage?
Approved logging libraries, field allowlists, redaction, scanners, access controls, retention limits, and secret rotation when exposure occurs.

### 10. How prove centralized logging works?
Generate known canary events, trace source through queues and destination, verify timestamp/content/integrity, and alert on missing delivery.

### 11. Design observability for 200 banking services.
Standardize schemas, correlation, service ownership, SLOs, dashboards, alerts, retention classes, secure collection, trace sampling, cost governance, and incident runbooks.

### 12. What makes an actionable alert?
Clear symptom, affected service, severity, SLO/business impact, time window, owner, evidence link, and initial runbook without embedding secrets.

### 13. How reduce MTTR?
Improve signal quality, ownership, correlation, deployment markers, dependency visibility, interfaces, runbooks, evidence access, and decision-making, not merely alert count.

### 14. Sampling strategy for traces?
Combine baseline sampling with error/latency tail capture and critical-transaction policies while controlling cost and privacy.

### 15. Payment timeout seen in logs: retry?
Not blindly. Verify authoritative transaction and idempotency state, gateway response, queues, database commit, ledger posting, and reconciliation.

### 16. Logs indicate success but ledger lacks posting.
Treat logs as one source, not authority. Investigate write acknowledgement, transaction boundaries, queue delivery, database state, and audit continuity.

### 17. Journal lost after reboot.
Review persistent storage configuration, filesystem availability, permissions, rotation, and image design. Central forwarding reduces but does not eliminate local evidence needs.

### 18. Alert rate spikes after deployment.
Compare version, schema, error classes, traffic, dependencies, duplicate logging, and SLO impact. Roll back through canary criteria if necessary.

### 19. What evidence closes an observability incident?
Pipeline healthy, missing period understood, service/SLO restored, transactions reconciled, evidence preserved, root cause proven, and preventive controls owned.

### 20. Architect follow-up questions?
Ask about data classification, volume, retention, cardinality, SLOs, failure modes, queues, encryption, access, regional design, cost, recovery, and business validation.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*
