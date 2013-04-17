/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import java.text.DecimalFormat;
/*     */ 
/*     */ class MetaModelInitializer
/*     */ {
/*  14 */   private static final MetaModel.Formatter BOOLEAN_FORMATTER = new MetaModel.Formatter()
/*     */   {
/*     */     public String format(String rawValue) {
/*  17 */       return Utils.safeParseBoolean(rawValue) ? "1" : "0";
/*     */     }
/*  14 */   };
/*     */ 
/*  20 */   private static final MetaModel.Formatter UP_TO_TWO_DIGIT_FLOAT_FORMATTER = new MetaModel.Formatter() {
/*  21 */     private final DecimalFormat mFloatFormat = new DecimalFormat("0.##");
/*     */ 
/*     */     public String format(String rawValue)
/*     */     {
/*  25 */       return this.mFloatFormat.format(Utils.safeParseDouble(rawValue));
/*     */     }
/*  20 */   };
/*     */ 
/*     */   public static void set(MetaModel m)
/*     */   {
/*  34 */     m.addField("apiVersion", "v", null, null);
/*  35 */     m.addField("libraryVersion", "_v", null, null);
/*  36 */     m.addField("anonymizeIp", "aip", "0", BOOLEAN_FORMATTER);
/*  37 */     m.addField("trackingId", "tid", null, null);
/*  38 */     m.addField("hitType", "t", null, null);
/*  39 */     m.addField("sessionControl", "sc", null, null);
/*  40 */     m.addField("adSenseAdMobHitId", "a", null, null);
/*  41 */     m.addField("usage", "_u", null, null);
/*     */ 
/*  44 */     m.addField("title", "dt", null, null);
/*  45 */     m.addField("referrer", "dr", null, null);
/*  46 */     m.addField("language", "ul", null, null);
/*  47 */     m.addField("encoding", "de", null, null);
/*  48 */     m.addField("page", "dp", null, null);
/*     */ 
/*  50 */     m.addField("screenColors", "sd", null, null);
/*  51 */     m.addField("screenResolution", "sr", null, null);
/*  52 */     m.addField("viewportSize", "vp", null, null);
/*  53 */     m.addField("javaEnabled", "je", "1", BOOLEAN_FORMATTER);
/*  54 */     m.addField("flashVersion", "fl", null, null);
/*     */ 
/*  56 */     m.addField("clientId", "cid", null, null);
/*     */ 
/*  59 */     m.addField("campaignName", "cn", null, null);
/*  60 */     m.addField("campaignSource", "cs", null, null);
/*  61 */     m.addField("campaignMedium", "cm", null, null);
/*  62 */     m.addField("campaignKeyword", "ck", null, null);
/*  63 */     m.addField("campaignContent", "cc", null, null);
/*  64 */     m.addField("campaignId", "ci", null, null);
/*  65 */     m.addField("gclid", "gclid", null, null);
/*  66 */     m.addField("dclid", "dclid", null, null);
/*  67 */     m.addField("gmob_t", "gmob_t", null, null);
/*     */ 
/*  70 */     m.addField("eventCategory", "ec", null, null);
/*  71 */     m.addField("eventAction", "ea", null, null);
/*  72 */     m.addField("eventLabel", "el", null, null);
/*  73 */     m.addField("eventValue", "ev", null, null);
/*  74 */     m.addField("nonInteraction", "ni", "0", BOOLEAN_FORMATTER);
/*     */ 
/*  77 */     m.addField("socialNetwork", "sn", null, null);
/*  78 */     m.addField("socialAction", "sa", null, null);
/*  79 */     m.addField("socialTarget", "st", null, null);
/*     */ 
/*  82 */     m.addField("appName", "an", null, null);
/*  83 */     m.addField("appVersion", "av", null, null);
/*     */ 
/*  86 */     m.addField("description", "cd", null, null);
/*     */ 
/*  88 */     m.addField("appId", "aid", null, null);
/*  89 */     m.addField("appInstallerId", "aiid", null, null);
/*     */ 
/*  92 */     m.addField("transactionId", "ti", null, null);
/*  93 */     m.addField("transactionAffiliation", "ta", null, null);
/*  94 */     m.addField("transactionShipping", "ts", null, null);
/*  95 */     m.addField("transactionTotal", "tr", null, null);
/*  96 */     m.addField("transactionTax", "tt", null, null);
/*  97 */     m.addField("currencyCode", "cu", null, null);
/*     */ 
/* 100 */     m.addField("itemPrice", "ip", null, null);
/* 101 */     m.addField("itemCode", "ic", null, null);
/* 102 */     m.addField("itemName", "in", null, null);
/* 103 */     m.addField("itemCategory", "iv", null, null);
/* 104 */     m.addField("itemQuantity", "iq", null, null);
/*     */ 
/* 107 */     m.addField("exDescription", "exd", null, null);
/* 108 */     m.addField("exFatal", "exf", "1", BOOLEAN_FORMATTER);
/*     */ 
/* 111 */     m.addField("timingVar", "utv", null, null);
/* 112 */     m.addField("timingValue", "utt", null, null);
/* 113 */     m.addField("timingCategory", "utc", null, null);
/* 114 */     m.addField("timingLabel", "utl", null, null);
/*     */ 
/* 117 */     m.addField("sampleRate", "sf", "100", UP_TO_TWO_DIGIT_FLOAT_FORMATTER);
/* 118 */     m.addField("hitTime", "ht", null, null);
/*     */ 
/* 122 */     m.addField("customDimension", "cd", null, null);
/* 123 */     m.addField("customMetric", "cm", null, null);
/* 124 */     m.addField("contentGrouping", "cg", null, null);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.MetaModelInitializer
 * JD-Core Version:    0.6.2
 */