/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.os.Build.VERSION;
/*    */ import java.io.File;
/*    */ 
/*    */ class FutureApis
/*    */ {
/*    */   public static int version()
/*    */   {
/*    */     int version;
/*    */     try
/*    */     {
/* 26 */       version = Integer.parseInt(Build.VERSION.SDK);
/*    */     } catch (NumberFormatException ignored) {
/* 28 */       Log.e("Invalid version number: " + Build.VERSION.SDK);
/* 29 */       version = 0;
/*    */     }
/* 31 */     return version;
/*    */   }
/*    */ 
/*    */   static boolean setOwnerOnlyReadWrite(String path)
/*    */   {
/* 39 */     int minVersionForSetReadableWritable = 9;
/* 40 */     if (version() < minVersionForSetReadableWritable) {
/* 41 */       return false;
/*    */     }
/* 43 */     boolean ownerOnly = true;
/* 44 */     File file = new File(path);
/*    */ 
/* 47 */     file.setReadable(false, false);
/* 48 */     file.setWritable(false, false);
/*    */ 
/* 51 */     file.setReadable(true, true);
/* 52 */     file.setWritable(true, true);
/* 53 */     return true;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.FutureApis
 * JD-Core Version:    0.6.2
 */