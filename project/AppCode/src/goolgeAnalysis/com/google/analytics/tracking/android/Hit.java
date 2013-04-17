/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ class Hit
/*    */ {
/*    */   private String mHitString;
/*    */   private final long mHitId;
/*    */   private final long mHitTime;
/*    */   private String mHitUrl;
/*    */ 
/*    */   String getHitParams()
/*    */   {
/* 21 */     return this.mHitString;
/*    */   }
/*    */ 
/*    */   void setHitString(String hitString) {
/* 25 */     this.mHitString = hitString;
/*    */   }
/*    */ 
/*    */   long getHitId() {
/* 29 */     return this.mHitId;
/*    */   }
/*    */ 
/*    */   long getHitTime() {
/* 33 */     return this.mHitTime;
/*    */   }
/*    */ 
/*    */   Hit(String hitString, long hitId, long hitTime) {
/* 37 */     this.mHitString = hitString;
/* 38 */     this.mHitId = hitId;
/* 39 */     this.mHitTime = hitTime;
/*    */   }
/*    */ 
/*    */   String getHitUrl() {
/* 43 */     return this.mHitUrl;
/*    */   }
/*    */ 
/*    */   void setHitUrl(String hitUrl)
/*    */   {
/* 48 */     this.mHitUrl = hitUrl;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.Hit
 * JD-Core Version:    0.6.2
 */