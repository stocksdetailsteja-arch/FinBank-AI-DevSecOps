package com.finbank;
import java.util.*;
public final class Json {
 private Json(){}
 static String q(String s){return String.valueOf((char)34)+s+String.valueOf((char)34);}
 public static String customers(List<Customer> xs){return xs.stream().map(x->"{\"customerId\":"+q(x.customerId())+",\"displayName\":"+q(x.displayName())+",\"status\":"+q(x.status())+"}").collect(java.util.stream.Collectors.joining(",","[","]"));}
 public static String accounts(List<Account> xs){return xs.stream().map(x->"{\"accountId\":"+q(x.accountId())+",\"customerId\":"+q(x.customerId())+",\"type\":"+q(x.type())+",\"balanceMinor\":"+x.balance().amountMinor()+",\"currency\":"+q(x.balance().currency())+",\"status\":"+q(x.status())+"}").collect(java.util.stream.Collectors.joining(",","[","]"));}
 public static String transactions(List<Transaction> xs){return xs.stream().map(x->"{\"transactionId\":"+q(x.transactionId())+",\"accountId\":"+q(x.accountId())+",\"type\":"+q(x.type())+",\"amountMinor\":"+x.amount().amountMinor()+",\"currency\":"+q(x.amount().currency())+",\"status\":"+q(x.status())+"}").collect(java.util.stream.Collectors.joining(",","[","]"));}
}
