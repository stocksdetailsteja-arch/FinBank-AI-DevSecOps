[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Payment Authorization Foundation Lab

> [!IMPORTANT]
> Day030 introduces an explicit payment authorization boundary. A CREATED payment intent can transition to AUTHORIZED through `PaymentAuthorizationService`; repeated or invalid transitions fail safely. Authorization does not post a ledger entry, debit an account, execute a payment or prove settlement.

## Day120 Direction

Authorization will later incorporate authenticated actors, ownership, limits, fraud and sanctions decisions, durable state, optimistic locking, idempotency, audit events, ledger commands and reconciliation.

## Phase 1
Start from merged Day029 and create `day-030-payment-authorization-foundation`.

## Phase 2
Add PaymentAuthorizationService and an update operation to PaymentIntentService.

## Phase 3
Add `POST /payment-intents/{intentId}/authorize` with 200, 404 and 409 contracts.

## Phase 4
Clean build fifteen Java sources and start localhost.

## Phase 5
Create PAY-4001, authorize it, retrieve AUTHORIZED state, verify duplicate authorization conflict and missing-intent 404.

## Phase 6
Run all Day023 and Day025-Day029 regression tests.

## Controlled Failure

```bash
set +e
./scripts/day030/payment-authorization-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `69`.

---

**🏦 FinBank AI DevSecOps · Day 030 of 120**
*Authorize · Transition · Audit · Test · Recover · Govern*
