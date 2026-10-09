package com.finbank;

public record PaymentIntent(
        String intentId,
        String sourceAccountId,
        String destinationAccountId,
        long amountMinor,
        String currency,
        String status) {
}
