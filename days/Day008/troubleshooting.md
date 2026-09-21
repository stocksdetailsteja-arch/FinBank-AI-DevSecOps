[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Logging Troubleshooting

> [!TIP]
> Define the affected service, time window, boot, host and correlation ID before collecting large volumes of logs.

## 1. Service Is Failing but Journal Is Empty
Check unit stdout/stderr routing, namespace, permissions, rate limits, application file logging and whether the process starts at all.

## 2. Journal Uses Excessive Disk
Review configured limits, persistent storage, noisy units and forwarding health. Never vacuum evidence during an active incident without approval.

## 3. Logs Stop Reaching the SIEM
Check local generation, collector state, queue/buffer, DNS/TLS, destination acknowledgements and backpressure. Preserve local evidence.

## 4. Duplicate Events Appear
Investigate multiple collectors, forwarding loops, retries without deduplication and application double logging.

## 5. Timestamps Are Out of Order
Validate clock synchronization, timezone, ingestion time versus event time, buffering and cross-host drift.

## 6. Sensitive Data Appears in Logs
Restrict access, preserve incident evidence, assess exposure, rotate affected credentials, apply redaction and fix the source. Do not simply delete evidence.

## 7. High Log Volume Causes CPU or I/O Pressure
Identify top emitters, severity misuse, stack-trace storms and collector backpressure. Rate-limit carefully without losing critical audit events.

## 8. `journalctl -u` Shows Nothing
Confirm exact unit name, boot, user versus system journal, time range and permissions.

## 9. Logrotate Does Not Rotate a File
Check rule match, syntax, ownership, state file, size/time criteria, permissions and postrotate behavior.

## 10. Payment Timeout Has No Error Log
Correlate access logs, traces, dependency metrics, queue state and transaction records. Missing errors do not mean no incident.

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*
