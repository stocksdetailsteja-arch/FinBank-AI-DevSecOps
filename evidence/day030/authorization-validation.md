# Day030 Payment Authorization Validation

PASS: Payment intent creation -> HTTP 201 -> PAY-4006
{"intentId":"PAY-4006","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"CREATED"}
PASS: PAY-4006 authorization -> HTTP 200 -> AUTHORIZED
{"intentId":"PAY-4006","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"AUTHORIZED"}
PASS: GET PAY-4006 -> HTTP 200 -> AUTHORIZED
{"intentId":"PAY-4006","sourceAccountId":"ACC-2001","destinationAccountId":"ACC-2002","amountMinor":10000,"currency":"INR","status":"AUTHORIZED"}
PASS: duplicate authorization -> HTTP 409
{"error":"payment intent must be CREATED"}
PASS: missing intent authorization -> HTTP 404
{"error":"Payment Intent Not Found"}
PASS: Payment authorization feature tests
