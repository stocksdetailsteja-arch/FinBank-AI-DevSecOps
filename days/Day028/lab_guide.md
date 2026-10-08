[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Payment Service Foundation Lab

> [!IMPORTANT]
> Day028 introduces `PaymentService` as the payment-domain service boundary for deterministic quote calculation. The HTTP adapter validates transport inputs and maps service results, while fee policy and money calculations live in a dedicated service. Customer, account, transaction and recovery behavior remain mandatory regression gates.

## Day120 Direction

The payment domain will evolve from read-only quotes into validated payment intents, authorization, idempotency, ledger posting, settlement, fraud screening, event publication, reconciliation, observability and disaster recovery.

## Phase 1: Safety
Merge Day027, create the Day028 branch and verify a clean working tree.

## Phase 2: Domain Types
Add immutable PaymentQuote and PaymentService.

## Phase 3: HTTP Integration
Delegate quote calculation to PaymentService while retaining query validation and HTTP 400 behavior.

## Phase 4: Clean Build
Stop, remove generated classes, build eleven sources and start on localhost.

## Phase 5: Functional Tests
Validate amount 10000, amount 1, amount 0 and invalid text.

## Phase 6: Regression
Run Day023 smoke plus Day025, Day026 and Day027 tests.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day028/payment-service-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `69`.

## Phase 8: Release
Generate evidence, run the validator, capture screenshots, stop the runtime and complete Git gates.

---

**🏦 FinBank AI DevSecOps · Day 028 of 120**
*Quote · Validate · Calculate · Test · Recover · Evolve*
