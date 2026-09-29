[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏦 Customer Domain Relevance & Banking Controls

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

| Customer Capability | Banking Control |
|---|---|
| stable identity | prevent account mis-association |
| active status | enforce servicing eligibility |
| lookup result | distinguish absence from server failure |
| response fields | minimize personal-data exposure |
| access event | preserve attributable audit evidence |
| KYC status | support onboarding and regulatory workflows |
| lifecycle state | govern activation, restriction and closure |

## Day025 Boundary

The milestone exposes only synthetic identifier, display name and status. Real customer data, KYC, addresses, contacts, documents and credentials are outside the Day025 scope.

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*
