[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Payment Intent Build, Runtime & API Commands

> [!IMPORTANT]
> Day029 introduces an in-memory `PaymentIntentService` and immutable `PaymentIntent` model. The milestone creates deterministic synthetic payment intents, lists intents, retrieves an intent by identifier, validates account and amount inputs, and preserves all Day023-Day028 regression and recovery gates.

## Day120 Direction

Payment intents will later gain persistent identifiers, idempotency keys, authorization, state transitions, ledger posting, fraud decisions, event publication, expiry, settlement and reconciliation.

## Build and Start

```bash
./finbank build
./finbank start
./finbank status
```

Expected after integration: fourteen Java sources and fourteen class files.

## List

```bash
curl --max-time 5 http://127.0.0.1:8080/payment-intents
```

## Create

```bash
curl --max-time 5 -X POST "http://127.0.0.1:8080/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2002&amountMinor=10000"
```

## Retrieve

```bash
curl --max-time 5 http://127.0.0.1:8080/payment-intents/PAY-4001
```

## Invalid

```bash
curl --max-time 5 -sS -o /tmp/day029-invalid.json -w '%{http_code}
' -X POST "http://127.0.0.1:8080/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2001&amountMinor=10000"
cat /tmp/day029-invalid.json
```

---

**🏦 FinBank AI DevSecOps · Day 029 of 120**
*Create · Identify · Validate · Test · Recover · Govern*
