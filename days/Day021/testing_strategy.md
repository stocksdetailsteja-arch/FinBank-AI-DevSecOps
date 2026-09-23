[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Drift Testing, Negative Validation & Regression

> [!NOTE]
> Day021 is a repository-local configuration-governance lab. It uses synthetic desired-state files, checksums, diffs, approval records, and simulated remediation. It does not modify system configuration, restart services, install agents, or create AWS resources.

## Why This Matters

Configuration drift can bypass reviewed standards even when software versions are current. Mature operations define desired state, measure actual state, classify deviations, authorize remediation, verify service behavior, and retain evidence.

## Banking Lens

Configuration governance protects payment availability, authentication integrity, segregation of duties, auditability, transaction correctness, and recoverability.

## Positive Tests

Checksums, drift detection, risk classification, remediation planning, script syntax, and final validation pass.

## Negative Tests

Missing files return `66`; invalid CSV schema fails safely; secrets and raw HTML are absent; no real system configuration is modified.

## Production Test Layers

Schema, syntax, semantic behavior, dependency order, idempotency, canary, SLO, rollback, transaction, audit, exception, and recurrence tests are required.

## Regression

Days001 through Day020 remain present, ShopSphere remains unchanged, Git checks pass, and no system or AWS mutation occurs.

---

**🏦 FinBank AI DevSecOps · Day 021 of 120**
*Define · Detect · Review · Remediate · Verify · Govern*
