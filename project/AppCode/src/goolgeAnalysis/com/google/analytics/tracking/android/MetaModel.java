/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ 
/*     */ class MetaModel
/*     */ {
/*     */   private Map<String, MetaInfo> mMetaInfos;
/*     */ 
/*     */   MetaModel()
/*     */   {
/*  17 */     this.mMetaInfos = new HashMap();
/*     */   }
/*     */ 
/*     */   MetaInfo getMetaInfo(String key)
/*     */   {
/*  22 */     if (key.startsWith("&")) {
/*  23 */       return new MetaInfo(key.substring(1), null, null);
/*     */     }
/*     */ 
/*  28 */     String tmpKey = key;
/*  29 */     if (key.contains("*")) {
/*  30 */       tmpKey = key.substring(0, key.indexOf("*"));
/*     */     }
/*  32 */     return (MetaInfo)this.mMetaInfos.get(tmpKey);
/*     */   }
/*     */ 
/*     */   public void addField(String key, String urlParam, String defaultValue, Formatter formatter)
/*     */   {
/*  43 */     this.mMetaInfos.put(key, new MetaInfo(urlParam, defaultValue, formatter));
/*     */   }
/*     */ 
/*     */   public static class MetaInfo
/*     */   {
/*     */     private final String mUrlParam;
/*     */     private final String mDefaultValue;
/*     */     private final MetaModel.Formatter mFormatter;
/*     */ 
/*     */     public MetaInfo(String urlParam, String defaultValue, MetaModel.Formatter formatter) {
/*  55 */       this.mUrlParam = urlParam;
/*  56 */       this.mDefaultValue = defaultValue;
/*  57 */       this.mFormatter = formatter;
/*     */     }
/*     */ 
/*     */     public String getUrlParam(String actualKey)
/*     */     {
/*  71 */       if (actualKey.contains("*")) {
/*  72 */         String param = this.mUrlParam;
/*  73 */         int slot = 0;
/*  74 */         String[] splits = actualKey.split("\\*");
/*  75 */         if (splits.length > 1) {
/*     */           try {
/*  77 */             slot = Integer.parseInt(splits[1]);
/*     */           }
/*     */           catch (NumberFormatException e) {
/*  80 */             Log.w("Unable to parse slot for url parameter " + param);
/*  81 */             return null;
/*     */           }
/*  83 */           return param + slot;
/*     */         }
/*  85 */         return null;
/*     */       }
/*     */ 
/*  88 */       return this.mUrlParam;
/*     */     }
/*     */ 
/*     */     public String getDefaultValue()
/*     */     {
/*  93 */       return this.mDefaultValue;
/*     */     }
/*     */ 
/*     */     public MetaModel.Formatter getFormatter() {
/*  97 */       return this.mFormatter;
/*     */     }
/*     */ 
/*     */     @VisibleForTesting
/*     */     String getUrlParam() {
/* 102 */       return this.mUrlParam;
/*     */     }
/*     */   }
/*     */ 
/*     */   public static abstract interface Formatter
/*     */   {
/*     */     public abstract String format(String paramString);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.MetaModel
 * JD-Core Version:    0.6.2
 */