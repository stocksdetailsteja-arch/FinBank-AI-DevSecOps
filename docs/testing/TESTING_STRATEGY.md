# Testing Strategy

## Test pyramid and release gates
- Unit: domain rules, ledger balance, limits, idempotency and prompt filters.
- Component: service with real database or broker container.
- Contract: API and event schema compatibility.
- Integration: payment-to-ledger-to-outbox flow.
- Security: SAST, dependency, secret, IaC, image and API tests.
- Infrastructure: format, validate, plan, module tests and policy checks.
- Resilience: pod termination, broker delay, database failover and dependency timeout.
- AI evaluation: groundedness, retrieval relevance, refusal, prompt injection, sensitive-data leakage and unsupported-action rate.
- Performance: latency percentiles, throughput, saturation and recovery.
- DR: backup restore and integrity verification.

## Promotion rule
Promote the same immutable artifact digest. Rebuilds between environments are prohibited because they change the artifact being approved.
