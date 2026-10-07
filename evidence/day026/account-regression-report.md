# Day026 Account Regression Report
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
# Day025 Customer Service Validation

PASS: /customers -> HTTP 200 -> CUS-1001
[{"customerId":"CUS-1001","displayName":"Asha Rao","status":"ACTIVE"},{"customerId":"CUS-1002","displayName":"Ravi Iyer","status":"ACTIVE"}]
PASS: /customers/CUS-1001 -> HTTP 200 -> Asha Rao
{"customerId":"CUS-1001","displayName":"Asha Rao","status":"ACTIVE"}
PASS: /customers/CUS-1002 -> HTTP 200 -> Ravi Iyer
{"customerId":"CUS-1002","displayName":"Ravi Iyer","status":"ACTIVE"}
PASS: /customers/CUS-9999 -> HTTP 404 -> Customer Not Found
{"error":"Customer Not Found"}
PASS: Customer service feature tests
# Day026 Account Service Validation

PASS: /accounts -> HTTP 200 -> ACC-2001
[{"accountId":"ACC-2001","customerId":"CUS-1001","type":"SAVINGS","balanceMinor":250000,"currency":"INR","status":"ACTIVE"},{"accountId":"ACC-2002","customerId":"CUS-1002","type":"CURRENT","balanceMinor":825000,"currency":"INR","status":"ACTIVE"}]
PASS: /accounts/ACC-2001 -> HTTP 200 -> SAVINGS
{"accountId":"ACC-2001","customerId":"CUS-1001","type":"SAVINGS","balanceMinor":250000,"currency":"INR","status":"ACTIVE"}
PASS: /accounts/ACC-2002 -> HTTP 200 -> CURRENT
{"accountId":"ACC-2002","customerId":"CUS-1002","type":"CURRENT","balanceMinor":825000,"currency":"INR","status":"ACTIVE"}
PASS: /accounts/ACC-9999 -> HTTP 404 -> Account Not Found
{"error":"Account Not Found"}
PASS: Account service feature tests
