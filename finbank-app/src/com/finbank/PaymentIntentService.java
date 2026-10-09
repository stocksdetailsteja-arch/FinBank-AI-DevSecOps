package com.finbank;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

public final class PaymentIntentService {
    private final InMemoryRepository repository;
    private final List<PaymentIntent> intents = new ArrayList<>();
    private final AtomicInteger sequence = new AtomicInteger(4000);

    public PaymentIntentService(InMemoryRepository repository) {
        this.repository = Objects.requireNonNull(repository, "repository");
    }

    public synchronized PaymentIntent create(
            String sourceAccountId,
            String destinationAccountId,
            long amountMinor) {
        if (amountMinor <= 0) {
            throw new IllegalArgumentException("amountMinor must be positive");
        }
        if (sourceAccountId == null || destinationAccountId == null
                || sourceAccountId.isBlank() || destinationAccountId.isBlank()) {
            throw new IllegalArgumentException("account identifiers are required");
        }
        if (sourceAccountId.equals(destinationAccountId)) {
            throw new IllegalArgumentException("source and destination must differ");
        }
        requireAccount(sourceAccountId);
        requireAccount(destinationAccountId);
        PaymentIntent intent = new PaymentIntent(
                "PAY-" + sequence.incrementAndGet(),
                sourceAccountId,
                destinationAccountId,
                amountMinor,
                "INR",
                "CREATED");
        intents.add(intent);
        return intent;
    }

    public synchronized List<PaymentIntent> getPaymentIntents() {
        return List.copyOf(intents);
    }

    public synchronized PaymentIntent getPaymentIntentById(String intentId) {
        if (intentId == null || intentId.isBlank()) {
            return null;
        }
        return intents.stream()
                .filter(intent -> intent.intentId().equals(intentId))
                .findFirst()
                .orElse(null);
    }

    private void requireAccount(String accountId) {
        boolean exists = repository.accounts().stream()
                .anyMatch(account -> account.accountId().equals(accountId));
        if (!exists) {
            throw new IllegalArgumentException("account not found");
        }
    }
}
