[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Transaction Build, Runtime & API Commands

> [!IMPORTANT]
> Day027 introduces `TransactionService` as the transaction-domain service boundary. Transaction collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps results to HTTP 200 and HTTP 404. Customer, account and recovery behavior remain mandatory regression gates.

## Day120 Direction

The transaction domain will evolve toward immutable ledger postings, validated commands, PostgreSQL persistence, idempotency, event publication, fraud controls, reconciliation, authorization, observability and disaster recovery.

## Build and Start

```bash
./finbank build
./finbank start
./finbank status
```

Expected build: ten Java sources and ten class files.

## Collection

```bash
curl --max-time 5 http://127.0.0.1:8080/transactions
```

## Known Transactions

```bash
curl --max-time 5 http://127.0.0.1:8080/transactions/TXN-3001
curl --max-time 5 http://127.0.0.1:8080/transactions/TXN-3002
```

## Not Found

```bash
curl --max-time 5 -sS -o /tmp/day027-not-found.json -w '%{http_code}
' http://127.0.0.1:8080/transactions/TXN-9999
cat /tmp/day027-not-found.json
```

## Test, Verify and Stop

```bash
./scripts/day027/transaction-service-test.sh
./finbank test
./finbank verify
./finbank stop
```

---

**🏦 FinBank AI DevSecOps · Day 027 of 120**
*Trace · Validate · Serve · Test · Recover · Evolve*
