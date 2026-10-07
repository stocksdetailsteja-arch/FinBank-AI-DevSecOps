[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Account API, Money & Regression Testing

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

## Positive

- collection contains ACC-2001 and ACC-2002
- ACC-2001 returns SAVINGS and 250000 INR
- ACC-2002 returns CURRENT and 825000 INR
- known accounts return HTTP 200

## Negative

- ACC-9999 returns HTTP 404
- response contains Account Not Found
- unavailable server returns exit code 69
- malformed account path returns 404

## Regression

Day023 smoke tests, Day025 customer tests and Day024 recovery verification must remain green.

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*
