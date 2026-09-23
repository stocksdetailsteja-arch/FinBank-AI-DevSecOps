# Day021 Drift Detection Report
## Desired File
labs/day021/desired/app.conf
## Actual File
labs/day021/actual/app.conf
## Unified Diff
```diff
--- labs/day021/desired/app.conf	2026-09-23 04:09:02.000000000 +0000
+++ labs/day021/actual/app.conf	2026-09-23 04:09:02.000000000 +0000
@@ -1,5 +1,5 @@
-payment.timeout.ms=3000
-payment.retry.max=2
-audit.enabled=true
+payment.timeout.ms=8000
+payment.retry.max=5
+audit.enabled=false
 fraud.events.enabled=true
 queue.dlq.enabled=true
```
