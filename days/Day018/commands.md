[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained Security Command Center: Purpose, Output, Use & Examples

## `id`

```bash
id
```

**Purpose:** Shows the current numeric UID, primary GID, and supplementary groups.
**Important fields:** `uid`, `gid`, and `groups`.
**Example interpretation:** Membership in `sudo`, `adm`, or `lxd` expands capability and requires governance review.
**Production use:** Confirms the effective identity context before investigating authorization.
**Banking relevance:** Privileged group membership must match approved job responsibility and segregation-of-duties requirements.
**Interview tip:** Explain why group changes may require a new login session before becoming active.

## `getent passwd` and `getent group`

```bash
getent passwd
getent group sudo
```

**Purpose:** Queries the system identity databases through configured name-service sources.
**Why use `getent`:** It can include centrally resolved identities, unlike reading only local files.
**Key fields:** username, UID/GID, home directory, shell; group name, GID, members.
**Production use:** Identity inventory and privilege recertification.
**Security note:** Do not publish full enterprise identity inventories.

## `sudo -l`

```bash
sudo -l
```

**Purpose:** Displays effective sudo privileges for the current identity.
**Interpretation:** `(ALL) NOPASSWD: ALL` is extremely broad and requires strong compensating controls in production.
**Production use:** Troubleshoots privilege denial and supports access reviews.
**Banking relevance:** Effective privilege must map to approved support tasks and audit evidence.
**Interview tip:** `sudo -l` describes effective policy; policy-file text may be affected by aliases, includes, and matching rules.

## `sshd -T`

```bash
sshd -T 2>/dev/null | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|allowtcpforwarding|maxauthtries|clientaliveinterval)'
```

**Purpose:** Evaluates the effective SSH daemon configuration after includes and defaults.
**Key settings:** root login, password authentication, public-key authentication, forwarding, authentication attempts, and idle behavior.
**Production use:** Pre-change baseline and post-change validation.
**Safety:** Validate syntax and preserve console or break-glass recovery before real changes.
**Banking use:** Protects remote administration paths to sensitive hosts.

## `stat`

```bash
stat -c '%A %a %U %G %n' labs/day018/security-demo.txt
```

**Purpose:** Reports symbolic/numeric permissions, owner, group, and name.
**Example:** `-rw------- 600 ubuntu ubuntu file` means owner read/write only.
**Production use:** Verifies exact mode and ownership during permission incidents.
**Interview tip:** Explain why directory execute permission means traversal.

## `getfacl`

```bash
getfacl -p labs/day018 2>/dev/null || true
```

**Purpose:** Displays POSIX ACL entries and masks.
**Important fields:** owner, group, named user/group entries, mask, other, and default ACL.
**Production use:** Finds hidden authorization that mode bits alone do not explain.
**Banking relevance:** ACL reviews reduce unauthorized access to statements, audit evidence, and operational files.

## Bounded SUID/SGID Inventory

```bash
find /usr/bin /usr/sbin -xdev -type f \( -perm -4000 -o -perm -2000 \) -print | head -n 30
```

**Purpose:** Lists a bounded sample of set-ID executables on local filesystems.
**Interpretation:** A finding is an investigation candidate, not automatically a vulnerability.
**Production use:** Baseline comparison, package integrity review, and attack-surface assessment.
**Safety:** Do not remove set-ID bits without package, ownership, and dependency validation.

## AppArmor State

```bash
systemctl is-active apparmor.service || true
aa-status 2>/dev/null | head -n 30 || true
```

**Purpose:** Reviews mandatory-access-control service and profile state.
**Production use:** Correlates access denials with application behavior.
**Caution:** Disabling AppArmor globally is not an acceptable shortcut.

## Selected Kernel Protections

```bash
sysctl kernel.randomize_va_space fs.protected_symlinks fs.protected_hardlinks net.ipv4.conf.all.rp_filter
```

**Purpose:** Reads selected runtime security controls without changing them.
**Interpretation:** Values are context-dependent and must be validated against workload/network design.
**Production use:** Baseline drift review and hardening evidence.

## Packaged Commands

```bash
./scripts/day018/collect-identity-baseline.sh
./scripts/day018/review-privilege-and-ssh.sh
./scripts/day018/audit-file-security.sh
./scripts/day018/generate-security-decision-record.sh
./scripts/day018/validate-day018.sh
```

Each script is read-only for the host, writes sanitized repository evidence, validates inputs, and supports final portfolio checks.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*
