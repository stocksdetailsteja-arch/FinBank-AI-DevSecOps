[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 027 Completed Transaction Engineering Notes

> [!NOTE]
> Day027 extends the same recoverable FinBank application with a dedicated transaction layer.

## Session Context

| Field | Completed Value |
|---|---|
| Branch | `day-027-transaction-service-foundation` |
| Runtime | Java 21 localhost HTTP |
| New source | `TransactionService.java` |
| Expected source count | 10 |
| Data | synthetic in-memory transactions |

## Expected Transactions

| Transaction | Account | Type | Amount Minor | Currency | Status |
|---|---|---|---:|---|---|
| TXN-3001 | ACC-2001 | CREDIT | 50000 | INR | POSTED |
| TXN-3002 | ACC-2002 | DEBIT | 12500 | INR | POSTED |

## Evidence

- `transaction-service-validation.md`
- `transaction-api-contract.md`
- `transaction-regression-report.md`
- `transaction-architecture-review.md`

## Lessons

Transaction lookup must remain distinct from future transaction creation and ledger posting. Read models can be simple while command and accounting models require stricter invariants.

---

**🏦 FinBank AI DevSecOps · Day 027 of 120**
*Trace · Validate · Serve · Test · Recover · Evolve*
