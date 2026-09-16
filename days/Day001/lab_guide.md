# Day 001 Hands-On Lab

## Safety gate
Run every command from the FinBank repository unless the command explicitly uses `git -C` to inspect ShopSphere without entering or changing it.

## Step 1: Create the Day 001 feature branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git remote -v
git switch -c day-001-engineering-baseline
```

## Step 2: Create the baseline evidence file
```bash
mkdir -p evidence/day001
{
  echo '# FinBank Day 001 Baseline'
  echo
  echo '## Timestamp UTC'
  date -u '+%Y-%m-%dT%H:%M:%SZ'
  echo
  echo '## User and Groups'
  whoami
  id
  echo
  echo '## Operating System'
  grep -E '^(NAME|VERSION|VERSION_ID)=' /etc/os-release
  echo
  echo '## Kernel and Architecture'
  uname -srmo
  echo
  echo '## CPU and Memory'
  nproc
  free -h
  echo
  echo '## Filesystems'
  df -hT
  echo
  echo '## Git Context'
  git rev-parse --show-toplevel
  git branch --show-current
  git remote -v
} > evidence/day001/system-baseline.md
```

## Step 3: Inspect before accepting
```bash
sed -n '1,220p' evidence/day001/system-baseline.md
grep -Ein 'password|secret|token|access.key|private.key' evidence/day001/system-baseline.md || true
```
The second command should return no sensitive matches.

## Step 4: Verify repository separation
```bash
printf 'FinBank root: '
git rev-parse --show-toplevel
printf 'ShopSphere root: '
git -C ~/Projects/ShopSphere rev-parse --show-toplevel
printf '
FinBank remote:
'
git remote -v
printf '
ShopSphere remote:
'
git -C ~/Projects/ShopSphere remote -v
```

## Step 5: Record tool versions
```bash
{
  echo '# Tool Versions'
  git --version
  aws --version
  docker --version 2>/dev/null || echo 'Docker: not currently available'
  java -version 2>&1 | head -n 3
  mvn -version 2>/dev/null | head -n 3 || echo 'Maven: not currently available'
  terraform version 2>/dev/null | head -n 2 || echo 'Terraform: not currently available'
  kubectl version --client 2>/dev/null || echo 'kubectl: not currently available'
} > evidence/day001/tool-versions.md
cat evidence/day001/tool-versions.md
```

## Step 6: AWS non-destructive identity inspection
```bash
aws sts get-caller-identity
aws configure list
```
Do not paste or screenshot the account number, access key identifier or secret material. If the command fails, document the error rather than changing credentials immediately.

## Step 7: Safe failure exercise
From the FinBank repository, run:
```bash
git remote get-url shopSphereWrongName
```
Expected failure: the remote does not exist. Record the message and explain that the failure is safe because it performs no write.

## Step 8: Validate working tree
```bash
git status --short
git diff --check
find days/Day001 -maxdepth 1 -type f -printf '%f
' | sort
```

## Step 9: Complete lab notes and screenshots
Use `lab_notes.md` and `screenshot_checklist.md` before committing.
