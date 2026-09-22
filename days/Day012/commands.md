[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 012 Command Center

## Repository
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```
## SSH Audit
```bash
sshd -T 2>/dev/null | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|allowtcpforwarding|maxauthtries|clientaliveinterval)'
ls -ld /etc/ssh /etc/ssh/sshd_config /etc/ssh/sshd_config.d
```
## File and ACL Audit
```bash
find labs/day012 -xdev -type f -perm -0002 -ls
find /usr/bin /usr/sbin -xdev -type f \( -perm -4000 -o -perm -2000 \) -print | head -n 30
getfacl -p labs/day012 2>/dev/null | head -n 40
```
## Exposure and Defenses
```bash
ss -lntup
ufw status verbose 2>/dev/null || true
systemctl is-active apparmor.service || true
aa-status 2>/dev/null | head -n 30 || true
sysctl kernel.randomize_va_space fs.protected_symlinks fs.protected_hardlinks net.ipv4.conf.all.rp_filter
```
## Quality
```bash
for script in scripts/day012/*.sh; do bash -n "$script"; done
./scripts/day012/validate-day012.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*
