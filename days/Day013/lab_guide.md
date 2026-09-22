[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Audit & Incident Lab

## 1. Branch and Directories
```bash
git switch main
git pull --ff-only
git switch -c day-013-linux-auditing-incident-readiness
mkdir -p labs/day013 evidence/day013 screenshots/labs/day013
```
## 2. Create Synthetic Security Timeline
```bash
printf '%s
' '2026-09-22T01:00:00Z level=INFO event=login_success correlation=DAY013-A data=synthetic' '2026-09-22T01:01:00Z level=WARN event=sudo_review correlation=DAY013-A data=synthetic' '2026-09-22T01:02:00Z level=ERROR event=payment_service_alert correlation=DAY013-A data=synthetic' > labs/day013/synthetic-security.log
```
## 3. Review Existing Audit Sources
Run bounded commands in `commands.md`. Redact sensitive lines from screenshots.
## 4. Generate Reports
```bash
chmod +x scripts/day013/*.sh
./scripts/day013/review-login-events.sh
./scripts/day013/review-security-events.sh
./scripts/day013/build-incident-evidence.sh labs/day013/synthetic-security.log
```
## 5. Controlled Failure
```bash
set +e
./scripts/day013/build-incident-evidence.sh /does/not/exist
echo "controlled_exit_code=$?"
set -e
```
## 6. Validate
```bash
./scripts/day013/validate-day013.sh
git diff --check
```
> [!CAUTION]
> Do not install auditd, add audit rules, clear logs, change retention, terminate sessions, block IPs or modify accounts.

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*
