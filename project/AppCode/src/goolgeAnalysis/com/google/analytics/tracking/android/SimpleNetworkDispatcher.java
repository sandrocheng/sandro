/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.net.ConnectivityManager;
/*     */ import android.net.NetworkInfo;
/*     */ import android.os.Build;
/*     */ import android.os.Build.VERSION;
/*     */ import android.text.TextUtils;
/*     */ import java.io.IOException;
/*     */ import java.io.InputStream;
/*     */ import java.io.UnsupportedEncodingException;
/*     */ import java.net.MalformedURLException;
/*     */ import java.net.URL;
/*     */ import java.util.List;
/*     */ import java.util.Locale;
/*     */ import org.apache.http.Header;
/*     */ import org.apache.http.HttpEntity;
/*     */ import org.apache.http.HttpEntityEnclosingRequest;
/*     */ import org.apache.http.HttpHost;
/*     */ import org.apache.http.HttpResponse;
/*     */ import org.apache.http.StatusLine;
/*     */ import org.apache.http.client.ClientProtocolException;
/*     */ import org.apache.http.client.HttpClient;
/*     */ import org.apache.http.entity.StringEntity;
/*     */ import org.apache.http.message.BasicHttpEntityEnclosingRequest;
/*     */ 
/*     */ class SimpleNetworkDispatcher
/*     */   implements Dispatcher
/*     */ {
/*     */   private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)";
/*     */   private final String userAgent;
/*     */   private final HttpClientFactory httpClientFactory;
/*     */   private final Context ctx;
/*     */ 
/*     */   SimpleNetworkDispatcher(AnalyticsStore store, HttpClientFactory httpClientFactory, Context ctx)
/*     */   {
/*  48 */     this(httpClientFactory, ctx);
/*     */   }
/*     */ 
/*     */   SimpleNetworkDispatcher(HttpClientFactory httpClientFactory, Context ctx)
/*     */   {
/*  53 */     this.ctx = ctx.getApplicationContext();
/*  54 */     this.userAgent = createUserAgentString("GoogleAnalytics", "2.0", Build.VERSION.RELEASE, Utils.getLanguage(Locale.getDefault()), Build.MODEL, Build.ID);
/*     */ 
/*  62 */     this.httpClientFactory = httpClientFactory;
/*     */   }
/*     */ 
/*     */   public boolean okToDispatch()
/*     */   {
/*  67 */     ConnectivityManager cm = (ConnectivityManager)this.ctx.getSystemService("connectivity");
/*     */ 
/*  69 */     NetworkInfo network = cm.getActiveNetworkInfo();
/*     */ 
/*  74 */     if ((network == null) || (!network.isConnected())) {
/*  75 */       Log.vDebug("...no network connectivity");
/*  76 */       return false;
/*     */     }
/*  78 */     return true;
/*     */   }
/*     */ 
/*     */   public int dispatchHits(List<Hit> hits)
/*     */   {
/*  83 */     int hitsDispatched = 0;
/*     */ 
/*  85 */     int maxHits = Math.min(hits.size(), 40);
/*  86 */     for (int i = 0; i < maxHits; i++) {
/*  87 */       HttpClient client = this.httpClientFactory.newInstance();
/*  88 */       Hit hit = (Hit)hits.get(i);
/*  89 */       URL url = getUrl(hit);
/*     */ 
/*  91 */       if (url == null) {
/*  92 */         if (Log.isDebugEnabled())
/*  93 */           Log.w("No destination: discarding hit: " + hit.getHitParams());
/*     */         else {
/*  95 */           Log.w("No destination: discarding hit.");
/*     */         }
/*  97 */         hitsDispatched++;
/*     */       }
/*     */       else
/*     */       {
/* 101 */         HttpHost targetHost = new HttpHost(url.getHost(), url.getPort(), url.getProtocol());
/*     */ 
/* 103 */         String path = url.getPath();
/*     */ 
/* 111 */         String params = TextUtils.isEmpty(hit.getHitParams()) ? "" : HitBuilder.postProcessHit(hit, System.currentTimeMillis());
/*     */ 
/* 114 */         HttpEntityEnclosingRequest request = buildRequest(params, path);
/* 115 */         if (request == null) {
/* 116 */           hitsDispatched++;
/*     */         }
/*     */         else {
/* 119 */           request.addHeader("Host", targetHost.toHostString());
/* 120 */           logDebugInformation(Log.isDebugEnabled(), request);
/* 121 */           if (params.length() > 8192)
/* 122 */             Log.w("Hit too long (> 8192 bytes)--not sent");
/*     */           else {
/*     */             try
/*     */             {
/* 126 */               HttpResponse response = client.execute(targetHost, request);
/* 127 */               if (response.getStatusLine().getStatusCode() != 200) {
/* 128 */                 Log.w("Bad response: " + response.getStatusLine().getStatusCode());
/* 129 */                 return hitsDispatched;
/*     */               }
/*     */             }
/*     */             catch (ClientProtocolException e)
/*     */             {
/* 134 */               Log.w("ClientProtocolException sending hit; discarding hit...");
/*     */             } catch (IOException e) {
/* 136 */               Log.w("Exception sending hit: " + e.getClass().getSimpleName());
/* 137 */               Log.w(e.getMessage());
/* 138 */               return hitsDispatched;
/*     */             }
/*     */           }
/* 141 */           hitsDispatched++;
/*     */         }
/*     */       }
/*     */     }
/* 143 */     return hitsDispatched;
/*     */   }
/*     */ 
/*     */   private HttpEntityEnclosingRequest buildRequest(String params, String path)
/*     */   {
/* 156 */     if (TextUtils.isEmpty(params)) {
/* 157 */       Log.w("Empty hit, discarding.");
/* 158 */       return null;
/*     */     }
/* 160 */     String full = path + "?" + params;
/*     */     HttpEntityEnclosingRequest request;
/*     */     HttpEntityEnclosingRequest request;
/* 161 */     if (full.length() < 2036) {
/* 162 */       request = new BasicHttpEntityEnclosingRequest("GET", full);
/*     */     } else {
/* 164 */       request = new BasicHttpEntityEnclosingRequest("POST", path);
/*     */       try {
/* 166 */         request.setEntity(new StringEntity(params));
/*     */       }
/*     */       catch (UnsupportedEncodingException e) {
/* 169 */         Log.w("Encoding error, discarding hit");
/* 170 */         return null;
/*     */       }
/*     */     }
/* 173 */     request.addHeader("User-Agent", this.userAgent);
/* 174 */     return request;
/*     */   }
/*     */ 
/*     */   private void logDebugInformation(boolean debug, HttpEntityEnclosingRequest request)
/*     */   {
/* 184 */     if (debug) {
/* 185 */       StringBuffer httpHeaders = new StringBuffer();
/* 186 */       for (Header header : request.getAllHeaders()) {
/* 187 */         httpHeaders.append(header.toString()).append("\n");
/*     */       }
/* 189 */       httpHeaders.append(request.getRequestLine().toString()).append("\n");
/* 190 */       if (request.getEntity() != null) {
/*     */         try {
/* 192 */           InputStream is = request.getEntity().getContent();
/* 193 */           if (is != null) {
/* 194 */             int avail = is.available();
/* 195 */             if (avail > 0) {
/* 196 */               byte[] b = new byte[avail];
/* 197 */               is.read(b);
/* 198 */               httpHeaders.append("POST:\n");
/* 199 */               httpHeaders.append(new String(b)).append("\n");
/*     */             }
/*     */           }
/*     */         } catch (IOException e) {
/* 203 */           Log.w("Error Writing hit to log...");
/*     */         }
/*     */       }
/* 206 */       Log.i(httpHeaders.toString());
/*     */     }
/*     */   }
/*     */ 
/*     */   String createUserAgentString(String product, String version, String release, String language, String model, String id)
/*     */   {
/* 217 */     return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { product, version, release, language, model, id });
/*     */   }
/*     */ 
/*     */   private URL getUrl(Hit hit)
/*     */   {
/* 226 */     if (TextUtils.isEmpty(hit.getHitUrl()))
/* 227 */       return null;
/*     */     try
/*     */     {
/* 230 */       return new URL(hit.getHitUrl());
/*     */     } catch (MalformedURLException e) {
/*     */       try {
/* 233 */         return new URL("http://www.google-analytics.com/collect"); } catch (MalformedURLException e1) {  }
/*     */     }
/* 235 */     return null;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.SimpleNetworkDispatcher
 * JD-Core Version:    0.6.2
 */