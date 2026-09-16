[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Hands-On Filesystem Laboratory

## 🎯 Objective
Build a safe filesystem laboratory and generate repeatable evidence without changing operating-system configuration.

## 1️⃣ Create the Branch and Lab Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-002-linux-filesystem
mkdir -p labs/day002/{config,data,logs,tmp,links}
mkdir -p evidence/day002 screenshots/labs/day002
```

## 2️⃣ Create Synthetic Files
```bash
printf 'environment=lab
service=finbank-training
' > labs/day002/config/app.conf
printf 'TXN-DEMO-001,ACCEPTED
' > labs/day002/data/synthetic-transactions.csv
printf 'INFO synthetic service started
' > labs/day002/logs/application.log
touch labs/day002/tmp/session.tmp
```

## 3️⃣ Explore Metadata and Paths
```bash
pwd
realpath labs/day002/config/app.conf
stat labs/day002/config/app.conf
namei -l "$(realpath labs/day002/config/app.conf)"
```

## 4️⃣ Create and Validate Links
```bash
ln labs/day002/data/synthetic-transactions.csv labs/day002/links/transactions.hard
ln -s ../data/synthetic-transactions.csv labs/day002/links/transactions.symbolic
ls -li labs/day002/data/synthetic-transactions.csv labs/day002/links/transactions.hard
readlink labs/day002/links/transactions.symbolic
readlink -f labs/day002/links/transactions.symbolic
```

## 5️⃣ Run the Inventory Script
```bash
chmod +x scripts/day002/linux-filesystem-inventory.sh
bash -n scripts/day002/linux-filesystem-inventory.sh
./scripts/day002/linux-filesystem-inventory.sh
sed -n '1,240p' evidence/day002/linux-filesystem-inventory.md
```

## 6️⃣ Safe Failure Exercises
### Broken symbolic link
```bash
ln -s ../data/missing.csv labs/day002/links/broken.symbolic
readlink -f labs/day002/links/broken.symbolic || echo 'EXPECTED: target does not exist'
```
### Invalid path
```bash
stat labs/day002/does-not-exist 2> evidence/day002/invalid-path-error.txt || true
cat evidence/day002/invalid-path-error.txt
```
### Permission denied without altering system paths
```bash
mkdir -p labs/day002/restricted
printf 'synthetic-only
' > labs/day002/restricted/demo.txt
chmod 000 labs/day002/restricted/demo.txt
cat labs/day002/restricted/demo.txt 2> evidence/day002/permission-error.txt || true
chmod 600 labs/day002/restricted/demo.txt
cat evidence/day002/permission-error.txt
```

## 7️⃣ Validate and Clean Only Temporary Lab State
```bash
rm -f labs/day002/links/broken.symbolic labs/day002/tmp/session.tmp
find labs/day002 -maxdepth 3 -printf '%M %u:%g %p
' | sort
bash scripts/day002/validate-day002.sh
```

> [!CAUTION]
> Never use `sudo`, recursive permission changes, or deletion outside `labs/day002/` in this lab.

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
