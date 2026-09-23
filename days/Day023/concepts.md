[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 FinBank Domain & Service Architecture Concepts

> [!NOTE]
> Day023 is the first runnable FinBank application milestone. It delivers a dependency-free Java 17 HTTP application with customer, account, transaction, payment, health, and architecture endpoints. State is intentionally in-memory for this milestone and will evolve toward database-backed Spring Boot services across later days.

## Day120 Direction

Day023 establishes business boundaries and runnable behavior. Future milestones will incrementally add persistence, Spring Boot, security, events, containers, CI/CD, Kubernetes, AWS, observability, resilience, audit, fraud intelligence, and production governance until the complete platform is ready at Day120.


## Bounded Contexts

| Domain | Responsibility | Future Evolution |
|---|---|---|
| customer | identity and customer profile | verified onboarding and KYC integration |
| account | account state and balances | PostgreSQL ledger-backed persistence |
| transaction | financial movement history | double-entry and event publication |
| payment | payment intent and fees | idempotency and orchestration |
| audit | attributable event history | immutable audit pipeline |
| fraud | risk scoring and controls | AI-assisted detection with human governance |

## Architecture Choice

Day023 uses a modular Java application so the business boundaries are runnable immediately without introducing external build dependencies. The package structure separates model, repository, service, HTTP, and utility concerns. Later days can move boundaries into independent Spring Boot services without discarding domain lessons.

## Data Lifecycle

Synthetic seed data is loaded at startup, exposed through read-only APIs, and discarded on shutdown. This keeps the first milestone safe and reproducible. Persistence, migrations, transaction isolation, encryption, backup, and recovery belong to planned later milestones.

## Banking Invariants

- Money uses integer minor units rather than floating point.
- Currency is explicit.
- Account identifiers and transaction identifiers are stable.
- Payment quotes are deterministic.
- No real customer or banking data is included.
- Mutation endpoints are deferred until validation, idempotency, persistence, and audit controls are introduced.

## Day120 Evolution Path

```mermaid
flowchart LR
 D23[Runnable Core] --> API[Spring Boot APIs]
 API --> DB[PostgreSQL and Migrations]
 DB --> EVT[Kafka Events]
 EVT --> SEC[Security and Audit]
 SEC --> CONT[Containers and Kubernetes]
 CONT --> AWS[AWS Platform]
 AWS --> OBS[Observability and Resilience]
 OBS --> AI[Fraud and AI Controls]
 AI --> D120[Production-Style FinBank Platform]
```

---

**🏦 FinBank AI DevSecOps · Day 023 of 120**
*Model · Build · Run · Test · Secure · Evolve*
