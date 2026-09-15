# MNC-Style DevOps Interview Questions and Model Answers

> These are original practice questions aligned to common service-company and enterprise interview patterns. They are **not claimed to be leaked, proprietary or verbatim questions** from TCS, Deloitte, LTIMindtree, EY or any other employer.

## Senior-level answer framework
Use: context, impact, evidence, hypothesis, safe mitigation, root cause, durable fix, validation, prevention and measurable outcome.

### 1. A deployment completed successfully, but traffic still reaches the previous version. What do you check?
**Model answer:** I compare the intended Git SHA and image digest with the digest on running pods. Then I inspect the release values, Deployment revision, rollout status, image-pull policy, Service selector and load-balancer target health. I avoid restarting blindly because that destroys evidence. If the release points to a mutable tag, I mitigate by deploying the verified digest and prevent recurrence by promoting immutable artifacts through environments.

### 2. Terraform wants to recreate a database. How do you respond?
**Model answer:** I stop the pipeline and preserve the plan. I identify the exact ForceNew attribute, check state address changes, provider upgrades, drift and module refactoring. I use moved/import operations only after proving the mapping. For a bank workload, replacement requires reviewed backup, migration, downtime, recovery and rollback evidence. I add policy checks for protected resource types.

### 3. How do you secure AWS access from GitHub Actions?
**Model answer:** I prefer workload federation with a narrowly scoped IAM role and repository, branch or environment conditions instead of long-lived access keys. I separate plan and apply permissions, protect the production environment, require approval, log CloudTrail events and test revocation.

### 4. A payment API timed out, but the ledger may have posted. Should the client retry?
**Model answer:** The client retries with the same idempotency key. The service looks up the original request and returns its result instead of creating another posting. The ledger transaction and outbox write must be atomic, while reconciliation detects uncertainty. I never assume timeout means failure.

### 5. How do you design zero-downtime database changes?
**Model answer:** I use expand-and-contract changes: add backward-compatible schema, deploy code that supports both forms, migrate data with observable batches, switch reads, then remove the old form in a later release. I validate backup and restore and avoid coupling destructive migration to first application startup.

### 6. What makes an alert actionable?
**Model answer:** It maps to user or SLO impact, has a clear owner and severity, includes evidence and a runbook, avoids duplicate noise and has a tested response. I monitor symptoms before causes and review false positives after incidents.

### 7. How would you use AI during an incident?
**Model answer:** I allow AI to summarize sanitized logs, correlate a timeline and propose hypotheses. I require references to evidence and independently validate every command. Initial access is read-only. Privileged remediation needs an allowlisted tool, least privilege, sandbox, approval, audit trail, timeout and kill switch.

### 8. How do you prevent secrets from entering Git history?
**Model answer:** I combine developer hooks, CI secret scanning, protected variables and training. On detection, I revoke and rotate first, then remove the secret from history if required, invalidate caches or artifacts, audit use and add a prevention test. Deleting the visible line is not sufficient.

### 9. Explain Kubernetes readiness versus liveness.
**Model answer:** Readiness decides whether a pod should receive traffic. Liveness decides whether Kubernetes should restart it. Startup probes protect slow starts. A dependency outage usually should not trigger liveness restarts across every pod, because that can amplify failure.

### 10. How do you demonstrate that disaster recovery works?
**Model answer:** I define RTO and RPO for each service, automate backups, perform isolated restore exercises, validate data integrity and application behavior, record actual recovery evidence, and convert gaps into owned corrective actions. A backup job success alone is not proof of recoverability.

## Additional rapid-fire questions
1. Why can a security group allow traffic while a NACL still blocks it?
2. When is SQS visibility timeout too short?
3. Why can CPU-based HPA miss a saturated downstream dependency?
4. How do you recover from a lost Terraform state lock safely?
5. What evidence distinguishes DNS, TLS, load balancer and application failures?
6. Why are container tags insufficient for promotion?
7. How do PodDisruptionBudgets interact with maintenance?
8. How would you control Terraform module breaking changes?
9. What is the risk of granting an AI agent shell and production credentials?
10. How do you reconcile an event-driven ledger after consumer downtime?
