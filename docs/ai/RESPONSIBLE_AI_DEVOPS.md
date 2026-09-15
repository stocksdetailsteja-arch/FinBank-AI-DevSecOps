# Responsible AI for DevOps

## Allowed starting use cases
Explain configuration, draft tests, summarize sanitized telemetry, create hypotheses, retrieve approved runbooks and review documentation.

## High-risk use cases
Production write access, IAM modification, secret retrieval, database mutation, security-control disablement, customer-impacting traffic changes and financial decisions.

## Validation contract
For every AI output record the context supplied, prompt version, expected constraints, evidence references, tests executed, defects found, human reviewer and final accepted change.

## Agent control plane
Use narrow tools, typed inputs, allowlists, least privilege, sandboxing, dry-run, approval gates, complete audit logs, timeouts, rate limits, cost ceilings and a kill switch.
