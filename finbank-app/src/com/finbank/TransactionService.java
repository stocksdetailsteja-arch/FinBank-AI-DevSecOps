package com.finbank;

import java.util.List;
import java.util.Objects;

public final class TransactionService {
    private final InMemoryRepository repository;

    public TransactionService(InMemoryRepository repository) {
        this.repository = Objects.requireNonNull(repository, "repository");
    }

    public List<Transaction> getTransactions() {
        return repository.transactions();
    }

    public Transaction getTransactionById(String transactionId) {
        if (transactionId == null || transactionId.isBlank()) {
            return null;
        }
        return repository.transactions().stream()
                .filter(transaction -> transaction.transactionId().equals(transactionId))
                .findFirst()
                .orElse(null);
    }
}
