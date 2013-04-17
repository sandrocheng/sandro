/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import com.mindmatics.mopay.android.impl.cfg.Settings;
/*     */ import com.mindmatics.mopay.android.impl.cfg.WSUrl;
/*     */ import com.mindmatics.mopay.android.impl.cfg.WsEnv;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByButtonIdReq;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByTariffKeyReq;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ import org.apache.http.util.EncodingUtils;
/*     */ 
/*     */ public class RequestCreator
/*     */ {
/*     */   public static final String BUTTONIDPARAMNAME = "buttonid";
/*     */   public static final String COUNTYPARAMNAME = "country";
/*     */   public static final String ANDROIDAPPPARAMNAME = "androidapp";
/*     */   public static final String PRODUCTNAMEPARAMNAME = "productname";
/*     */   public static final String MYIDPARAMNAME = "myid";
/*     */   public static final String BACKURLPARAMNAME = "backurl";
/*     */   public static final String SERVICENAMEPARAMNAME = "servicename";
/*     */   public static final String EXTERNALUIDPARAMNAME = "externaluid";
/*     */   public static final String MSISDNPARAMNAME = "msisdn";
/*     */   public static final String ENCODINGPARAMNAME = "encoding";
/*     */   public static final String COUNTRYPARAMNAME = "country";
/*     */   public static final String REPORTINGIDPARAMNAME = "reportingid";
/*     */   public static final String CHECKSUMENCODINGPARAMNAME = "checksumencoding";
/*     */   public static final String BACKURLTARGETPARAMNAME = "backUrlTarget";
/*     */   public static final String TOKENPARAMNAME = "token";
/*     */   public static final String REFERERHEADERNAME = "referer";
/*     */   public static final String TARIFFKEYPARAMNAME = "tariffkey";
/*     */   public static final String PROJECTIDPARAMNAME = "projectid";
/*     */   public static final String CHECKSUMENCODING = "UTF-8";
/*     */   public static final String BACKURL = "http://android.mopay.com";
/*     */   public static final String REFERER = "http://android.mopay.com";
/*     */   public static final String USERAGENT = "Mopay in Android Request Task: Android app; contains \"Android mobile phone\" to match device detection";
/*     */ 
/*     */   public static byte[] getRequestByButtonParamString(InitPaymentByButtonIdReq pInitPaymentByButtonIdReq)
/*     */   {
/*  45 */     StringBuilder sb = new StringBuilder();
/*  46 */     Map paramMap = buildByButtonParamList(pInitPaymentByButtonIdReq);
/*  47 */     for (String key : paramMap.keySet()) {
/*  48 */       if ((paramMap.get(key) != null) && (!((String)paramMap.get(key)).equals(""))) {
/*  49 */         sb.append(key);
/*  50 */         sb.append("=");
/*  51 */         sb.append((String)paramMap.get(key));
/*  52 */         sb.append("&");
/*     */       }
/*     */     }
/*  55 */     String paramString = sb.toString();
/*     */ 
/*  57 */     paramString = paramString.substring(0, paramString.length() - 1);
/*  58 */     LogUtil.logD(RequestCreator.class, paramString);
/*     */ 
/*  60 */     return EncodingUtils.getBytes(paramString, "UTF-8");
/*     */   }
/*     */ 
/*     */   public static byte[] getRequestByTariffParamString(InitPaymentByTariffKeyReq pInitPaymentByTariffKeyReq) {
/*  64 */     StringBuilder sb = new StringBuilder();
/*  65 */     Map paramMap = buildByTariffKeyParamList(pInitPaymentByTariffKeyReq);
/*  66 */     for (String key : paramMap.keySet()) {
/*  67 */       if ((paramMap.get(key) != null) && (!((String)paramMap.get(key)).equals(""))) {
/*  68 */         sb.append(key);
/*  69 */         sb.append("=");
/*  70 */         sb.append(paramMap.get(key) != null ? (String)paramMap.get(key) : "");
/*  71 */         sb.append("&");
/*     */       }
/*     */     }
/*  74 */     String paramString = sb.toString();
/*     */ 
/*  76 */     paramString.substring(0, paramString.length() - 2);
/*  77 */     return EncodingUtils.getBytes(paramString, "UTF-8");
/*     */   }
/*     */ 
/*     */   private static Map<String, String> getByTariffKeyParameterMap(InitPaymentByTariffKeyReq pInitPaymentByTariffKeyReq) {
/*  81 */     Map params = new HashMap();
/*  82 */     params.put("myid", pInitPaymentByTariffKeyReq.getMyId());
/*  83 */     params.put("backurl", "http://android.mopay.com");
/*  84 */     params.put("productname", pInitPaymentByTariffKeyReq.getProductName());
/*  85 */     params.put("servicename", pInitPaymentByTariffKeyReq.getServiceName());
/*  86 */     params.put("externaluid", pInitPaymentByTariffKeyReq.getExternalUid());
/*  87 */     params.put("msisdn", pInitPaymentByTariffKeyReq.getMsisdn());
/*  88 */     params.put("tariffkey", pInitPaymentByTariffKeyReq.getTariffKey());
/*  89 */     params.put("projectid", pInitPaymentByTariffKeyReq.getProjectId().toString());
/*  90 */     return params;
/*     */   }
/*     */ 
/*     */   private static Map<String, String> getByButtonParameterMap(InitPaymentByButtonIdReq pInitPaymentByButtonIdReq) {
/*  94 */     Map params = new HashMap();
/*  95 */     params.put("myid", pInitPaymentByButtonIdReq.getMyId());
/*  96 */     params.put("backurl", "http://android.mopay.com");
/*  97 */     params.put("productname", pInitPaymentByButtonIdReq.getProductName());
/*  98 */     params.put("servicename", pInitPaymentByButtonIdReq.getServiceName());
/*  99 */     params.put("externaluid", pInitPaymentByButtonIdReq.getExternalUid());
/* 100 */     params.put("msisdn", pInitPaymentByButtonIdReq.getMsisdn());
/* 101 */     params.put("buttonid", pInitPaymentByButtonIdReq.getButtonId());
/* 102 */     params.put("country", pInitPaymentByButtonIdReq.getCountry());
/* 103 */     return params;
/*     */   }
/*     */ 
/*     */   private static Map<String, String> buildByButtonParamList(InitPaymentByButtonIdReq pInitPaymentByButtonIdReq) {
/* 107 */     Map map = new HashMap();
/* 108 */     map.put("androidapp", Boolean.toString(true));
/* 109 */     map.put("buttonid", pInitPaymentByButtonIdReq.getButtonId());
/* 110 */     map.put("myid", pInitPaymentByButtonIdReq.getMyId());
/* 111 */     map.put("backurl", "http://android.mopay.com");
/* 112 */     map.put("productname", pInitPaymentByButtonIdReq.getProductName());
/* 113 */     map.put("servicename", pInitPaymentByButtonIdReq.getServiceName());
/* 114 */     map.put("reportingid", pInitPaymentByButtonIdReq.getReportingId() != null ? pInitPaymentByButtonIdReq.getReportingId().toString() : "");
/* 115 */     map.put("externaluid", pInitPaymentByButtonIdReq.getExternalUid());
/* 116 */     map.put("country", pInitPaymentByButtonIdReq.getCountry());
/* 117 */     map.put("msisdn", pInitPaymentByButtonIdReq.getMsisdn());
/* 118 */     map.put("encoding", "UTF-8");
/* 119 */     map.put("token", TokenUtil.generateToken(pInitPaymentByButtonIdReq, getByButtonParameterMap(pInitPaymentByButtonIdReq)));
/*     */ 
/* 121 */     if (Settings.getInstance().getWebServiceEnvironment() == WsEnv.DEV) {
/* 122 */       map.put("forceMobile", "true");
/*     */     }
/* 124 */     return map;
/*     */   }
/*     */ 
/*     */   private static Map<String, String> buildByTariffKeyParamList(InitPaymentByTariffKeyReq pInitPaymentByTariffKeyReq) {
/* 128 */     Map map = new HashMap();
/*     */ 
/* 130 */     map.put("androidapp", Boolean.toString(true));
/* 131 */     map.put("tariffkey", pInitPaymentByTariffKeyReq.getTariffKey());
/* 132 */     map.put("projectid", pInitPaymentByTariffKeyReq.getProjectId().toString());
/* 133 */     map.put("myid", pInitPaymentByTariffKeyReq.getMyId());
/* 134 */     map.put("backurl", "http://android.mopay.com");
/* 135 */     map.put("productname", pInitPaymentByTariffKeyReq.getProductName());
/* 136 */     map.put("reportingid", pInitPaymentByTariffKeyReq.getReportingId() != null ? pInitPaymentByTariffKeyReq.getReportingId().toString() : "");
/* 137 */     map.put("servicename", pInitPaymentByTariffKeyReq.getServiceName());
/* 138 */     map.put("externaluid", pInitPaymentByTariffKeyReq.getExternalUid());
/* 139 */     map.put("msisdn", pInitPaymentByTariffKeyReq.getMsisdn());
/* 140 */     map.put("encoding", "UTF-8");
/* 141 */     map.put("token", TokenUtil.generateToken(pInitPaymentByTariffKeyReq, getByTariffKeyParameterMap(pInitPaymentByTariffKeyReq)));
/* 142 */     if (Settings.getInstance().getWebServiceEnvironment() == WsEnv.DEV) {
/* 143 */       map.put("forceMobile", "true");
/*     */     }
/* 145 */     return map;
/*     */   }
/*     */ 
/*     */   public static String getRequestByButtonUrl() {
/* 149 */     return WSUrl.getButtonFormURL();
/*     */   }
/*     */ 
/*     */   public static String getRequestByTariffUrl() {
/* 153 */     return WSUrl.getButtonFormURL();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.RequestCreator
 * JD-Core Version:    0.6.2
 */