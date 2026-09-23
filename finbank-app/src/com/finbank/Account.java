package com.finbank;
public record Account(String accountId, String customerId, String type, Money balance, String status) {}
