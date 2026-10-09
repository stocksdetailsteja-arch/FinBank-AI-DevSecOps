# Day029 Payment Intent Architecture Review
HTTP Adapter -> PaymentIntentService -> account validation and in-memory intent store
Production gaps: durable ID, idempotency, authorization, persistence, ledger, events, fraud, settlement and reconciliation.
