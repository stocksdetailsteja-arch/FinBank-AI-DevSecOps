# Day028 Payment API Contract
GET /payments/quote?amountMinor={value}
Positive integer -> 200 quote
Zero, negative or invalid -> 400
Currency -> INR
