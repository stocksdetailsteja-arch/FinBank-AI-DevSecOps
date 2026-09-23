package com.finbank;
import com.sun.net.httpserver.*;
import java.io.*;import java.net.*;import java.nio.charset.StandardCharsets;import java.util.*;import java.util.concurrent.Executors;
public final class FinBankApplication {
 private static final InMemoryRepository REPO=new InMemoryRepository();
 public static void main(String[] args) throws Exception {
  int port=Integer.parseInt(System.getProperty("finbank.port",System.getenv().getOrDefault("FINBANK_PORT","8080")));
  HttpServer server=HttpServer.create(new InetSocketAddress(InetAddress.getByName("127.0.0.1"),port),0);
  server.createContext("/health",x->send(x,200,"{\"status\":\"UP\",\"service\":\"finbank-core\",\"milestone\":\"Day023\"}"));
  server.createContext("/architecture",x->send(x,200,"{\"style\":\"modular-core\",\"persistence\":\"in-memory\",\"roadmapTarget\":\"Day120\",\"domains\":[\"customer\",\"account\",\"transaction\",\"payment\"]}"));
  server.createContext("/customers",x->send(x,200,Json.customers(REPO.customers())));
  server.createContext("/accounts",x->send(x,200,Json.accounts(REPO.accounts())));
  server.createContext("/transactions",x->send(x,200,Json.transactions(REPO.transactions())));
  server.createContext("/payments/quote",FinBankApplication::quote);
  server.setExecutor(Executors.newFixedThreadPool(4)); server.start(); System.out.println("FinBank Day023 listening on http://127.0.0.1:"+port);
 }
 private static void quote(HttpExchange x)throws IOException{Map<String,String>q=query(x.getRequestURI().getRawQuery());try{long a=Long.parseLong(q.getOrDefault("amountMinor","0"));if(a<=0)throw new IllegalArgumentException();long fee=Math.max(100,Math.round(a*0.005));send(x,200,"{\"amountMinor\":"+a+",\"feeMinor\":"+fee+",\"currency\":\"INR\",\"deterministic\":true}");}catch(Exception e){send(x,400,"{\"error\":\"amountMinor must be a positive integer\"}");}}
 private static Map<String,String>query(String raw){Map<String,String>m=new HashMap<>();if(raw!=null)for(String p:raw.split("&")){String[]kv=p.split("=",2);m.put(URLDecoder.decode(kv[0],StandardCharsets.UTF_8),kv.length>1?URLDecoder.decode(kv[1],StandardCharsets.UTF_8):"");}return m;}
 private static void send(HttpExchange x,int code,String body)throws IOException{byte[]b=body.getBytes(StandardCharsets.UTF_8);x.getResponseHeaders().set("Content-Type","application/json; charset=utf-8");x.sendResponseHeaders(code,b.length);try(OutputStream o=x.getResponseBody()){o.write(b);}}
}
