[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Account Data Security & Authorization Boundaries

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

## Current Controls

- localhost-only serving
- synthetic records
- read-only APIs
- explicit account service boundary
- stable not-found response
- no secrets or real financial information

## Future Controls

OAuth2, customer ownership validation, staff role policy, field minimization, encryption, audit events, rate limits, fraud controls, purpose limitation and privacy-safe logs.

> [!WARNING]
> Knowing an account ID must never be sufficient authorization to view account details.

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*
