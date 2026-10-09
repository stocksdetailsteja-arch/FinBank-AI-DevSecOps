# Day029 Payment Intent Regression Report
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
# Day027 Transaction Service Validation

PASS: /transactions -> HTTP 200 -> TXN-3001
[{"transactionId":"TXN-3001","accountId":"ACC-2001","type":"CREDIT","amountMinor":50000,"currency":"INR","status":"POSTED"},{"transactionId":"TXN-3002","accountId":"ACC-2002","type":"DEBIT","amountMinor":12500,"currency":"INR","status":"POSTED"}]
PASS: /transactions/TXN-3001 -> HTTP 200 -> CREDIT
{"transactionId":"TXN-3001","accountId":"ACC-2001","type":"CREDIT","amountMinor":50000,"currency":"INR","status":"POSTED"}
PASS: /transactions/TXN-3002 -> HTTP 200 -> DEBIT
{"transactionId":"TXN-3002","accountId":"ACC-2002","type":"DEBIT","amountMinor":12500,"currency":"INR","status":"POSTED"}
PASS: /transactions/TXN-9999 -> HTTP 404 -> Transaction Not Found
{"error":"Transaction Not Found"}
PASS: Transaction service feature tests
# Day028 Payment Service Validation

PASS: amountMinor=10000 -> HTTP 200 -> "feeMinor":100
{"amountMinor":10000,"feeMinor":100,"currency":"INR","deterministic":true}
PASS: amountMinor=1 -> HTTP 200 -> "feeMinor":100
{"amountMinor":1,"feeMinor":100,"currency":"INR","deterministic":true}
PASS: amountMinor=100000 -> HTTP 200 -> "feeMinor":500
{"amountMinor":100000,"feeMinor":500,"currency":"INR","deterministic":true}
PASS: amountMinor=0 -> HTTP 400 -> positive integer
{"error":"amountMinor must be a positive integer"}
PASS: amountMinor=invalid -> HTTP 400 -> positive integer
{"error":"amountMinor must be a positive integer"}
PASS: Payment service feature tests
# Day029 Payment Intent Validation

PASS: POST /payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2002&amountMinor=10000 -> HTTP 201 -> "status":"CREATED"
{"intentId":"PAY-4002","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"CREATED"}
PASS: GET /payment-intents/PAY-4001 -> HTTP 200 -> PAY-4001
{"intentId":"PAY-4001","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"CREATED"}
PASS: GET /payment-intents -> HTTP 200 -> PAY-4001
[{"intentId":"PAY-4001","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"CREATED"},{"intentId":"PAY-4002","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"CREATED"}]
PASS: GET /payment-intents/PAY-9999 -> HTTP 404 -> Payment Intent Not Found
{"error":"Payment Intent Not Found"}
PASS: POST /payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2001&amountMinor=10000 -> HTTP 400 -> source and destination must differ
{"error":"source and destination must differ"}
PASS: Payment intent feature tests
