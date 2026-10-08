[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Payment Security, Authorization & Fraud Boundaries

> [!IMPORTANT]
> Day028 introduces `PaymentService` as the payment-domain service boundary for deterministic quote calculation. The HTTP adapter validates transport inputs and maps service results, while fee policy and money calculations live in a dedicated service. Customer, account, transaction and recovery behavior remain mandatory regression gates.

## Day120 Direction

The payment domain will evolve from read-only quotes into validated payment intents, authorization, idempotency, ledger posting, settlement, fraud screening, event publication, reconciliation, observability and disaster recovery.

## Current Controls

- localhost-only API
- synthetic quote inputs
- no payment execution
- integer minor-unit money
- deterministic fee calculation
- stable HTTP 400 contract

## Future Controls

OAuth2, account authorization, transaction limits, idempotency, fraud screening, velocity controls, immutable audit, tokenization, PCI segmentation, encryption and privacy-safe observability.

> [!WARNING]
> A quote response does not authorize movement of funds and must never directly mutate account balances.

---

**🏦 FinBank AI DevSecOps · Day 028 of 120**
*Quote · Validate · Calculate · Test · Recover · Evolve*
