package com.finbank;

import java.util.List;
import java.util.Objects;

public final class CustomerService {

    private final InMemoryRepository repository;

    public CustomerService(InMemoryRepository repository) {
        this.repository = Objects.requireNonNull(
                repository,
                "repository");
    }

    public List<Customer> getCustomers() {
        return repository.customers();
    }

    public Customer getCustomerById(String customerId) {

        if (customerId == null || customerId.isBlank()) {
            return null;
        }

        return repository.customers()
                .stream()
                .filter(customer ->
                        customer.customerId()
                                .equals(customerId))
                .findFirst()
                .orElse(null);
    }
}
