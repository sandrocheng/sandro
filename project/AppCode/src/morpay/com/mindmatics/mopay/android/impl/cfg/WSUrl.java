/*     */ package com.mindmatics.mopay.android.impl.cfg;
/*     */ 
/*     */ import java.util.Collections;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ import org.apache.http.params.BasicHttpParams;
/*     */ import org.apache.http.params.HttpConnectionParams;
/*     */ import org.apache.http.params.HttpParams;
/*     */ 
/*     */ public class WSUrl
/*     */ {
/*     */   private static final String WS_PATH = "/mopayandroid-ws/ws";
/*     */   private static final String BUTTON_PATH = "/button/start.action";
/*     */   private static final String URL_BASE_ANDROID_LOCAL = "http://10.0.2.2:8780/mopayandroid-ws/ws";
/*     */   private static final String URL_BASE_LOCALHOST = "http://10.0.2.2:8780/mopayandroid-ws/ws";
/*     */   private static final String URL_BASE_DEV = "http://faultier:8780/mopayandroid-ws/ws";
/*     */   private static final String URL_BASE_INT = "https://api-int.mopay.com/mopayandroid-ws/ws";
/*     */   private static final String URL_BASE_STAG = "https://api-staging.mopay.com/mopayandroid-ws/ws";
/*     */   private static final String URL_BASE_PROD = "https://api.mopay.com/mopayandroid-ws/ws";
/*     */   private static final String FORM_BASE_ANDROID_LOCAL = "http://10.0.2.2:8780/mopay30/button/start.action";
/*     */   private static final String FORM_BASE_LOCALHOST = "http://127.0.0.1:8780/mopay30/button/start.action";
/*     */   private static final String FORM_BASE_DEV = "http://faultier:8780/mopay30/button/start.action";
/*     */   private static final String FORM_BASE_INT = "https://mopay-1/onetime/button/start.action";
/*     */   private static final String FORM_BASE_STAG = "https://securepay-staging.mopay.com/onetime/button/start.action";
/*     */   private static final String FORM_BASE_PROD = "https://securepay.mopay.com/onetime/button/start.action";
/*     */   private static final Map<WsEnv, String> WS_URLS;
/*  64 */   private static final Map<WsEnv, String> BUTTON_URLS = Collections.unmodifiableMap(buttonUrls);
/*     */ 
/*     */   public static String getWebServiceBaseURL()
/*     */   {
/*  72 */     String url = (String)WS_URLS.get(Settings.getInstance().getWebServiceEnvironment());
/*  73 */     if (url == null) {
/*  74 */       throw new IllegalStateException("Missing web service url for env '" + Settings.getInstance().getWebServiceEnvironment() + "'.");
/*     */     }
/*  76 */     return url;
/*     */   }
/*     */ 
/*     */   public static String getButtonFormURL()
/*     */   {
/*  82 */     String url = (String)BUTTON_URLS.get(Settings.getInstance().getWebServiceEnvironment());
/*  83 */     if (url == null) {
/*  84 */       throw new IllegalStateException("Missing button form url for env '" + Settings.getInstance().getWebServiceEnvironment() + "'.");
/*     */     }
/*  86 */     return url;
/*     */   }
/*     */ 
/*     */   public static HttpParams getHttpParamsWSDefault()
/*     */   {
/*  95 */     HttpParams httpParameters = new BasicHttpParams();
/*     */ 
/*  97 */     HttpConnectionParams.setConnectionTimeout(httpParameters, 30000);
/*     */ 
/* 100 */     HttpConnectionParams.setSoTimeout(httpParameters, 30000);
/*     */ 
/* 102 */     return httpParameters;
/*     */   }
/*     */ 
/*     */   static
/*     */   {
/*  46 */     Map wsUrls = new HashMap();
/*  47 */     wsUrls.put(WsEnv.ANDROID_LOCAL, "http://10.0.2.2:8780/mopayandroid-ws/ws");
/*  48 */     wsUrls.put(WsEnv.LOCALHOST, "http://10.0.2.2:8780/mopayandroid-ws/ws");
/*  49 */     wsUrls.put(WsEnv.DEV, "http://faultier:8780/mopayandroid-ws/ws");
/*  50 */     wsUrls.put(WsEnv.INT, "https://api-int.mopay.com/mopayandroid-ws/ws");
/*  51 */     wsUrls.put(WsEnv.STAG, "https://api-staging.mopay.com/mopayandroid-ws/ws");
/*  52 */     wsUrls.put(WsEnv.PROD, "https://api.mopay.com/mopayandroid-ws/ws");
/*     */ 
/*  54 */     WS_URLS = Collections.unmodifiableMap(wsUrls);
/*     */ 
/*  57 */     Map buttonUrls = new HashMap();
/*  58 */     buttonUrls.put(WsEnv.ANDROID_LOCAL, "http://10.0.2.2:8780/mopay30/button/start.action");
/*  59 */     buttonUrls.put(WsEnv.LOCALHOST, "http://127.0.0.1:8780/mopay30/button/start.action");
/*  60 */     buttonUrls.put(WsEnv.DEV, "http://faultier:8780/mopay30/button/start.action");
/*  61 */     buttonUrls.put(WsEnv.INT, "https://mopay-1/onetime/button/start.action");
/*  62 */     buttonUrls.put(WsEnv.STAG, "https://securepay-staging.mopay.com/onetime/button/start.action");
/*  63 */     buttonUrls.put(WsEnv.PROD, "https://securepay.mopay.com/onetime/button/start.action");
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.cfg.WSUrl
 * JD-Core Version:    0.6.2
 */