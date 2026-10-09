package com.finbank;
import com.sun.net.httpserver.*;
import java.io.*;import java.net.*;import java.nio.charset.StandardCharsets;import java.util.*;import java.util.concurrent.Executors;
public final class FinBankApplication {
 private static final InMemoryRepository REPO =
    new InMemoryRepository();

 private static final CustomerService CUSTOMER_SERVICE =
    new CustomerService(REPO);

 private static final AccountService ACCOUNT_SERVICE =
    new AccountService(REPO);

 private static final TransactionService TRANSACTION_SERVICE =
    new TransactionService(REPO);

 private static final PaymentService PAYMENT_SERVICE =
    new PaymentService();

 private static final PaymentIntentService PAYMENT_INTENT_SERVICE =
    new PaymentIntentService(REPO);

 public static void main(String[] args) throws Exception {
  int port=Integer.parseInt(System.getProperty("finbank.port",System.getenv().getOrDefault("FINBANK_PORT","8080")));
  HttpServer server=HttpServer.create(new InetSocketAddress(InetAddress.getByName("127.0.0.1"),port),0);
  server.createContext("/health",x->send(x,200,"{\"status\":\"UP\",\"service\":\"finbank-core\",\"milestone\":\"Day023\"}"));
  server.createContext("/architecture",x->send(x,200,"{\"style\":\"modular-core\",\"persistence\":\"in-memory\",\"roadmapTarget\":\"Day120\",\"domains\":[\"customer\",\"account\",\"transaction\",\"payment\"]}"));
  server.createContext("/customers",
    FinBankApplication::customers);
  server.createContext("/accounts",FinBankApplication::accounts);
  server.createContext("/transactions",FinBankApplication::transactions);
  server.createContext("/payments/quote",FinBankApplication::quote);
  server.createContext("/payment-intents",
    FinBankApplication::paymentIntents);
  server.setExecutor(Executors.newFixedThreadPool(4)); server.start(); System.out.println("FinBank Day023 listening on http://127.0.0.1:"+port);
 }
 private static void quote(HttpExchange exchange)
        throws IOException {

    Map<String, String> query =
            query(exchange.getRequestURI().getRawQuery());

    try {

        long amountMinor =
                Long.parseLong(
                        query.getOrDefault(
                                "amountMinor",
                                "0"));

        PaymentQuote quote =
                PAYMENT_SERVICE.quote(
                        amountMinor);

        send(exchange,
                200,
                "{\"amountMinor\":"
                        + quote.amountMinor()
                        + ",\"feeMinor\":"
                        + quote.feeMinor()
                        + ",\"currency\":\""
                        + quote.currency()
                        + "\",\"deterministic\":"
                        + quote.deterministic()
                        + "}");

    } catch (Exception ex) {

        send(exchange,
                400,
                "{\"error\":\"amountMinor must be a positive integer\"}");
    }
}
 private static Map<String,String>query(String raw){Map<String,String>m=new HashMap<>();if(raw!=null)for(String p:raw.split("&")){String[]kv=p.split("=",2);m.put(URLDecoder.decode(kv[0],StandardCharsets.UTF_8),kv.length>1?URLDecoder.decode(kv[1],StandardCharsets.UTF_8):"");}return m;}
 private static void send(HttpExchange x,int code,String body)throws IOException{byte[]b=body.getBytes(StandardCharsets.UTF_8);x.getResponseHeaders().set("Content-Type","application/json; charset=utf-8");x.sendResponseHeaders(code,b.length);try(OutputStream o=x.getResponseBody()){o.write(b);}}
 private static void customers(HttpExchange exchange)
        throws IOException {

    String path = exchange.getRequestURI().getPath();

    if ("/customers".equals(path)) {
        send(exchange, 200,
                Json.customers(
                        CUSTOMER_SERVICE.getCustomers()));
        return;
    }

    String[] segments = path.split("/");

    if (segments.length == 3) {

        Customer customer =
                CUSTOMER_SERVICE.getCustomerById(
                        segments[2]);

        if (customer == null) {
            send(exchange, 404,
                    "{\"error\":\"Customer Not Found\"}");
            return;
        }

        send(exchange, 200,
                "{\"customerId\":\""
                        + customer.customerId()
                        + "\",\"displayName\":\""
                        + customer.displayName()
                        + "\",\"status\":\""
                        + customer.status()
                        + "\"}");

        return;
    }

    send(exchange,404,
            "{\"error\":\"Customer Not Found\"}");
}
private static void accounts(HttpExchange exchange)
        throws IOException {

    String path = exchange.getRequestURI().getPath();

    if ("/accounts".equals(path)) {

        send(exchange, 200,
                Json.accounts(
                        ACCOUNT_SERVICE.getAccounts()));

        return;
    }

    String[] segments = path.split("/");

    if (segments.length == 3) {

        Account account =
                ACCOUNT_SERVICE.getAccountById(
                        segments[2]);

        if (account == null) {

            send(exchange, 404,
                    "{\"error\":\"Account Not Found\"}");

            return;
        }

        send(exchange, 200,
                "{\"accountId\":\""
                        + account.accountId()
                        + "\",\"customerId\":\""
                        + account.customerId()
                        + "\",\"type\":\""
                        + account.type()
                        + "\",\"balanceMinor\":"
                        + account.balance().amountMinor()
                        + ",\"currency\":\""
                        + account.balance().currency()
                        + "\",\"status\":\""
                        + account.status()
                        + "\"}");

        return;
    }

    send(exchange,
            404,
            "{\"error\":\"Account Not Found\"}");
}
private static void transactions(HttpExchange exchange)
        throws IOException {

    String path = exchange.getRequestURI().getPath();

    if ("/transactions".equals(path)) {

        send(exchange, 200,
                Json.transactions(
                        TRANSACTION_SERVICE.getTransactions()));

        return;
    }

    String[] segments = path.split("/");

    if (segments.length == 3) {

        Transaction transaction =
                TRANSACTION_SERVICE.getTransactionById(
                        segments[2]);

        if (transaction == null) {

            send(exchange, 404,
                    "{\"error\":\"Transaction Not Found\"}");

            return;
        }

        send(exchange, 200,
                "{\"transactionId\":\""
                        + transaction.transactionId()
                        + "\",\"accountId\":\""
                        + transaction.accountId()
                        + "\",\"type\":\""
                        + transaction.type()
                        + "\",\"amountMinor\":"
                        + transaction.amount().amountMinor()
                        + ",\"currency\":\""
                        + transaction.amount().currency()
                        + "\",\"status\":\""
                        + transaction.status()
                        + "\"}");

        return;
    }

    send(exchange,
            404,
            "{\"error\":\"Transaction Not Found\"}");
}
private static void paymentIntents(HttpExchange exchange)
        throws IOException {

    String method = exchange.getRequestMethod();
    String path = exchange.getRequestURI().getPath();

    if ("GET".equals(method)
            && "/payment-intents".equals(path)) {

        send(exchange,
                200,
                paymentIntentsJson(
                        PAYMENT_INTENT_SERVICE
                                .getPaymentIntents()));

        return;
    }

    if ("POST".equals(method)
            && "/payment-intents".equals(path)) {

        Map<String, String> values =
                query(exchange.getRequestURI()
                        .getRawQuery());

        try {

            String sourceAccountId =
                    values.get("sourceAccountId");

            String destinationAccountId =
                    values.get("destinationAccountId");

            long amountMinor =
                    Long.parseLong(
                            values.getOrDefault(
                                    "amountMinor",
                                    "0"));

            PaymentIntent intent =
                    PAYMENT_INTENT_SERVICE.create(
                            sourceAccountId,
                            destinationAccountId,
                            amountMinor);

            send(exchange,
                    201,
                    paymentIntentJson(intent));

        } catch (Exception exception) {

            String message =
                    exception.getMessage() == null
                            ? "Invalid payment intent request"
                            : exception.getMessage();

            send(exchange,
                    400,
                    "{\"error\":\""
                            + message
                            + "\"}");
        }

        return;
    }

    String prefix = "/payment-intents/";

    if ("GET".equals(method)
            && path.startsWith(prefix)
            && path.length() > prefix.length()
            && path.indexOf('/',
                    prefix.length()) < 0) {

        String intentId =
                path.substring(prefix.length());

        PaymentIntent intent =
                PAYMENT_INTENT_SERVICE
                        .getPaymentIntentById(
                                intentId);

        if (intent == null) {

            send(exchange,
                    404,
                    "{\"error\":\"Payment Intent Not Found\"}");

            return;
        }

        send(exchange,
                200,
                paymentIntentJson(intent));

        return;
    }

    send(exchange,
            404,
            "{\"error\":\"Payment Intent Not Found\"}");
}

private static String paymentIntentJson(
        PaymentIntent intent) {

    return "{\"intentId\":\""
            + intent.intentId()
            + "\",\"sourceAccountId\":\""
            + intent.sourceAccountId()
            + "\",\"destinationAccountId\":\""
            + intent.destinationAccountId()
            + "\",\"amountMinor\":"
            + intent.amountMinor()
            + ",\"currency\":\""
            + intent.currency()
            + "\",\"status\":\""
            + intent.status()
            + "\"}";
}

private static String paymentIntentsJson(
        List<PaymentIntent> intents) {

    StringBuilder json =
            new StringBuilder("[");

    for (int index = 0;
            index < intents.size();
            index++) {

        if (index > 0) {
            json.append(",");
        }

        json.append(
                paymentIntentJson(
                        intents.get(index)));
    }

    return json.append("]").toString();
}
}
