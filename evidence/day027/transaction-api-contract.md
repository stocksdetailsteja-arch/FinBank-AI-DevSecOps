# Day027 Transaction API Contract
GET /transactions -> 200 collection
GET /transactions/{transactionId} -> 200 transaction
Unknown transaction -> 404
Error body -> Transaction Not Found
