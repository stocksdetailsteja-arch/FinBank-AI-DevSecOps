[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Payment Intent, Idempotency & State Concepts

> [!IMPORTANT]
> Day029 introduces an in-memory `PaymentIntentService` and immutable `PaymentIntent` model. The milestone creates deterministic synthetic payment intents, lists intents, retrieves an intent by identifier, validates account and amount inputs, and preserves all Day023-Day028 regression and recovery gates.

## Day120 Direction

Payment intents will later gain persistent identifiers, idempotency keys, authorization, state transitions, ledger posting, fraud decisions, event publication, expiry, settlement and reconciliation.

## Intent vs Quote vs Execution

| Object | Meaning |
|---|---|
| PaymentQuote | fee information only |
| PaymentIntent | requested future movement of funds |
| Authorization | permission and control decision |
| Ledger posting | accounting record |
| Settlement | completion with an external or internal rail |

## CREATED State

Day029 creates intents only in `CREATED`. Later states require explicit transition rules, authorization, audit and persistence.

## Identifier

The current process creates sequential synthetic identifiers beginning with `PAY-4001`. Production identifiers require durable uniqueness and cannot rely on process memory.

## Validation

Source and destination accounts must exist and differ. Amount must be a positive minor-unit integer. Currency remains INR.

## Idempotency Gap

Day029 does not yet accept an idempotency key. The documentation and validator explicitly identify this as a production gap for future payment command APIs.

---

**🏦 FinBank AI DevSecOps · Day 029 of 120**
*Create · Identify · Validate · Test · Recover · Govern*
