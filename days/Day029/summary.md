[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏁 Day 029 Executive Payment Intent Summary

## Executive Overview

Day029 introduces the first payment command-oriented concept into FinBank: a payment intent. The milestone adds an immutable PaymentIntent record and an in-memory PaymentIntentService that validates accounts, validates a positive amount, creates a synthetic sequential identifier, assigns CREATED state, lists intents and retrieves an intent by ID. The design deliberately stops before authorization or fund movement.

## Domain Model

PaymentIntent contains intentId, sourceAccountId, destinationAccountId, amountMinor, currency and status. Money remains integer minor units in INR. The model is immutable and suitable for the current educational modular core, while future persistence will require timestamps, versioning, idempotency, actor identity and durable state transitions.

## Service Behavior

PaymentIntentService depends on InMemoryRepository to confirm both accounts exist. Source and destination must differ. Amount must be positive. Valid creation adds a new immutable intent to an in-memory collection and returns it. Retrieval returns the matching intent or null, and list returns an immutable copy.

## API Contract

The target HTTP surface supports listing intents, retrieving PAY-4001, creating an intent with a POST request and returning HTTP 201, returning HTTP 404 for an unknown intent, and returning HTTP 400 for invalid accounts, same-account requests or invalid amounts. The package does not overwrite FinBankApplication because the working adapter must be integrated against the user's current Day028 source.

## Intent and Payment Boundary

A payment intent records a requested future action. CREATED does not mean authorized, funded, posted, completed or settled. Day029 never mutates account balances and does not create transaction or ledger records. This boundary prevents a common design mistake where an API request is treated as completed financial movement.

## Idempotency and Durability Gap

The current sequence exists only in process memory and resets after restart. The API does not yet accept an idempotency key. These are explicit production gaps. A real payment command must enforce durable uniqueness, replay-safe responses, request hashing, retention and concurrency control.

## Regression

Day023 smoke tests and Day025-Day028 domain tests remain mandatory. Day029 adds creation, get, list, missing-intent and invalid-input checks. The root test and verification scripts are extended so future changes cannot silently break prior service layers.

## Security Boundary

The application remains localhost-only and all account and payment identifiers are synthetic. Future payment intent creation requires authenticated identity, source-account authorization, beneficiary policy, limits, fraud and sanctions checks, encryption, immutable audit and privacy-safe logs.

## Recovery Integration

Day029 preserves the Day024 recovery interface. A fresh clone can bootstrap tools, compile the additional sources, run all service tests, execute validators and stop safely. Persistent payment intents will later require database migrations, encrypted backups, restore compatibility and reconciliation.

## Banking Relevance

Payment intent is a useful boundary between user request and controlled processing. It supports validation, policy evaluation, idempotency and audit before any ledger effect. Incorrect intent handling can cause duplicate payments, wrong recipients or invalid amounts, so durable controls are essential.

## Day120 Evolution

The intent service will move into Maven and Spring Boot, use Bean Validation, PostgreSQL, Flyway, durable idempotency, authorization, state-machine transitions, double-entry ledger posting, outbox events, Kafka, fraud decisions, settlement adapters, reconciliation, OAuth2, audit, containers, Kubernetes and observability.

## Operational Evidence

The package includes feature tests, evidence generation, validator gates, screenshot contracts and premium documentation. Acceptance requires fourteen Java sources after integration, HTTP 201 creation, HTTP 200 retrieval, HTTP 404 missing intent, HTTP 400 invalid request, complete regression, clean Git gates and ten screenshots.

## Production Boundary

Day029 does not reserve funds, authorize a payer, post transactions, settle funds, reverse payments or calculate final balances. Those capabilities require persistent state, transactional consistency, idempotency, ledger rules, fraud checks, event delivery and reconciliation.

## Interview Value

This milestone demonstrates command modeling, immutable intent design, state semantics, validation, HTTP 201, in-memory repository constraints, idempotency gaps, modular architecture, regression protection and recovery-aware delivery.

## Acceptance Decision

Day029 is accepted only when integration compiles, creation and lookup contracts pass, invalid cases fail safely, all previous domains remain green, evidence and screenshots are complete, the runtime is stopped, Git checks pass and the branch is pushed.

---

**🏦 FinBank AI DevSecOps · Day 029 of 120**
*Create · Identify · Validate · Test · Recover · Govern*
