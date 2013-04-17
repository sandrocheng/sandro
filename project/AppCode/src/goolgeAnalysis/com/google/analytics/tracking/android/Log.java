/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ 
/*     */ public class Log
/*     */ {
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String LOG_TAG = "GAV2";
/*     */   private static boolean sDebug;
/*     */ 
/*     */   public static void setDebug(boolean debug)
/*     */   {
/*  31 */     sDebug = debug;
/*     */   }
/*     */ 
/*     */   public static boolean isDebugEnabled()
/*     */   {
/*  40 */     return sDebug;
/*     */   }
/*     */ 
/*     */   public static int d(String msg)
/*     */   {
/*  51 */     return android.util.Log.d("GAV2", formatMessage(msg));
/*     */   }
/*     */ 
/*     */   public static int dDebug(String msg)
/*     */   {
/*  62 */     if (sDebug) {
/*  63 */       return d(msg);
/*     */     }
/*  65 */     return 0;
/*     */   }
/*     */ 
/*     */   public static int e(String msg)
/*     */   {
/*  76 */     return android.util.Log.e("GAV2", formatMessage(msg));
/*     */   }
/*     */ 
/*     */   public static int eDebug(String msg)
/*     */   {
/*  87 */     if (sDebug) {
/*  88 */       return e(msg);
/*     */     }
/*  90 */     return 0;
/*     */   }
/*     */ 
/*     */   public static int i(String msg)
/*     */   {
/* 101 */     return android.util.Log.i("GAV2", formatMessage(msg));
/*     */   }
/*     */ 
/*     */   public static int iDebug(String msg)
/*     */   {
/* 112 */     if (sDebug) {
/* 113 */       return i(msg);
/*     */     }
/* 115 */     return 0;
/*     */   }
/*     */ 
/*     */   public static int v(String msg)
/*     */   {
/* 126 */     return android.util.Log.v("GAV2", formatMessage(msg));
/*     */   }
/*     */ 
/*     */   public static int vDebug(String msg)
/*     */   {
/* 137 */     if (sDebug) {
/* 138 */       return v(msg);
/*     */     }
/* 140 */     return 0;
/*     */   }
/*     */ 
/*     */   public static int w(String msg)
/*     */   {
/* 151 */     return android.util.Log.w("GAV2", formatMessage(msg));
/*     */   }
/*     */ 
/*     */   public static int wDebug(String msg)
/*     */   {
/* 162 */     if (sDebug) {
/* 163 */       return w(msg);
/*     */     }
/* 165 */     return 0;
/*     */   }
/*     */ 
/*     */   private static String formatMessage(String msg) {
/* 169 */     return Thread.currentThread().toString() + ": " + msg;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.Log
 * JD-Core Version:    0.6.2
 */