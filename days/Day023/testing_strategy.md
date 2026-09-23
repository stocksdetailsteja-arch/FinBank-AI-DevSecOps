[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Application Testing, Failure Injection & Regression

> [!NOTE]
> Day023 is the first runnable FinBank application milestone. It delivers a dependency-free Java 17 HTTP application with customer, account, transaction, payment, health, and architecture endpoints. State is intentionally in-memory for this milestone and will evolve toward database-backed Spring Boot services across later days.

## Day120 Direction

Day023 establishes business boundaries and runnable behavior. Future milestones will incrementally add persistence, Spring Boot, security, events, containers, CI/CD, Kubernetes, AWS, observability, resilience, audit, fraud intelligence, and production governance until the complete platform is ready at Day120.


## Day023 Tests

- Java compilation with warnings enabled
- Process lifecycle and readiness
- Endpoint HTTP success
- Expected JSON fields and identifiers
- Deterministic payment quote
- Localhost bind requirement
- Controlled unavailable-endpoint failure
- Secret and formatting scans

## Future Layers

Unit, controller, repository, database migration, contract, integration, event, security, performance, resilience, disaster recovery, and banking reconciliation tests will be added as the platform evolves.

---

**🏦 FinBank AI DevSecOps · Day 023 of 120**
*Model · Build · Run · Test · Secure · Evolve*
