[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Scheduling Troubleshooting

> [!TIP]
> Confirm scheduler, schedule, timezone, environment, lock, last successful run, current process and business window before rerunning.

## 1. Cron Job Never Runs
Check service state, crontab ownership, syntax, timezone, permissions, command path and mail/journal output.

## 2. Works Manually but Fails in Cron
Define PATH, working directory, shell, locale and credentials explicitly. Remove TTY assumptions.

## 3. Job Runs Twice
Check duplicate schedules, clustered schedulers, daylight-saving behavior and ineffective locking. Add business idempotency.

## 4. Stale Lock Blocks Runs
Use `flock` or a robust lease. Do not remove a lock without confirming no active owner and safe transaction state.

## 5. Job Overruns Next Window
Add timeout, workload partitioning, alerting and overlap policy. Never allow silent concurrent settlement.

## 6. Missed Run After Reboot
Cron does not inherently replay missed jobs. Evaluate persistent systemd timers or an enterprise scheduler.

## 7. Retry Creates Duplicate Payments
Freeze retries, query authoritative transaction state and use idempotency/reconciliation before resubmission.

## 8. Report Totals Differ
Validate input window, duplicates, timezone boundaries, late arrivals and authoritative data source.

## 9. Scheduled Job Leaks Secrets
Remove secrets from command line/environment dumps, rotate exposed credentials and use approved secret delivery.

## 10. Job Exits Zero but Business Failed
Add business assertions, record counts/totals and reconciliation status. Process success is not business success.

---

**🏦 FinBank AI DevSecOps · Day 010 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
