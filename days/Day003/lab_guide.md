[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 No-Sudo Identity & Permissions Laboratory

## 🎯 Objective
Demonstrate identity, ownership, umask, directory semantics, SGID-style group inheritance, sticky-directory behavior, optional ACLs, failure diagnosis and recovery without modifying system accounts.

## 1️⃣ Create Day 003 Branch
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-003-linux-identities-permissions
mkdir -p labs/day003 evidence/day003 screenshots/labs/day003
```

## 2️⃣ Record Identity
```bash
whoami
id
getent passwd "$(whoami)"
getent group "$(id -gn)"
```

## 3️⃣ Create Controlled Lab Paths
```bash
mkdir -p labs/day003/private labs/day003/collaboration labs/day003/shared-drop labs/day003/acl-demo
printf 'synthetic customer preference
' > labs/day003/private/profile.txt
printf 'synthetic reconciliation note
' > labs/day003/collaboration/reconciliation.txt
chmod 700 labs/day003/private
chmod 600 labs/day003/private/profile.txt
chmod 2770 labs/day003/collaboration
chmod 1770 labs/day003/shared-drop
```

## 4️⃣ Validate Modes and Ownership
```bash
stat -c '%A %a %U:%G %n' labs/day003/private labs/day003/private/profile.txt labs/day003/collaboration labs/day003/shared-drop
namei -l "$(realpath labs/day003/private/profile.txt)"
```

## 5️⃣ Demonstrate Umask
```bash
old_umask=$(umask)
umask 027
mkdir -p labs/day003/umask-demo
touch labs/day003/umask-demo/new-file
mkdir labs/day003/umask-demo/new-directory
stat -c '%A %a %n' labs/day003/umask-demo/new-file labs/day003/umask-demo/new-directory
umask "$old_umask"
```
Expected defaults are normally file `640` and directory `750`, subject to filesystem/ACL context.

## 6️⃣ Validate Group Inheritance
```bash
printf 'synthetic settlement note
' > labs/day003/collaboration/settlement.txt
stat -c '%A %a %U:%G %n' labs/day003/collaboration labs/day003/collaboration/settlement.txt
```
The SGID directory should cause new entries to inherit the directory group.

## 7️⃣ Optional ACL Exercise
```bash
if command -v setfacl >/dev/null 2>&1 && command -v getfacl >/dev/null 2>&1; then
  setfacl -m u:$(whoami):rw labs/day003/acl-demo
  getfacl -p labs/day003/acl-demo
else
  echo 'ACL tools unavailable; record capability gap without installing packages today'
fi
```

## 8️⃣ Safe Permission-Denied Failure
```bash
printf 'synthetic-only
' > labs/day003/private/denied.txt
chmod 000 labs/day003/private/denied.txt
cat labs/day003/private/denied.txt 2> evidence/day003/permission-denied.txt || true
cat evidence/day003/permission-denied.txt
chmod 600 labs/day003/private/denied.txt
cat labs/day003/private/denied.txt
```

## 9️⃣ Read-Only Special-Bit Inspection
```bash
stat -c '%A %a %U:%G %n' /tmp
find /usr/bin -xdev -perm -4000 -type f -printf '%M %u:%g %p
' 2>/dev/null | head -n 20
```
Do not change any listed system file.

## 🔟 Generate Evidence and Validate
```bash
chmod +x scripts/day003/linux-identity-audit.sh scripts/day003/validate-day003.sh
bash -n scripts/day003/linux-identity-audit.sh
bash -n scripts/day003/validate-day003.sh
./scripts/day003/linux-identity-audit.sh
./scripts/day003/validate-day003.sh
```

> [!CAUTION]
> Never run `chmod -R 777`, edit `/etc/passwd`, read `/etc/shadow`, modify sudoers or change system-binary ownership during this lab.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
