[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Authorization, State Transition & Concurrency Concepts

> [!IMPORTANT]
> Day030 introduces an explicit payment authorization boundary. A CREATED payment intent can transition to AUTHORIZED through `PaymentAuthorizationService`; repeated or invalid transitions fail safely. Authorization does not post a ledger entry, debit an account, execute a payment or prove settlement.

## Day120 Direction

Authorization will later incorporate authenticated actors, ownership, limits, fraud and sanctions decisions, durable state, optimistic locking, idempotency, audit events, ledger commands and reconciliation.

## Authorization Boundary

Authorization expresses approval to continue processing. It is distinct from quote, intent creation, ledger posting, execution and settlement.

## State Invariant

Only `CREATED` may transition to `AUTHORIZED`. An already authorized intent returns a conflict rather than silently succeeding.

## Current In-Memory Mutation

The service replaces the immutable PaymentIntent record in the in-memory store. Production persistence requires a version column, transaction boundary and optimistic locking.

## Status Mapping

| Condition | HTTP |
|---|---:|
| authorization succeeds | 200 |
| intent missing | 404 |
| invalid current state | 409 |
| malformed request | 404 |

## Production Gaps

Authenticated actor, customer ownership, available funds, product limits, beneficiary policy, fraud, sanctions, step-up approval, audit identity, idempotency and durable storage remain future work.

---

**🏦 FinBank AI DevSecOps · Day 030 of 120**
*Authorize · Transition · Audit · Test · Recover · Govern*
