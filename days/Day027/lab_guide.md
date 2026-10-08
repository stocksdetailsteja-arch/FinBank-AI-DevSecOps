[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Transaction Service Foundation Lab

> [!IMPORTANT]
> Day027 introduces `TransactionService` as the transaction-domain service boundary. Transaction collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps results to HTTP 200 and HTTP 404. Customer, account and recovery behavior remain mandatory regression gates.

## Day120 Direction

The transaction domain will evolve toward immutable ledger postings, validated commands, PostgreSQL persistence, idempotency, event publication, fraud controls, reconciliation, authorization, observability and disaster recovery.

## Phase 1: Safety
Merge Day026, create the Day027 branch and verify a clean working tree.

## Phase 2: Service Layer
Create TransactionService with collection and identifier lookup.

## Phase 3: HTTP Route
Preserve `/transactions`, add `/transactions/{transactionId}`, and map absence to HTTP 404.

## Phase 4: Clean Build
Stop, remove generated classes, build ten sources and start on localhost.

## Phase 5: Feature Tests
Validate TXN-3001, TXN-3002 and TXN-9999.

## Phase 6: Regression
Run Day023 smoke, Day025 customer and Day026 account tests.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day027/transaction-service-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `69`.

## Phase 8: Release
Generate evidence, run the validator, capture screenshots, stop the runtime and complete Git gates.

---

**🏦 FinBank AI DevSecOps · Day 027 of 120**
*Trace · Validate · Serve · Test · Recover · Evolve*
