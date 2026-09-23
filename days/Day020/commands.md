[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained Assessment Command Center

> [!NOTE]
> Day020 uses read-only aggregate metadata and synthetic findings. It does not install a scanner, run intrusive probes, publish real vulnerabilities, modify controls, or claim compliance certification.

## Why This Matters

Vulnerability discovery is only the start. Enterprise governance validates applicability, combines technical and banking context, assigns ownership, authorizes treatment, proves service safety, rescans, and retains closure evidence.

## Production and Banking Lens

Every decision protects payment availability, authentication, fraud controls, queues, databases, ledgers, reconciliation, audit continuity, and recovery objectives.

## ⌨️ OS and Kernel Baseline

```bash
grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release
uname -r
```

### Purpose
Identifies the platform used to interpret vendor advisories and support status.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## ⌨️ Installed Package Count

```bash
dpkg-query -W -f='${binary:Package}\n' | wc -l
```

### Purpose
Creates an aggregate baseline without publishing the full inventory.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## ⌨️ Listening Socket Count

```bash
ss -lntuH | wc -l
```

### Purpose
Measures aggregate listening exposure without committing endpoints.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## ⌨️ Running Service Count

```bash
systemctl list-units --type=service --state=running --no-legend | wc -l
```

### Purpose
Creates an aggregate active-service baseline.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## ⌨️ AppArmor State

```bash
systemctl is-active apparmor.service || true
```

### Purpose
Reviews a compensating control that can affect effective risk.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## ⌨️ Synthetic Findings

```bash
cat labs/day020/synthetic-findings.csv
```

### Purpose
Provides portfolio-safe inputs for priority analysis.

### Production Use
Correlate trusted evidence with ownership, exposure, business tier, treatment readiness, and recovery.

### Banking Relevance
Use the result only as one input to payment, ledger, audit, and availability risk decisions.

## 🛠️ Packaged Scripts

```bash
./scripts/day020/collect-assessment-baseline.sh
./scripts/day020/analyze-risk-priority.sh labs/day020/synthetic-findings.csv
./scripts/day020/review-compliance-evidence.sh
./scripts/day020/generate-remediation-decision.sh
./scripts/day020/validate-day020.sh
```

| Script | Evidence | Purpose |
|---|---|---|
| baseline | `assessment-baseline.md` | sanitized host aggregate |
| priority | `risk-priority-review.md` | effective-risk order |
| compliance | `compliance-evidence-review.md` | evidence quality and limits |
| decision | `remediation-decision-record.md` | treatment, rollback and closure |

---

**🏦 FinBank AI DevSecOps · Day 020 of 120**
*Discover · Validate · Prioritize · Remediate · Prove · Govern*
