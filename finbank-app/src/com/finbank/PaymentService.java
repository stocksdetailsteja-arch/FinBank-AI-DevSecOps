package com.finbank;

public final class PaymentService {

    private static final long MINIMUM_FEE_MINOR = 100;
    private static final double FEE_RATE = 0.005;

    public PaymentQuote quote(long amountMinor) {

        if (amountMinor <= 0) {
            throw new IllegalArgumentException(
                    "amountMinor must be positive");
        }

        long percentageFee =
                Math.round(amountMinor * FEE_RATE);

        long feeMinor =
                Math.max(MINIMUM_FEE_MINOR,
                        percentageFee);

        return new PaymentQuote(
                amountMinor,
                feeMinor,
                "INR",
                true);
    }
}
