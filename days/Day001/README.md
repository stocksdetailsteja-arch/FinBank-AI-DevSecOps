# Day 001: Engineering Baseline, Repository Safety, Linux Orientation and AWS Cost Guardrails

## Outcome
Day 001 establishes a safe operating method for the full FinBank AI DevSecOps journey. The goal is not to deploy banking services yet. The goal is to prove repository isolation, understand the Linux host, record an auditable engineering baseline, establish cost controls, and define how AI assistance will be validated.

## Why this matters in banking
A regulated platform depends on controlled change, least privilege, auditability, traceability and predictable recovery. A command executed in the wrong repository, an exposed credential, or an unmanaged AWS resource can create operational and security risk. Day 001 turns prevention into a repeatable habit.

## Deliverables
- Verified separation of ShopSphere and FinBank repositories
- Linux host and toolchain inventory
- Git remote and branch safety checks
- AWS identity check with sensitive fields excluded from screenshots
- AWS cost-governance checklist
- Day 001 troubleshooting evidence
- Original senior-level interview practice
- Exact screenshot evidence
- Clean feature-branch commit and pull request

## Timebox
- Concepts: 60 minutes
- Lab: 90 minutes
- Validation, notes, screenshots and Git: 30 minutes

## Definition of done
- [ ] The working directory is `/home/ubuntu/Projects/FinBank-AI-DevSecOps`.
- [ ] `origin` points only to `stocksdetailsteja-arch/FinBank-AI-DevSecOps.git`.
- [ ] ShopSphere remains unchanged.
- [ ] Baseline report contains no secrets.
- [ ] All validation checks pass.
- [ ] Required screenshots are saved under `screenshots/labs/day001/`.
- [ ] Temporary AWS resources are absent or documented.
- [ ] Changes are reviewed before commit.
