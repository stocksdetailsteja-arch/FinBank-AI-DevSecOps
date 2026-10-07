package com.finbank;

import java.util.List;
import java.util.Objects;

public final class AccountService {
    private final InMemoryRepository repository;

    public AccountService(InMemoryRepository repository) {
        this.repository = Objects.requireNonNull(repository, "repository");
    }

    public List<Account> getAccounts() {
        return repository.accounts();
    }

    public Account getAccountById(String accountId) {
        if (accountId == null || accountId.isBlank()) {
            return null;
        }
        return repository.accounts().stream()
                .filter(account -> account.accountId().equals(accountId))
                .findFirst()
                .orElse(null);
    }
}
