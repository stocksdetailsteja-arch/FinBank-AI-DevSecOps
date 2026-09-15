# Threat Model

## Assets
Synthetic customer profiles, authentication artifacts, payment instructions, ledger records, audit evidence, CI/CD credentials, Terraform state, container images, runbooks, prompts and model outputs.

## Trust boundaries
Internet to edge, edge to EKS, service to service, service to database, CI runner to AWS, workload to AWS APIs, user to AI assistant, AI assistant to retrieval store.

## Priority threats and controls
| Threat | Example | Prevent | Detect | Recover |
|---|---|---|---|---|
| Credential theft | leaked CI secret | OIDC, short-lived roles, secret scanning | CloudTrail anomaly | revoke session and rotate |
| Broken authorization | customer reads another account | object-level checks and tests | denied-access metrics | disable route and patch |
| Replay/duplicate | repeated payment request | idempotency key and unique constraint | duplicate counter | return original result |
| Supply-chain compromise | malicious dependency/image | pin, scan, SBOM, sign, review | provenance verification | rollback trusted artifact |
| Prompt injection | runbook contains hostile instruction | isolate instructions, allowlist content/tools | evaluation and audit logs | disable corpus/tool |
| Data leakage | secret copied to prompt | redaction, DLP, synthetic data | prompt/output monitoring | revoke, investigate, rotate |
| Ledger inconsistency | partial debit or credit | atomic transaction and invariant | reconciliation alert | stop posting and reconcile |
