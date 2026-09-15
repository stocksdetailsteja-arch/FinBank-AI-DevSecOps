# Production Troubleshooting Playbook

## Evidence-first method
1. State impact, scope, start time and current risk.
2. Freeze unrelated changes and identify recent deployments or configuration changes.
3. Inspect golden signals: latency, traffic, errors and saturation.
4. Correlate logs, metrics, traces, events and audit history using a request or correlation ID.
5. Rank hypotheses by evidence and test the least risky discriminator.
6. Mitigate first through rollback, traffic shift, scaling, feature disablement or queue protection.
7. Confirm recovery from user-facing signals, not only a green deployment.
8. Build a timeline, root cause, contributing factors and durable corrective actions.

## Scenario catalogue
### EKS deployment is healthy but users receive 503
Check ALB target health, ingress rules, Service selectors, EndpointSlices, readiness probes, container ports, network policies and application bind address. Compare a request from inside the pod, inside the cluster and through the load balancer.

### Pods restart with OOMKilled
Inspect termination reason, memory working set, limits, heap/container awareness, traffic pattern and recent release. Roll back or increase capacity only as mitigation; find the allocation or leak and load-test the correction.

### Terraform plan proposes replacement of production database
Stop. Inspect provider/schema changes, immutable arguments, state address, moved blocks, drift and lifecycle settings. Never apply until backup, impact, migration and rollback are reviewed.

### Payment events are duplicated
Trace idempotency key, unique constraint, consumer offset/visibility timeout, retry policy and outbox publication. Make the consumer idempotent and reconcile ledger effects before replay.

### Jenkins succeeds but old image is running
Compare Git SHA, image digest, registry tag, Helm value, deployment annotation and pod image ID. Promote immutable digests rather than mutable tags.

### AI assistant invents a remediation command
Block execution. Require retrieved evidence citations, command allowlists, sandbox validation, risk classification and human approval. Add the failure to the evaluation dataset.
