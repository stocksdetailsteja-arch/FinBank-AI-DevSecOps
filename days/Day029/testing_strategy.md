[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Payment Intent Validation & Regression

> [!IMPORTANT]
> Day029 introduces an in-memory `PaymentIntentService` and immutable `PaymentIntent` model. The milestone creates deterministic synthetic payment intents, lists intents, retrieves an intent by identifier, validates account and amount inputs, and preserves all Day023-Day028 regression and recovery gates.

## Day120 Direction

Payment intents will later gain persistent identifiers, idempotency keys, authorization, state transitions, ledger posting, fraud decisions, event publication, expiry, settlement and reconciliation.

## Positive

- valid accounts and amount create HTTP 201
- created intent uses state CREATED
- get-by-ID returns the created intent
- list contains the created intent

## Negative

- unknown account returns HTTP 400
- same source and destination returns HTTP 400
- zero or invalid amount returns HTTP 400
- missing intent returns HTTP 404
- unavailable server returns exit 69

## Regression

Day023 smoke and Day025-Day028 domain tests remain mandatory.

---

**🏦 FinBank AI DevSecOps · Day 029 of 120**
*Create · Identify · Validate · Test · Recover · Govern*
