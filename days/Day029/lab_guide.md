[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Payment Intent Foundation Lab

> [!IMPORTANT]
> Day029 introduces an in-memory `PaymentIntentService` and immutable `PaymentIntent` model. The milestone creates deterministic synthetic payment intents, lists intents, retrieves an intent by identifier, validates account and amount inputs, and preserves all Day023-Day028 regression and recovery gates.

## Day120 Direction

Payment intents will later gain persistent identifiers, idempotency keys, authorization, state transitions, ledger posting, fraud decisions, event publication, expiry, settlement and reconciliation.

## Phase 1: Branch Safety
Start from merged Day028 and create `day-029-payment-intent-foundation`.

## Phase 2: Domain Model
Add PaymentIntent and PaymentIntentService.

## Phase 3: HTTP Integration
Add list, create and get-by-ID routing under `/payment-intents`.

## Phase 4: Clean Build
Stop, remove generated classes, compile fourteen sources and start localhost.

## Phase 5: Tests
Create PAY-4001, retrieve the intent, list intents, verify unknown intent 404 and invalid request 400.

## Phase 6: Regression
Run Day023 and Day025-Day028 tests.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day029/payment-intent-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `69`.

---

**🏦 FinBank AI DevSecOps · Day 029 of 120**
*Create · Identify · Validate · Test · Recover · Govern*
