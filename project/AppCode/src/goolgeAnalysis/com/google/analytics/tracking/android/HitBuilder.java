/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import java.io.UnsupportedEncodingException;
/*    */ import java.net.URLEncoder;
/*    */ import java.util.HashMap;
/*    */ import java.util.Map;
/*    */ import java.util.Map.Entry;
/*    */ 
/*    */ class HitBuilder
/*    */ {
/*    */   static Map<String, String> generateHitParams(MetaModel metaModel, Map<String, String> hit)
/*    */   {
/* 25 */     Map params = new HashMap();
/* 26 */     for (Map.Entry entry : hit.entrySet()) {
/* 27 */       MetaModel.MetaInfo metaInfo = metaModel.getMetaInfo((String)entry.getKey());
/* 28 */       if (metaInfo != null)
/*    */       {
/* 31 */         String urlParam = metaInfo.getUrlParam((String)entry.getKey());
/* 32 */         if (urlParam != null)
/*    */         {
/* 38 */           String value = (String)entry.getValue();
/* 39 */           if (metaInfo.getFormatter() != null) {
/* 40 */             value = metaInfo.getFormatter().format(value);
/*    */           }
/* 42 */           if ((value != null) && (!value.equals(metaInfo.getDefaultValue())))
/*    */           {
/* 45 */             params.put(urlParam, value);
/*    */           }
/*    */         }
/*    */       }
/*    */     }
/* 47 */     return params;
/*    */   }
/*    */ 
/*    */   static String postProcessHit(Hit hit, long currentTimeMillis)
/*    */   {
/* 59 */     StringBuilder builder = new StringBuilder();
/* 60 */     builder.append(hit.getHitParams());
/*    */ 
/* 63 */     if (hit.getHitTime() > 0L) {
/* 64 */       long queueTime = currentTimeMillis - hit.getHitTime();
/* 65 */       if (queueTime >= 0L) {
/* 66 */         builder.append("&").append("qt").append("=").append(queueTime);
/*    */       }
/*    */ 
/*    */     }
/*    */ 
/* 74 */     builder.append("&").append("z").append("=").append(hit.getHitId());
/*    */ 
/* 76 */     return builder.toString();
/*    */   }
/*    */ 
/*    */   static String encode(String input) {
/*    */     try {
/* 81 */       return URLEncoder.encode(input, "UTF-8"); } catch (UnsupportedEncodingException e) {
/*    */     }
/* 83 */     throw new AssertionError(new StringBuilder().append("URL encoding failed for: ").append(input).toString());
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.HitBuilder
 * JD-Core Version:    0.6.2
 */