[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Advanced 5+ Years Backup & DR Interview Mastery

> [!NOTE]
> Answers are designed for senior engineer, SRE, DevOps architect, banking production, and client-interview discussions.

## Foundation-to-Senior Questions

### 1. Explain RPO and RTO with a banking example.
RPO is the maximum acceptable data-loss window; RTO is the maximum acceptable recovery duration. For a payment ledger, a near-zero RPO may require transaction-log shipping or synchronous controls, while a low RTO requires prebuilt infrastructure, automated recovery, tested dependencies, and rehearsed reconciliation. The architect must confirm that the business accepts the cost and operational complexity.

### 2. Why is replication not a backup?
Replication improves availability by copying current state, including accidental deletion, logical corruption, and ransomware encryption. Backup provides historical recovery points, independent retention, and ideally immutable isolation. Mature designs use both.

### 3. Snapshot vs application-consistent backup?
A storage snapshot captures block state quickly. Application consistency coordinates buffers, transactions, and logs so recovered data has a supported consistency model. A snapshot without coordination may require crash recovery and may not meet ledger requirements.

### 4. How do you prove a backup is recoverable?
Verify job result, artifact existence, hash, catalog, encryption-key access, isolated restore, application startup, dependency health, and business reconciliation. Preserve evidence with run ID, timestamps, tool versions, and outcomes.

### 5. What is the 3-2-1-1-0 strategy?
It expresses multiple copies, diverse storage/failure domains, off-site protection, an offline or immutable copy, and zero unverified backup errors. It is a design mindset, not a substitute for workload-specific objectives.

## Senior Production Questions

### 6. A backup job is green but the archive is truncated. How do you design detection?
Use end-to-end size/hash verification, archive readability tests, independent catalog validation, transfer acknowledgments, restore sampling, and alerts on missing or anomalous artifacts. Do not trust only scheduler exit status.

### 7. How do you recover a database after logical corruption discovered six hours later?
Determine corruption start time, freeze destructive changes, select a clean base backup, replay transaction logs to immediately before corruption, restore in isolation, validate schema and business totals, then cut over through approved procedure.

### 8. How do you prevent backup credentials from becoming a ransomware path?
Separate backup administration from production, enforce MFA and short-lived access, restrict delete and retention changes, use immutable vaults, monitor privileged operations, and test recovery without production credentials.

### 9. What should a restore drill measure?
Actual recovery duration, data-loss point, restore throughput, dependency sequence, manual steps, access/key availability, business reconciliation, evidence completeness, and deviations from documented RPO/RTO.

### 10. How do you handle backups containing secrets and regulated data?
Classify data, encrypt in transit and at rest, restrict access, manage keys separately, minimize copies, monitor retrieval, enforce retention/legal hold, and securely expire data under approved policy.

## Architect-Level Questions

### 11. Design DR for a multi-region payment platform.
Discuss failure domains, authoritative transaction state, consistency, traffic control, database replication, immutable backups, cross-account vaults, independent keys, dependency recovery, fraud/authentication services, reconciliation, testing, and cost trade-offs.

### 12. Active-active vs active-passive for banking workloads?
Compare data consistency, conflict resolution, operational complexity, failover time, capacity cost, regional isolation, testing, and regulatory constraints. Active-active is not automatically superior.

### 13. How do you establish recovery tiers across 200 services?
Use business-impact analysis, data authority, transaction criticality, dependency graph, compliance retention, achievable RPO/RTO, recovery automation, and periodic owner certification.

### 14. How do you govern backup exceptions?
Require documented finding, business reason, quantified risk, compensating controls, owner, approver, expiry, remediation plan, and periodic review. Exceptions must not become permanent silent defaults.

### 15. How do you test a DR plan without causing an outage?
Use isolated recovery accounts/networks, sanitized or protected data, traffic simulation, controlled dependency stubs, parallel validation, explicit non-production DNS, and a reviewed cutover/no-cutover boundary.

## Banking Incident Scenarios

### 16. Payments timed out during failover. Can the platform retry them?
Not blindly. A timeout creates uncertain state. Query authoritative transaction and idempotency records, reconcile queues and ledger postings, then retry only transactions proven not committed.

### 17. Restored ledger has correct record count but wrong total.
Record count is insufficient. Compare monetary totals, currency, status distribution, duplicate keys, late arrivals, fees, reversals, and authoritative source/control totals.

### 18. Immutable backup exists but recovery keys are region-bound.
The design fails disaster independence. Recovery keys, permissions, runbooks, and operators must be available through a protected alternate path and tested.

### 19. Audit requires proof of quarterly restore tests.
Provide approved test scope, run IDs, timestamps, artifact hashes, achieved RPO/RTO, restore/reconciliation results, exceptions, owners, remediation, and sign-off.

### 20. What follow-up questions would you ask before designing backup?
Ask for data authority, change rate, size, consistency model, RPO/RTO, retention/legal hold, dependencies, encryption/key ownership, failure domains, recovery operators, testing frequency, and business validation criteria.

---

**🏦 FinBank AI DevSecOps · Day 014 of 120**
*Protect · Recover · Reconcile · Validate · Document · Improve*
