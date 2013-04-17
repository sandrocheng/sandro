/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ import android.util.Log;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ 
/*    */ public class LogLevel
/*    */ {
/*    */   public static final int DEBUG = 4;
/*    */   public static final int INFO = 3;
/*    */   public static final int WARN = 2;
/*    */   public static final int ERROR = 1;
/* 30 */   private static int level = 3;
/*    */ 
/*    */   public static void setLevel(int pLevel)
/*    */   {
/* 36 */     Log.i(LogUtil.getTag(), "Changed LogLevel from " + level + " to " + pLevel);
/* 37 */     level = pLevel;
/*    */   }
/*    */ 
/*    */   public static int getLevel() {
/* 41 */     return level;
/*    */   }
/*    */ 
/*    */   public static boolean logDebug()
/*    */   {
/* 48 */     return level == 4;
/*    */   }
/*    */ 
/*    */   public static boolean logInfo()
/*    */   {
/* 55 */     return level >= 3;
/*    */   }
/*    */ 
/*    */   public static boolean logWarn()
/*    */   {
/* 62 */     return level >= 2;
/*    */   }
/*    */ 
/*    */   public static boolean logError()
/*    */   {
/* 69 */     return level >= 1;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.LogLevel
 * JD-Core Version:    0.6.2
 */