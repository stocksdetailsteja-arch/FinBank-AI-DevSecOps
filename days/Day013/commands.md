[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 013 Command Center

## Repository
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```
## Audit Platform
```bash
systemctl is-active auditd.service 2>/dev/null || true
command -v ausearch || true
journalctl --list-boots | tail -n 10
```
## Bounded Login and Privilege Review
```bash
last -n 10
lastb -n 10 2>/dev/null || true
journalctl -b -u ssh.service --since '2 hours ago' --no-pager | tail -n 30
journalctl -b _COMM=sudo --since '2 hours ago' --no-pager | tail -n 30
```
## Process and Integrity
```bash
ps -eo pid,ppid,user,stat,lstart,comm --sort=-lstart | head -n 25
sha256sum labs/day013/synthetic-security.log
```
## Quality
```bash
for script in scripts/day013/*.sh; do bash -n "$script"; done
./scripts/day013/validate-day013.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
