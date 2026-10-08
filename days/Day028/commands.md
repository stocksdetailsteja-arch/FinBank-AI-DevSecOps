[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Payment Build, Runtime & API Commands

> [!IMPORTANT]
> Day028 introduces `PaymentService` as the payment-domain service boundary for deterministic quote calculation. The HTTP adapter validates transport inputs and maps service results, while fee policy and money calculations live in a dedicated service. Customer, account, transaction and recovery behavior remain mandatory regression gates.

## Day120 Direction

The payment domain will evolve from read-only quotes into validated payment intents, authorization, idempotency, ledger posting, settlement, fraud screening, event publication, reconciliation, observability and disaster recovery.

## Build and Start

```bash
./finbank build
./finbank start
./finbank status
```

Expected build after integration: eleven Java sources and eleven class files.

## Standard Quote

```bash
curl --max-time 5 "http://127.0.0.1:8080/payments/quote?amountMinor=10000"
```

## Minimum Fee

```bash
curl --max-time 5 "http://127.0.0.1:8080/payments/quote?amountMinor=1"
```

## Invalid Input

```bash
curl --max-time 5 -sS -o /tmp/day028-invalid.json -w '%{http_code}
' "http://127.0.0.1:8080/payments/quote?amountMinor=0"
cat /tmp/day028-invalid.json
```

## Test, Verify and Stop

```bash
./scripts/day028/payment-service-test.sh
./finbank test
./finbank verify
./finbank stop
```

---

**🏦 FinBank AI DevSecOps · Day 028 of 120**
*Quote · Validate · Calculate · Test · Recover · Evolve*
