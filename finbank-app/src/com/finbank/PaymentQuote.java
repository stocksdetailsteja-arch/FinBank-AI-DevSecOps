package com.finbank;

public record PaymentQuote(
        long amountMinor,
        long feeMinor,
        String currency,
        boolean deterministic) {
}
