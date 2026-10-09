[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Authorization Build, Runtime & API Commands

> [!IMPORTANT]
> Day030 introduces an explicit payment authorization boundary. A CREATED payment intent can transition to AUTHORIZED through `PaymentAuthorizationService`; repeated or invalid transitions fail safely. Authorization does not post a ledger entry, debit an account, execute a payment or prove settlement.

## Day120 Direction

Authorization will later incorporate authenticated actors, ownership, limits, fraud and sanctions decisions, durable state, optimistic locking, idempotency, audit events, ledger commands and reconciliation.

## Build

```bash
./finbank build
./finbank start
```

Expected after integration: fifteen Java sources and fifteen classes.

## Create Intent

```bash
curl --max-time 5 -X POST "http://127.0.0.1:8080/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2002&amountMinor=10000"
```

## Authorize

```bash
curl --max-time 5 -X POST http://127.0.0.1:8080/payment-intents/PAY-4001/authorize
```

## Verify State

```bash
curl --max-time 5 http://127.0.0.1:8080/payment-intents/PAY-4001
```

## Feature and Regression

```bash
./scripts/day030/payment-authorization-test.sh
./finbank test
./finbank verify
```

---

**🏦 FinBank AI DevSecOps · Day 030 of 120**
*Authorize · Transition · Audit · Test · Recover · Govern*
