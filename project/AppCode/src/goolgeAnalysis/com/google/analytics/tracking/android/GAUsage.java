/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.util.SortedSet;
/*     */ import java.util.TreeSet;
/*     */ 
/*     */ class GAUsage
/*     */ {
/*     */   private static final String BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
/*  86 */   private SortedSet<Field> mUsedFields = new TreeSet();
/*     */ 
/*  88 */   private StringBuilder mSequence = new StringBuilder();
/*     */ 
/*  90 */   private boolean mDisableUsage = false;
/*     */ 
/*  92 */   private static final GAUsage INSTANCE = new GAUsage();
/*     */ 
/*     */   public static GAUsage getInstance() {
/*  95 */     return INSTANCE;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   static GAUsage getPrivateInstance() {
/* 100 */     return new GAUsage();
/*     */   }
/*     */ 
/*     */   public synchronized void setDisableUsage(boolean disableUsage)
/*     */   {
/* 106 */     this.mDisableUsage = disableUsage;
/*     */   }
/*     */ 
/*     */   public synchronized void setUsage(Field field) {
/* 110 */     if (!this.mDisableUsage) {
/* 111 */       this.mUsedFields.add(field);
/* 112 */       this.mSequence.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(field.ordinal()));
/*     */     }
/*     */   }
/*     */ 
/*     */   public synchronized String getAndClearUsage()
/*     */   {
/* 123 */     StringBuilder result = new StringBuilder();
/* 124 */     int spot = 0;
/*     */ 
/* 131 */     int nextBoundary = 6;
/*     */ 
/* 133 */     while (this.mUsedFields.size() > 0)
/*     */     {
/* 137 */       Field f = (Field)this.mUsedFields.first();
/* 138 */       this.mUsedFields.remove(f);
/* 139 */       int nextLoc = f.ordinal();
/*     */ 
/* 147 */       while (nextLoc >= nextBoundary) {
/* 148 */         result.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(spot));
/* 149 */         spot = 0;
/* 150 */         nextBoundary += 6;
/*     */       }
/* 152 */       spot += (1 << f.ordinal() % 6);
/*     */     }
/*     */ 
/* 158 */     if ((spot > 0) || (result.length() == 0)) {
/* 159 */       result.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(spot));
/*     */     }
/*     */ 
/* 163 */     this.mUsedFields.clear();
/*     */ 
/* 165 */     return result.toString();
/*     */   }
/*     */ 
/*     */   public synchronized String getAndClearSequence()
/*     */   {
/* 176 */     if (this.mSequence.length() > 0) {
/* 177 */       this.mSequence.insert(0, ".");
/*     */     }
/* 179 */     String result = this.mSequence.toString();
/* 180 */     this.mSequence = new StringBuilder();
/* 181 */     return result;
/*     */   }
/*     */ 
/*     */   public static enum Field
/*     */   {
/*  30 */     TRACK_VIEW, 
/*  31 */     TRACK_VIEW_WITH_APPSCREEN, 
/*  32 */     TRACK_EVENT, 
/*  33 */     TRACK_TRANSACTION, 
/*  34 */     TRACK_EXCEPTION_WITH_DESCRIPTION, 
/*  35 */     TRACK_EXCEPTION_WITH_THROWABLE, 
/*  36 */     BLANK_06, 
/*  37 */     TRACK_TIMING, 
/*  38 */     TRACK_SOCIAL, 
/*  39 */     GET, 
/*  40 */     SET, 
/*  41 */     SEND, 
/*  42 */     SET_START_SESSION, 
/*  43 */     BLANK_13, 
/*  44 */     SET_APP_NAME, 
/*  45 */     BLANK_15, 
/*  46 */     SET_APP_VERSION, 
/*  47 */     BLANK_17, 
/*  48 */     SET_APP_SCREEN, 
/*  49 */     GET_TRACKING_ID, 
/*  50 */     SET_ANONYMIZE_IP, 
/*  51 */     GET_ANONYMIZE_IP, 
/*  52 */     SET_SAMPLE_RATE, 
/*  53 */     GET_SAMPLE_RATE, 
/*  54 */     SET_USE_SECURE, 
/*  55 */     GET_USE_SECURE, 
/*  56 */     SET_REFERRER, 
/*  57 */     SET_CAMPAIGN, 
/*  58 */     SET_APP_ID, 
/*  59 */     GET_APP_ID, 
/*  60 */     SET_EXCEPTION_PARSER, 
/*  61 */     GET_EXCEPTION_PARSER, 
/*  62 */     CONSTRUCT_TRANSACTION, 
/*  63 */     CONSTRUCT_EXCEPTION, 
/*  64 */     CONSTRUCT_RAW_EXCEPTION, 
/*  65 */     CONSTRUCT_TIMING, 
/*  66 */     CONSTRUCT_SOCIAL, 
/*  67 */     SET_DEBUG, 
/*  68 */     GET_DEBUG, 
/*  69 */     GET_TRACKER, 
/*  70 */     GET_DEFAULT_TRACKER, 
/*  71 */     SET_DEFAULT_TRACKER, 
/*  72 */     SET_APP_OPT_OUT, 
/*  73 */     REQUEST_APP_OPT_OUT, 
/*  74 */     DISPATCH, 
/*  75 */     SET_DISPATCH_PERIOD, 
/*  76 */     BLANK_48, 
/*  77 */     REPORT_UNCAUGHT_EXCEPTIONS, 
/*  78 */     SET_AUTO_ACTIVITY_TRACKING, 
/*  79 */     SET_SESSION_TIMEOUT, 
/*  80 */     CONSTRUCT_EVENT, 
/*  81 */     CONSTRUCT_ITEM, 
/*  82 */     SET_APP_INSTALLER_ID, 
/*  83 */     GET_APP_INSTALLER_ID;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GAUsage
 * JD-Core Version:    0.6.2
 */