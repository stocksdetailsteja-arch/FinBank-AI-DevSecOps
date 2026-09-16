# Day 001 Screenshot Checklist

Create the destination first:
```bash
cd ~/Projects/FinBank-AI-DevSecOps
mkdir -p screenshots/labs/day001
```

## Screenshot 1: Repository isolation
- **Take after:** Repository root and remote checks pass.
- **Run from:** `/home/ubuntu/Projects/FinBank-AI-DevSecOps`
- **Show:** `pwd`, FinBank repository root, FinBank remote, ShopSphere remote using `git -C`.
- **Hide:** Nothing should expose credentials.
- **Filename:** `001_Repository_Isolation_Verified.png`
- **Save to:** `screenshots/labs/day001/001_Repository_Isolation_Verified.png`

## Screenshot 2: Linux baseline
- **Take after:** Baseline file is created and inspected.
- **Show:** OS, kernel, CPU, memory and filesystem summary. Divide into two screenshots if unreadable.
- **Filename:** `002_Linux_Host_Baseline.png`
- **Save to:** `screenshots/labs/day001/002_Linux_Host_Baseline.png`

## Screenshot 3: Toolchain inventory
- **Take after:** `evidence/day001/tool-versions.md` is generated.
- **Show:** Git, AWS CLI and available DevOps tool versions.
- **Filename:** `003_DevOps_Toolchain_Inventory.png`
- **Save to:** `screenshots/labs/day001/003_DevOps_Toolchain_Inventory.png`

## Screenshot 4: Sensitive-data scan
- **Take after:** The scan returns no real secret material.
- **Show:** command and clean result, plus `git diff --check` success.
- **Filename:** `004_Security_Validation_Passed.png`
- **Save to:** `screenshots/labs/day001/004_Security_Validation_Passed.png`

## Screenshot 5: Day 001 Git review
- **Take after:** All Day 001 files and screenshots are ready, before commit.
- **Show:** feature branch, `git status --short`, and a concise diff summary.
- **Filename:** `005_Day001_Git_Review.png`
- **Save to:** `screenshots/labs/day001/005_Day001_Git_Review.png`

Do not capture AWS account IDs, access-key metadata, tokens, private IPs unless strictly necessary, or any real banking information.
