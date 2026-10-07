[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Account Service Layer & Banking Domain Concepts

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

## Layer Responsibilities

| Layer | Owns | Does Not Own |
|---|---|---|
| HTTP adapter | routing, HTTP status, response transport | account lookup rules |
| AccountService | list and identifier lookup | HTTP exchange mechanics |
| repository | account data access | HTTP serialization |
| Account record | immutable account state | storage or routing |
| Money record | amount minor units and currency | balance mutation workflow |

## Account Lookup

`getAccountById` returns a matching synthetic account or `null` for the current milestone. The adapter maps absence to a stable HTTP 404 response. A later milestone can replace this with a domain result or `Optional<Account>` after service contracts are standardized.

## Money Representation

Balances remain integer minor units with explicit currency. Floating-point balances are prohibited because rounding ambiguity is unacceptable for financial values.

## Ownership Boundary

Account records reference a customer identifier, but Day026 does not yet perform cross-domain authorization or lifecycle validation. Later services must verify customer status, account status, permissions and audit requirements.

## Day120 Integration

PostgreSQL constraints, migrations, optimistic locking, ledger separation, transaction isolation, authorization, audit, event publication and reconciliation will extend this service boundary.

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*
