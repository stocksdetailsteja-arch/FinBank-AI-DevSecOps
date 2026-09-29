[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Customer Data Security & API Boundaries

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

## Current Controls

- localhost-only runtime
- synthetic customer records
- read-only endpoint
- explicit service boundary
- deterministic not-found response
- no secrets or sensitive banking fields

## Future Controls

OAuth2 authentication, role and purpose-based authorization, field minimization, encryption, consent and retention policy, KYC integration, immutable access audit, rate limits, input validation and privacy-safe observability.

> [!WARNING]
> A successful lookup does not authorize disclosure. Future APIs must evaluate identity, purpose, role and field policy before returning customer information.

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*
