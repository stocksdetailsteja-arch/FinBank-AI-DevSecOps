[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Authorization State & Regression Testing

> [!IMPORTANT]
> Day030 introduces an explicit payment authorization boundary. A CREATED payment intent can transition to AUTHORIZED through `PaymentAuthorizationService`; repeated or invalid transitions fail safely. Authorization does not post a ledger entry, debit an account, execute a payment or prove settlement.

## Day120 Direction

Authorization will later incorporate authenticated actors, ownership, limits, fraud and sanctions decisions, durable state, optimistic locking, idempotency, audit events, ledger commands and reconciliation.

## Positive

- valid CREATED intent authorizes with HTTP 200
- response and retrieval show AUTHORIZED

## Negative

- missing intent returns 404
- second authorization returns 409
- malformed path returns 404
- unavailable server returns 69

## Regression

Day023 smoke and Day025-Day029 domain suites remain mandatory.

---

**🏦 FinBank AI DevSecOps · Day 030 of 120**
*Authorize · Transition · Audit · Test · Recover · Govern*
