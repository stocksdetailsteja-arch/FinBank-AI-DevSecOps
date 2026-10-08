[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Payment Fee, Boundary & Regression Testing

> [!IMPORTANT]
> Day028 introduces `PaymentService` as the payment-domain service boundary for deterministic quote calculation. The HTTP adapter validates transport inputs and maps service results, while fee policy and money calculations live in a dedicated service. Customer, account, transaction and recovery behavior remain mandatory regression gates.

## Day120 Direction

The payment domain will evolve from read-only quotes into validated payment intents, authorization, idempotency, ledger posting, settlement, fraud screening, event publication, reconciliation, observability and disaster recovery.

## Positive

- amount 10000 returns amount 10000 and fee 100
- amount 1 returns minimum fee 100
- amount 100000 returns fee 500
- currency remains INR

## Negative

- zero returns HTTP 400
- negative amount returns HTTP 400
- invalid text returns HTTP 400
- unavailable server returns exit 69

## Regression

Day023 smoke, Day025 customer, Day026 account, Day027 transaction and Day024 recovery gates remain mandatory.

---

**🏦 FinBank AI DevSecOps · Day 028 of 120**
*Quote · Validate · Calculate · Test · Recover · Evolve*
