[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Enterprise Backup & Recovery Lab

## Lab Safety Boundary

> [!IMPORTANT]
> This lab operates only inside `labs/day014` and `evidence/day014`. It creates no cloud snapshots, production backups, scheduled jobs, packages, services, or AWS resources.

## Phase 1: Repository and Branch
```bash
git switch main
git pull --ff-only
git switch -c day-014-backup-recovery-disaster-readiness
mkdir -p labs/day014/source evidence/day014 screenshots/labs/day014
```

## Phase 2: Synthetic Banking Dataset
Create the three deterministic files from `commands.md`. Capture source listing, sizes, modes, and hashes.

## Phase 3: Backup Set Engineering
Run `create-backup-set.sh`. The script creates an archive, catalog, SHA-256 manifest, run ID, timestamps, and evidence without deleting source data.

## Phase 4: Integrity Validation
Run `validate-backup-integrity.sh`. Verify archive readability, manifest consistency, expected file count, and artifact hash.

## Phase 5: Isolated Restore Drill
Run `perform-isolated-restore.sh`. Restore to a new directory, compare each file against the source, and generate an explicit PASS/FAIL report.

## Phase 6: Corruption Detection
Run `simulate-corruption-test.sh`. The script copies the archive, changes the copy, proves hash mismatch, and removes the corrupted test copy.

## Phase 7: Banking Recovery Validation
Complete the reconciliation checklist:
- authoritative transaction count
- posted/failed/uncertain states
- ledger total
- audit-event continuity
- duplicate prevention
- downstream queue state

## Phase 8: Final Validation
Run the validator, normalize evidence, run Git checks, and capture Screenshot 010.

> [!WARNING]
> Never treat a restored file as proof that a banking transaction is correct. Validate business state separately.

---

**🏦 FinBank AI DevSecOps · Day 014 of 120**
*Protect · Recover · Reconcile · Validate · Document · Improve*
