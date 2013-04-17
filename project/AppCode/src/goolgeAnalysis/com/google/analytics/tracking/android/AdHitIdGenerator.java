/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import com.google.android.gms.common.util.VisibleForTesting;
/*    */ 
/*    */ class AdHitIdGenerator
/*    */ {
/*    */   private boolean mAdMobSdkInstalled;
/*    */ 
/*    */   AdHitIdGenerator()
/*    */   {
/*    */     try
/*    */     {
/* 17 */       this.mAdMobSdkInstalled = (Class.forName("com.google.ads.AdRequest") != null);
/*    */     } catch (ClassNotFoundException e) {
/* 19 */       this.mAdMobSdkInstalled = false;
/*    */     }
/*    */   }
/*    */ 
/*    */   @VisibleForTesting
/*    */   AdHitIdGenerator(boolean adMobSdkInstalled) {
/* 25 */     this.mAdMobSdkInstalled = adMobSdkInstalled;
/*    */   }
/*    */ 
/*    */   int getAdHitId()
/*    */   {
/* 32 */     if (!this.mAdMobSdkInstalled) {
/* 33 */       return 0;
/*    */     }
/* 35 */     return AdMobInfo.getInstance().generateAdHitId();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.AdHitIdGenerator
 * JD-Core Version:    0.6.2
 */