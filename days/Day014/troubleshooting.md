[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Advanced Recovery Troubleshooting & RCA

## Scenario 1: Backup Job Succeeded but Restore Fails
**Symptoms:** Job is green; archive cannot be extracted.
**Evidence:** artifact hash, archive test, storage errors, job logs, catalog.
**Investigation:** verify exact artifact, transfer path, encryption key, compression errors, and independent copy.
**Root Cause:** possible silent corruption, partial upload, wrong key, or wrong artifact.
**Immediate Fix:** quarantine artifact and select last verified recovery point.
**Rollback:** preserve production and failed artifact; avoid overwriting known-good copies.
**Prevention:** automated restore tests, immutable copies, checksums, multi-copy validation.
**Banking Impact:** recovery delay may extend outage and increase data-loss exposure.

## Scenario 2: Restore Completes but Ledger Totals Differ
**Symptoms:** files/database open, totals do not reconcile.
**Evidence:** backup timestamp, transaction logs, commit sequence, queue state, ledger totals.
**Investigation:** identify recovery window, late commits, replay gaps, duplicates, and uncertain payments.
**Root Cause:** application-inconsistent backup or incomplete log replay.
**Fix:** recover to a consistent point and reconcile authoritative transaction state.
**Rollback:** isolate incorrect recovery environment.
**Prevention:** application-consistent backup and tested PITR.
**Banking Impact:** financial misstatement, duplicate posting, or customer balance error.

## Scenario 3: Ransomware Encrypts Production and Replicas
**Symptoms:** rapid identical corruption across primary and replicas.
**Evidence:** storage events, identity activity, immutable-copy state, encryption timeline.
**Investigation:** determine blast radius and clean recovery point.
**Root Cause:** replication copied malicious changes and backup plane shared credentials.
**Fix:** contain identities, recover from isolated immutable copy, rotate credentials.
**Rollback:** maintain forensic copies and do not reconnect compromised replication.
**Prevention:** immutability, separate accounts, MFA, anomaly detection, offline copy.
**Banking Impact:** prolonged outage and regulatory incident obligations.

## Scenario 4: Backup Window Exceeds Production SLA
**Symptoms:** I/O latency rises during backup.
**Evidence:** latency metrics, throughput, CPU, storage queue, backup duration.
**Investigation:** correlate workload peak and backup phases.
**Root Cause:** unthrottled full backup or inadequate storage isolation.
**Fix:** throttle, incremental strategy, snapshot offload, reschedule.
**Rollback:** stop or pause only under approved procedure.
**Prevention:** performance testing and SLO-aware scheduling.
**Banking Impact:** payment latency or timeout uncertainty.

## Scenario 5: Encryption Key Unavailable During Disaster
Use the same RCA structure to validate key ownership, escrow, regional availability, access separation, recovery testing, and post-use rotation.

## Scenario 6: Retention Policy Deletes Required Evidence
Investigate policy scope, legal hold, lifecycle rules, approval history, and recovery copies. Prevent with policy-as-code tests and exception governance.

## Scenario 7: Restore Drill Passes Technically but Application Fails
Validate config, certificates, DNS, secrets, dependencies, schema versions, and startup order. Recovery must include the full service graph.

## Scenario 8: Cross-Region Copy Is Stale
Compare replication lag, last completed recovery point, monitoring gaps, and change windows. Recalculate achievable RPO and communicate business impact.

---

**🏦 FinBank AI DevSecOps · Day 014 of 120**
*Protect · Recover · Reconcile · Validate · Document · Improve*
