[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained Configuration Command Center

> [!NOTE]
> Day021 is a repository-local configuration-governance lab. It uses synthetic desired-state files, checksums, diffs, approval records, and simulated remediation. It does not modify system configuration, restart services, install agents, or create AWS resources.

## Why This Matters

Configuration drift can bypass reviewed standards even when software versions are current. Mature operations define desired state, measure actual state, classify deviations, authorize remediation, verify service behavior, and retain evidence.

## Banking Lens

Configuration governance protects payment availability, authentication integrity, segregation of duties, auditability, transaction correctness, and recoverability.

## ⌨️ Repository-Local Checksum

```bash
sha256sum labs/day021/desired/app.conf labs/day021/actual/app.conf
```

### Purpose
Creates integrity evidence for synthetic desired and actual files.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## ⌨️ Unified Diff

```bash
diff -u labs/day021/desired/app.conf labs/day021/actual/app.conf || true
```

### Purpose
Shows line-level drift without modifying either file.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## ⌨️ File Metadata

```bash
stat -c '%A %a %U %G %s %y %n' labs/day021/desired/app.conf labs/day021/actual/app.conf
```

### Purpose
Reviews mode, ownership, size and timestamp for evidence interpretation.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## ⌨️ Sort and Compare

```bash
sort labs/day021/desired/app.conf > /tmp/day021-desired.sorted
sort labs/day021/actual/app.conf > /tmp/day021-actual.sorted
diff -u /tmp/day021-desired.sorted /tmp/day021-actual.sorted || true
```

### Purpose
Separates ordering differences from value differences in simple key-value files.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## ⌨️ Git File History

```bash
git log --oneline -- days/Day021 labs/day021 scripts/day021
```

### Purpose
Connects desired state to reviewed version history.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## ⌨️ Synthetic Drift Dataset

```bash
cat labs/day021/drift-register.csv
```

### Purpose
Displays portfolio-safe drift records for classification.

### Interpretation
Treat output as evidence. Validate scope, ownership, approval, dependencies, and business effect before remediation.

### Production Use
Use in controlled collection or CI checks, with secrets and environment-specific values excluded.

### Banking Relevance
Connect technical drift to payments, authentication, queues, ledger, audit, and recovery.


## 🛠️ Packaged Scripts

```bash
./scripts/day021/collect-desired-state-baseline.sh
./scripts/day021/detect-configuration-drift.sh
./scripts/day021/classify-drift-risk.sh
./scripts/day021/generate-remediation-plan.sh
./scripts/day021/validate-day021.sh
```

| Script | Artifact | Purpose |
|---|---|---|
| baseline | `desired-state-baseline.md` | checksums and metadata |
| detection | `drift-detection-report.md` | line-level synthetic drift |
| classification | `drift-risk-review.md` | priority and ownership |
| plan | `remediation-plan.md` | canary, rollback and validation |
| validator | terminal output | final release gate |

---

**🏦 FinBank AI DevSecOps · Day 021 of 120**
*Define · Detect · Review · Remediate · Verify · Govern*
