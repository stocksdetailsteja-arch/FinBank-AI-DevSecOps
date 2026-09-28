# Day023 Smoke Test Report
## Health
{"status":"UP","service":"finbank-core","milestone":"Day023"}
## Architecture
{"style":"modular-core","persistence":"in-memory","roadmapTarget":"Day120","domains":["customer","account","transaction","payment"]}
## Customers
[{"customerId":"CUS-1001","displayName":"Asha Rao","status":"ACTIVE"},{"customerId":"CUS-1002","displayName":"Ravi Iyer","status":"ACTIVE"}]
## Accounts
[{"accountId":"ACC-2001","customerId":"CUS-1001","type":"SAVINGS","balanceMinor":250000,"currency":"INR","status":"ACTIVE"},{"accountId":"ACC-2002","customerId":"CUS-1002","type":"CURRENT","balanceMinor":825000,"currency":"INR","status":"ACTIVE"}]
## Transactions
[{"transactionId":"TXN-3001","accountId":"ACC-2001","type":"CREDIT","amountMinor":50000,"currency":"INR","status":"POSTED"},{"transactionId":"TXN-3002","accountId":"ACC-2002","type":"DEBIT","amountMinor":12500,"currency":"INR","status":"POSTED"}]
## Payment Quote
{"amountMinor":10000,"feeMinor":100,"currency":"INR","deterministic":true}
## Result
PASS
