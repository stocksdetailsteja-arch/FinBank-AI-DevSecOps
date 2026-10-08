[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Transaction Service & Ledger Foundations

> [!IMPORTANT]
> Day027 introduces `TransactionService` as the transaction-domain service boundary. Transaction collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps results to HTTP 200 and HTTP 404. Customer, account and recovery behavior remain mandatory regression gates.

## Day120 Direction

The transaction domain will evolve toward immutable ledger postings, validated commands, PostgreSQL persistence, idempotency, event publication, fraud controls, reconciliation, authorization, observability and disaster recovery.

## Service Responsibility

| Layer | Owns | Excludes |
|---|---|---|
| HTTP adapter | route, response status, transport | transaction lookup rules |
| TransactionService | collection and ID lookup | HTTP mechanics |
| repository | transaction data access | response serialization |
| Transaction record | immutable transaction state | persistence orchestration |
| Money record | minor units and currency | posting workflow |

## Transaction vs Ledger Entry

The current synthetic transaction is a simplified business record. A production double-entry ledger requires balanced debit and credit postings, immutable history, account sequence, validation and reconciliation. Day027 does not claim ledger completeness.

## Status Semantics

`POSTED` represents the current synthetic final state. Later milestones should distinguish pending, authorized, posted, declined, reversed and failed states with controlled transitions.

## Idempotency

Read-only lookup is naturally repeatable. Future transaction creation requires an idempotency key, uniqueness enforcement, replay-safe behavior and audit evidence.

## Day120 Integration

The service boundary will later add Spring Boot, DTO validation, PostgreSQL, Flyway, ledger postings, outbox events, Kafka, fraud checks, authorization, tracing and recovery controls.

---

**🏦 FinBank AI DevSecOps · Day 027 of 120**
*Trace · Validate · Serve · Test · Recover · Evolve*
