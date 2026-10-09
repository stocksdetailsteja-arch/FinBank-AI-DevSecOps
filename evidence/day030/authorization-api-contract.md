# Day030 Authorization API Contract
POST /payment-intents/{intentId}/authorize
CREATED -> 200 AUTHORIZED
Missing -> 404
Invalid state -> 409
