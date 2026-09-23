package com.finbank;
import java.util.List;
public final class InMemoryRepository {
    private final List<Customer> customers = List.of(new Customer("CUS-1001","Asha Rao","ACTIVE"),new Customer("CUS-1002","Ravi Iyer","ACTIVE"));
    private final List<Account> accounts = List.of(new Account("ACC-2001","CUS-1001","SAVINGS",new Money(250000,"INR"),"ACTIVE"),new Account("ACC-2002","CUS-1002","CURRENT",new Money(825000,"INR"),"ACTIVE"));
    private final List<Transaction> transactions = List.of(new Transaction("TXN-3001","ACC-2001","CREDIT",new Money(50000,"INR"),"POSTED"),new Transaction("TXN-3002","ACC-2002","DEBIT",new Money(12500,"INR"),"POSTED"));
    public List<Customer> customers(){ return customers; }
    public List<Account> accounts(){ return accounts; }
    public List<Transaction> transactions(){ return transactions; }
}
