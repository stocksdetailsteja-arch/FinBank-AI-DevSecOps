package com.finbank;
public record Money(long amountMinor, String currency) {
    public Money { if (amountMinor < 0) throw new IllegalArgumentException("amountMinor must be non-negative"); if (currency == null || currency.length() != 3) throw new IllegalArgumentException("currency must be ISO-like"); }
}
