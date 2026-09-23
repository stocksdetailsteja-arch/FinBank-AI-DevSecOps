[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Enterprise Drift Detection & Remediation Lab

> [!NOTE]
> Day021 is a repository-local configuration-governance lab. It uses synthetic desired-state files, checksums, diffs, approval records, and simulated remediation. It does not modify system configuration, restart services, install agents, or create AWS resources.

## Why This Matters

Configuration drift can bypass reviewed standards even when software versions are current. Mature operations define desired state, measure actual state, classify deviations, authorize remediation, verify service behavior, and retain evidence.

## Banking Lens

Configuration governance protects payment availability, authentication integrity, segregation of duties, auditability, transaction correctness, and recoverability.

## Phase 1: Safety
Verify FinBank root, origin, Day021 branch, and ShopSphere isolation.

## Phase 2: Synthetic Desired and Actual State
Review repository-local `app.conf` files and confirm no real system configuration is involved.

## Phase 3: Baseline
Generate desired-state checksums and metadata.

## Phase 4: Drift Detection
Produce a unified diff and machine-readable drift report.

## Phase 5: Risk Classification
Classify synthetic drift by security, reliability, compliance, operational, and approved-variance context.

## Phase 6: Remediation Plan
Create a canary, rollback, monitoring, banking validation, and closure plan without applying any change.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day021/detect-configuration-drift.sh /missing/desired /missing/actual
echo "controlled_exit_code=$?"
set -e
```

Expected exit code: `66`.

## Phase 8: Final Validation
Run the validator, inspect evidence, capture ten screenshots, and execute Git whitespace checks.

---

**🏦 FinBank AI DevSecOps · Day 021 of 120**
*Define · Detect · Review · Remediate · Verify · Govern*
