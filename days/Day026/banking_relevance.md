[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏦 Account Domain Relevance & Financial Integrity

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

| Capability | Banking Control |
|---|---|
| stable account ID | prevent record confusion |
| customer association | enforce ownership and servicing rules |
| account type | apply product-specific controls |
| status | restrict inactive or blocked accounts |
| balance representation | avoid rounding ambiguity |
| lookup audit | prove access and purpose |
| ledger integration | establish financial truth |

Day026 exposes synthetic account identity, type, balance and status only. Real account numbers, customer PII, credentials and production balances remain outside scope.

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*
