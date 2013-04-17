/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import java.util.Map;
/*    */ import java.util.Random;
/*    */ 
/*    */ class AdMobInfo
/*    */ {
/* 22 */   private static final AdMobInfo INSTANCE = new AdMobInfo();
/*    */   private int mAdHitId;
/* 25 */   private Random mRandom = new Random();
/*    */ 
/*    */   static AdMobInfo getInstance()
/*    */   {
/* 36 */     return INSTANCE;
/*    */   }
/*    */ 
/*    */   Map<String, String> getJoinIds()
/*    */   {
/* 47 */     return null;
/*    */   }
/*    */ 
/*    */   int generateAdHitId()
/*    */   {
/* 53 */     this.mAdHitId = (this.mRandom.nextInt(2147483646) + 1);
/* 54 */     return this.mAdHitId;
/*    */   }
/*    */ 
/*    */   void setAdHitId(int adHitId) {
/* 58 */     this.mAdHitId = adHitId;
/*    */   }
/*    */ 
/*    */   int getAdHitId() {
/* 62 */     return this.mAdHitId;
/*    */   }
/*    */ 
/*    */   static enum AdMobKey {
/* 66 */     CLIENT_ID_KEY("ga_cid"), HIT_ID_KEY("ga_hid"), PROPERTY_ID_KEY("ga_wpids"), VISITOR_ID_KEY("ga_uid");
/*    */ 
/*    */     private String mBowParameter;
/*    */ 
/*    */     private AdMobKey(String bowParameter)
/*    */     {
/* 72 */       this.mBowParameter = bowParameter;
/*    */     }
/*    */ 
/*    */     String getBowParameter() {
/* 76 */       return this.mBowParameter;
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.AdMobInfo
 * JD-Core Version:    0.6.2
 */