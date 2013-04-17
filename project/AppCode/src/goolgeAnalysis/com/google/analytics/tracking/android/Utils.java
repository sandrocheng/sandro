/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.text.TextUtils;
/*     */ import java.io.UnsupportedEncodingException;
/*     */ import java.net.URLDecoder;
/*     */ import java.util.HashMap;
/*     */ import java.util.Locale;
/*     */ import java.util.Map;
/*     */ 
/*     */ class Utils
/*     */ {
/*  20 */   private static final char[] HEXBYTES = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
/*     */ 
/*     */   public static Map<String, String> parseURLParameters(String parameterString)
/*     */   {
/*  24 */     Map parameters = new HashMap();
/*  25 */     String[] params = parameterString.split("&");
/*  26 */     for (String s : params) {
/*  27 */       String[] ss = s.split("=");
/*  28 */       if (ss.length > 1)
/*  29 */         parameters.put(ss[0], ss[1]);
/*  30 */       else if ((ss.length == 1) && (ss[0].length() != 0)) {
/*  31 */         parameters.put(ss[0], null);
/*     */       }
/*     */     }
/*  34 */     return parameters;
/*     */   }
/*     */ 
/*     */   public static double safeParseDouble(String s)
/*     */   {
/*  39 */     if (s == null)
/*  40 */       return 0.0D;
/*     */     try
/*     */     {
/*  43 */       return Double.parseDouble(s); } catch (NumberFormatException e) {
/*     */     }
/*  45 */     return 0.0D;
/*     */   }
/*     */ 
/*     */   public static long safeParseLong(String s)
/*     */   {
/*  51 */     if (s == null)
/*  52 */       return 0L;
/*     */     try
/*     */     {
/*  55 */       return Long.parseLong(s); } catch (NumberFormatException e) {
/*     */     }
/*  57 */     return 0L;
/*     */   }
/*     */ 
/*     */   public static boolean safeParseBoolean(String s)
/*     */   {
/*  63 */     return Boolean.parseBoolean(s);
/*     */   }
/*     */ 
/*     */   public static String filterCampaign(String campaign)
/*     */   {
/*  76 */     if (TextUtils.isEmpty(campaign)) {
/*  77 */       return null;
/*     */     }
/*     */ 
/*  80 */     String urlParameters = campaign;
/*  81 */     if (campaign.contains("?"))
/*     */     {
/*  83 */       urlParameters = campaign.split("[\\?]")[1];
/*     */     }
/*     */ 
/*  91 */     if (urlParameters.contains("%3D"))
/*     */       try
/*     */       {
/*  94 */         urlParameters = URLDecoder.decode(urlParameters, "UTF-8");
/*     */       } catch (UnsupportedEncodingException e) {
/*  96 */         return null;
/*     */       }
/*  98 */     else if (!urlParameters.contains("=")) {
/*  99 */       return null;
/*     */     }
/*     */ 
/* 103 */     Map paramsMap = parseURLParameters(urlParameters);
/*     */ 
/* 105 */     String[] validParameters = { "dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t" };
/*     */ 
/* 117 */     StringBuilder params = new StringBuilder();
/* 118 */     for (int i = 0; i < validParameters.length; i++) {
/* 119 */       if (!TextUtils.isEmpty((CharSequence)paramsMap.get(validParameters[i]))) {
/* 120 */         if (params.length() > 0) {
/* 121 */           params.append("&");
/*     */         }
/* 123 */         params.append(validParameters[i]).append("=").append((String)paramsMap.get(validParameters[i]));
/*     */       }
/*     */     }
/* 126 */     return params.toString();
/*     */   }
/*     */ 
/*     */   static String getLanguage(Locale locale)
/*     */   {
/* 138 */     if (locale == null) {
/* 139 */       return null;
/*     */     }
/* 141 */     if (TextUtils.isEmpty(locale.getLanguage())) {
/* 142 */       return null;
/*     */     }
/* 144 */     StringBuilder lang = new StringBuilder();
/* 145 */     lang.append(locale.getLanguage().toLowerCase());
/* 146 */     if (!TextUtils.isEmpty(locale.getCountry())) {
/* 147 */       lang.append("-").append(locale.getCountry().toLowerCase());
/*     */     }
/* 149 */     return lang.toString();
/*     */   }
/*     */ 
/*     */   static String hexEncode(byte[] bytes) {
/* 153 */     char[] out = new char[bytes.length * 2];
/* 154 */     for (int i = 0; i < bytes.length; i++) {
/* 155 */       int b = bytes[i] & 0xFF;
/* 156 */       out[(2 * i)] = HEXBYTES[(b >> 4)];
/* 157 */       out[(2 * i + 1)] = HEXBYTES[(b & 0xF)];
/*     */     }
/* 159 */     return new String(out);
/*     */   }
/*     */ 
/*     */   static int fromHexDigit(char hexDigit) {
/* 163 */     int value = hexDigit - '0';
/*     */ 
/* 166 */     if (value > 9) {
/* 167 */       value -= 7;
/*     */     }
/* 169 */     return value;
/*     */   }
/*     */ 
/*     */   static byte[] hexDecode(String s) {
/* 173 */     byte[] bytes = new byte[s.length() / 2];
/* 174 */     for (int i = 0; i < bytes.length; i++) {
/* 175 */       bytes[i] = ((byte)(fromHexDigit(s.charAt(2 * i)) << 4 | fromHexDigit(s.charAt(2 * i + 1))));
/*     */     }
/*     */ 
/* 178 */     return bytes;
/*     */   }
/*     */ 
/*     */   static String getSlottedModelField(String field, int slot) {
/* 182 */     return new StringBuilder().append(field).append("*").append(slot).toString();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.Utils
 * JD-Core Version:    0.6.2
 */