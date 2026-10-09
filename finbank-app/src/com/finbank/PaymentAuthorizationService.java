package com.finbank;

import java.util.Objects;

public final class PaymentAuthorizationService {
    private final PaymentIntentService paymentIntentService;

    public PaymentAuthorizationService(PaymentIntentService paymentIntentService) {
        this.paymentIntentService = Objects.requireNonNull(
                paymentIntentService,
                "paymentIntentService");
    }

    public synchronized PaymentIntent authorize(String intentId) {
        PaymentIntent current = paymentIntentService.getPaymentIntentById(intentId);
        if (current == null) {
            return null;
        }
        if (!"CREATED".equals(current.status())) {
            throw new IllegalStateException("payment intent must be CREATED");
        }
        PaymentIntent authorized = new PaymentIntent(
                current.intentId(),
                current.sourceAccountId(),
                current.destinationAccountId(),
                current.amountMinor(),
                current.currency(),
                "AUTHORIZED");
        paymentIntentService.replace(authorized);
        return authorized;
    }
}
