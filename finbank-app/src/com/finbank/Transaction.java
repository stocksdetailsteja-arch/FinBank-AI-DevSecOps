package com.finbank;
public record Transaction(String transactionId, String accountId, String type, Money amount, String status) {}
