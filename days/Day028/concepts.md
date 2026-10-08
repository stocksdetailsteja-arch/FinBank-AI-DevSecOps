[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Payment Quote, Fee Policy & Money Concepts

> [!IMPORTANT]
> Day028 introduces `PaymentService` as the payment-domain service boundary for deterministic quote calculation. The HTTP adapter validates transport inputs and maps service results, while fee policy and money calculations live in a dedicated service. Customer, account, transaction and recovery behavior remain mandatory regression gates.

## Day120 Direction

The payment domain will evolve from read-only quotes into validated payment intents, authorization, idempotency, ledger posting, settlement, fraud screening, event publication, reconciliation, observability and disaster recovery.

## Service Responsibility

| Layer | Owns | Excludes |
|---|---|---|
| HTTP adapter | query parsing, status and transport | fee calculation policy |
| PaymentService | quote calculation and money invariants | HTTP exchange mechanics |
| PaymentQuote | immutable quote result | authorization and settlement |
| Money values | integer minor units and currency | floating-point arithmetic |

## Deterministic Quote

For a valid positive amount, the fee is the greater of 100 minor units and rounded 0.5 percent of the amount. The same input must always produce the same quote under the same policy version.

## Quote vs Payment

A quote is informational and does not reserve funds, authorize a payment, post a ledger entry or guarantee settlement. Future command workflows must keep these stages explicit.

## Idempotency

Read-only quote calculation is repeatable. Future payment intent and execution APIs require idempotency keys, uniqueness, replay protection and audit evidence.

## Day120 Integration

Later milestones add Spring Boot, DTO validation, PostgreSQL, payment intents, authorization, ledger postings, outbox events, Kafka, fraud decisions, settlement and reconciliation.

---

**🏦 FinBank AI DevSecOps · Day 028 of 120**
*Quote · Validate · Calculate · Test · Recover · Evolve*
