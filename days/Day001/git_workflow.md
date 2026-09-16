# Day 001 Git Workflow

## Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-001-engineering-baseline
```

## Review before commit
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote -v
git status --short
git diff --check
git diff --stat
git diff
```

## Stage intentionally
```bash
git add days/Day001 docs/progress screenshots/labs/day001 evidence/day001 scripts/day001
git status
git diff --cached --check
git diff --cached --stat
git diff --cached
```

## Commit and push
```bash
git commit -m "docs(day-001): establish engineering baseline and safety controls"
git push -u origin day-001-engineering-baseline
```

## Pull request title
`docs(day-001): establish engineering baseline and safety controls`

## Pull request acceptance
- Correct FinBank remote
- No ShopSphere changes
- No secret material
- Baseline and screenshots complete
- Cost checklist complete
- Validation commands pass
