[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Transaction API, State & Regression Testing

> [!IMPORTANT]
> Day027 introduces `TransactionService` as the transaction-domain service boundary. Transaction collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps results to HTTP 200 and HTTP 404. Customer, account and recovery behavior remain mandatory regression gates.

## Day120 Direction

The transaction domain will evolve toward immutable ledger postings, validated commands, PostgreSQL persistence, idempotency, event publication, fraud controls, reconciliation, authorization, observability and disaster recovery.

## Positive

- collection contains TXN-3001 and TXN-3002
- TXN-3001 returns CREDIT and 50000 INR
- TXN-3002 returns DEBIT and 12500 INR
- known IDs return HTTP 200

## Negative

- TXN-9999 returns HTTP 404
- body contains Transaction Not Found
- unavailable server returns exit 69
- malformed path returns 404

## Regression

Day023 smoke, Day025 customer, Day026 account and Day024 recovery gates remain mandatory.

---

**🏦 FinBank AI DevSecOps · Day 027 of 120**
*Trace · Validate · Serve · Test · Recover · Evolve*
