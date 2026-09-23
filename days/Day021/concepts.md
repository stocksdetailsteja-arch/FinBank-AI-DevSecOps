[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Configuration Management & Drift Deep Concepts

> [!NOTE]
> Day021 is a repository-local configuration-governance lab. It uses synthetic desired-state files, checksums, diffs, approval records, and simulated remediation. It does not modify system configuration, restart services, install agents, or create AWS resources.

## Why This Matters

Configuration drift can bypass reviewed standards even when software versions are current. Mature operations define desired state, measure actual state, classify deviations, authorize remediation, verify service behavior, and retain evidence.

## Banking Lens

Configuration governance protects payment availability, authentication integrity, segregation of duties, auditability, transaction correctness, and recoverability.

## 🧭 Concept Map

| Concept | Definition | Evidence | Failure Risk |
|---|---|---|---|
| desired state | approved expected configuration | versioned files and owner | ambiguity |
| actual state | measured current condition | read-only collection | stale assumptions |
| drift | unauthorized or unexplained difference | diff, checksum, timestamp | control bypass |
| idempotency | repeated application reaches same state | repeatable test | cumulative side effects |
| convergence | moving actual toward desired | change and validation record | outage if unsafe |
| exception | approved variance with expiry | owner, reason, controls | permanent debt |
| immutable replacement | replace instead of editing | image or artifact identity | state inconsistency |

## 🔁 Mutable vs Immutable Management

| Dimension | Mutable Host | Immutable Replacement |
|---|---|---|
| change model | update existing host | replace with approved image |
| strength | fast targeted repair | high consistency |
| risk | accumulated drift | image or deployment failure |
| recovery | rollback configuration | revert image or traffic |
| banking use | controlled legacy workloads | standardized service fleets |

## 🧾 Desired-State Design

Desired state includes value, scope, owner, rationale, source, environment, validation, exception rules, and recovery. A configuration file without ownership and test criteria is not a complete control.

## 🔍 Drift Classification

| Drift Class | Example | Priority Signal |
|---|---|---|
| security | weaker authentication or logging | exposure and privilege increase |
| reliability | timeout or queue setting changed | SLO or transaction risk |
| compliance | audit retention deviates | evidence or regulatory gap |
| operational | temporary troubleshooting value remains | undocumented persistence |
| expected variance | approved environment-specific value | valid owner and exception |

## 🧪 Idempotency and Convergence

An idempotent operation can run repeatedly without producing new unintended change after the desired state is reached. Convergence must still be tested for ordering, dependencies, service reload requirements, and business impact.

## 🛡️ Drift Is Not Always Malicious

Drift can arise from emergency repair, manual troubleshooting, package updates, image differences, restoration, automation defects, regional requirements, or unauthorized activity. Investigation establishes cause before judgment.

## 🏦 Banking Scenario

A payment timeout differs from the approved baseline after an incident. The team validates the emergency record, compares actual and desired state, assesses retry and duplicate-payment risk, tests the original value in canary, restores the approved setting, monitors queues and latency, reconciles transactions, and closes the temporary exception.

## 🎯 Interview Focus

Explain desired state, idempotency, mutable versus immutable infrastructure, drift causes, exception handling, canary remediation, safe reloads, configuration secrets, audit evidence, and transaction-aware validation.

## ✅ Key Takeaways

- Drift detection requires an authoritative desired state.
- Not every difference is a defect; every difference needs classification.
- Automatic remediation requires guardrails and recovery.
- Banking validation extends beyond a successful configuration diff.

---

**🏦 FinBank AI DevSecOps · Day 021 of 120**
*Define · Detect · Review · Remediate · Verify · Govern*
