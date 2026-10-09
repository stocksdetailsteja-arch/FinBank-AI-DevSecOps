# Day030 Authorization Architecture Review
HTTP Adapter -> PaymentAuthorizationService -> PaymentIntentService
Production gaps: persistent state, actor, ownership, limits, fraud, sanctions, optimistic locking, audit and ledger command.
