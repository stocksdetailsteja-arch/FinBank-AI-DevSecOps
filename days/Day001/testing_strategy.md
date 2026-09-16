# Day 001 Testing Strategy

## Positive checks
- FinBank path and remote are correct.
- Day 001 files are present.
- Baseline command completes.
- Sensitive-pattern scan returns no real secrets.

## Negative checks
- Querying a nonexistent Git remote fails safely.
- Running Git outside a repository produces a recognizable error.
- A deliberately named sample such as `example-token-name` is detected by the local pattern check, then removed before commit.

## Regression checks
- ShopSphere remote remains unchanged.
- ShopSphere working tree remains unchanged by Day 001.
- No ZIP, temporary extraction directory or credential file is staged.

## Acceptance commands
```bash
git diff --check
test "$(git rev-parse --show-toplevel)" = "$HOME/Projects/FinBank-AI-DevSecOps"
test "$(git remote get-url origin)" = "git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git"
test "$(find days/Day001 -maxdepth 1 -type f | wc -l)" -ge 14
! git ls-files | grep -E '(^|/)(\.env|.*\.pem|.*\.key)$'
```
