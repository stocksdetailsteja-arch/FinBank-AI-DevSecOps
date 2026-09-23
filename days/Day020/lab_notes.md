[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 020 Completed Engineering Lab Notes

> [!NOTE]
> This completed portfolio record contains objectives, commands, findings, issues, evidence, banking relevance, lessons, and validation. Sensitive host values are represented by aggregates or synthetic evidence.

## Session Context

| Field | Completed Value |
|---|---|
| Date | 2026-09-23 |
| Branch | `day-020-enterprise-vulnerability-compliance-governance` |
| Repository root | `/home/ubuntu/Projects/FinBank-AI-DevSecOps` |
| Engineer | Akkana Tejaswar Sai |
| Environment | Ubuntu EC2 training host |
| Lab mode | Read-only aggregate baseline plus synthetic findings |

## Objectives Completed

- Distinguished scanning, vulnerability management, evidence review, and certification.
- Captured a sanitized host baseline.
- Created synthetic findings for safe priority analysis.
- Applied exploitability, exposure, criticality, controls, and recovery context.
- Produced compliance and remediation evidence.

## Commands Executed

```bash
./scripts/day020/collect-assessment-baseline.sh
./scripts/day020/analyze-risk-priority.sh labs/day020/synthetic-findings.csv
./scripts/day020/review-compliance-evidence.sh
./scripts/day020/generate-remediation-decision.sh
./scripts/day020/validate-day020.sh
```

## Technical Findings

| Area | Completed Observation |
|---|---|
| scope | aggregate and synthetic boundary documented |
| inventory | OS, kernel, package and service counts captured |
| exposure | socket count used without private endpoint disclosure |
| risk | severity combined with exploit, exposure and asset tier |
| compliance | evidence limitations explicitly recorded |
| remediation | rollback, rescan and banking validation documented |

## Issues and Resolutions

| Issue | Investigation | Resolution | Result |
|---|---|---|---|
| false positives | checked applicability evidence | validation gate added | PASS |
| sensitive findings | reviewed portfolio disclosure risk | synthetic data used | PASS |
| CVSS-only priority | added business and control context | effective-risk model adopted | PASS |
| compliance overstatement | separated evidence from attestation | limitation documented | PASS |

## Evidence Generated

| Evidence | Purpose |
|---|---|
| `assessment-baseline.md` | sanitized aggregate baseline |
| `risk-priority-review.md` | ranked synthetic findings |
| `compliance-evidence-review.md` | evidence quality and limitations |
| `remediation-decision-record.md` | treatment, rollback and closure |

## Banking Relevance

Findings are not closed until payment, authentication, idempotency, queue, database, ledger, fraud-control, audit, and recovery checks pass.

## Lessons Learned

Scanning is discovery, effective risk needs business context, compliance requires operating evidence, and remediation includes recovery, rescan, transaction checks, and closure approval.

## Validation Summary

Day020 is read-only, fully populated, portfolio-safe, and aligned to the Day017 golden visual template.

---

**🏦 FinBank AI DevSecOps · Day 020 of 120**
*Discover · Validate · Prioritize · Remediate · Prove · Govern*
