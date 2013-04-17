/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import android.util.Log;
/*     */ import com.mindmatics.mopay.android.api.LogLevel;
/*     */ 
/*     */ public class LogUtil
/*     */ {
/*  11 */   private static String tag = "MOPAY_LIB";
/*     */ 
/*     */   private static String id(Object pObject)
/*     */   {
/*  17 */     return pObject.getClass().getSimpleName();
/*     */   }
/*     */ 
/*     */   private static String formatId(Object pObject) {
/*  21 */     if (pObject == null) {
/*  22 */       return "null";
/*     */     }
/*  24 */     return "[" + id(pObject) + "] ";
/*     */   }
/*     */ 
/*     */   private static String formatId(Class<?> pClass) {
/*  28 */     if (pClass == null) {
/*  29 */       return "null";
/*     */     }
/*  31 */     return "[" + pClass.getSimpleName() + "] ";
/*     */   }
/*     */ 
/*     */   public static void logD(Class<?> pClass, String pMessage)
/*     */   {
/*  39 */     if (LogLevel.logDebug())
/*  40 */       Log.d(tag, formatId(pClass) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logD(Class<?> pClass, Exception pE)
/*     */   {
/*  49 */     if (LogLevel.logDebug()) {
/*  50 */       Log.d(tag, formatId(pClass), pE);
/*     */     }
/*  52 */     StackTraceCollector.add(pE);
/*     */   }
/*     */ 
/*     */   public static void logD(Object pInstance, Exception pE) {
/*  56 */     if (LogLevel.logDebug()) {
/*  57 */       Log.d(tag, formatId(pInstance), pE);
/*     */     }
/*     */ 
/*  60 */     StackTraceCollector.add(pE);
/*     */   }
/*     */ 
/*     */   public static void logD(Object pInstance, String pMessage)
/*     */   {
/*  67 */     if (LogLevel.logDebug())
/*  68 */       Log.d(tag, formatId(pInstance) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logW(Object pInstance, String pMessage)
/*     */   {
/*  76 */     if (LogLevel.logWarn())
/*  77 */       Log.w(tag, formatId(pInstance) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logW(Class pClass, String pMessage)
/*     */   {
/*  85 */     if (LogLevel.logWarn())
/*  86 */       Log.w(tag, formatId(pClass) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logW(Object pInstance, String pMessage, Exception pException)
/*     */   {
/*  94 */     if (LogLevel.logWarn()) {
/*  95 */       Log.w(tag, formatId(pInstance) + reformat(pMessage), pException);
/*     */     }
/*  97 */     StackTraceCollector.add(pException);
/*     */   }
/*     */ 
/*     */   public static void logE(Object pInstance, String pMessage)
/*     */   {
/* 104 */     if (LogLevel.logError())
/* 105 */       Log.e(tag, formatId(pInstance) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logE(Class<?> pClass, String pMessage)
/*     */   {
/* 113 */     if (LogLevel.logError())
/* 114 */       Log.e(tag, formatId(pClass) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logE(Object pInstance, String pMessage, Exception pException)
/*     */   {
/* 122 */     if (LogLevel.logError()) {
/* 123 */       Log.e(tag, formatId(pInstance) + reformat(pMessage), pException);
/*     */     }
/* 125 */     StackTraceCollector.add(pException);
/*     */   }
/*     */ 
/*     */   public static void logE(Object pInstance, Exception pException)
/*     */   {
/* 133 */     if (LogLevel.logError()) {
/* 134 */       Log.e(tag, formatId(pInstance), pException);
/*     */     }
/* 136 */     StackTraceCollector.add(pException);
/*     */   }
/*     */ 
/*     */   public static void logE(Class<?> pClass, Exception pException)
/*     */   {
/* 143 */     if (LogLevel.logError()) {
/* 144 */       Log.e(tag, formatId(pClass), pException);
/*     */     }
/* 146 */     StackTraceCollector.add(pException);
/*     */   }
/*     */ 
/*     */   public static void logI(Class<?> pInstance, String pMessage)
/*     */   {
/* 153 */     if (LogLevel.logInfo())
/* 154 */       Log.i(tag, formatId(pInstance) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   public static void logI(Object pInstance, String pMessage)
/*     */   {
/* 162 */     if (LogLevel.logInfo())
/* 163 */       Log.i(tag, formatId(pInstance) + reformat(pMessage));
/*     */   }
/*     */ 
/*     */   private static String reformat(String pData)
/*     */   {
/* 168 */     return pData;
/*     */   }
/*     */ 
/*     */   public static String getTag() {
/* 172 */     return tag;
/*     */   }
/*     */ 
/*     */   public static void setTag(String pTag) {
/* 176 */     tag = pTag;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.LogUtil
 * JD-Core Version:    0.6.2
 */