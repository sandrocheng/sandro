/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.text.TextUtils;
/*    */ import java.util.List;
/*    */ 
/*    */ class NoopDispatcher
/*    */   implements Dispatcher
/*    */ {
/*    */   public boolean okToDispatch()
/*    */   {
/* 18 */     return true;
/*    */   }
/*    */ 
/*    */   public int dispatchHits(List<Hit> hits)
/*    */   {
/* 23 */     if (hits == null) {
/* 24 */       return 0;
/*    */     }
/* 26 */     Log.iDebug("Hits not actually being sent as dispatch is false...");
/* 27 */     int maxHits = Math.min(hits.size(), 40);
/* 28 */     for (int i = 0; i < maxHits; i++) {
/* 29 */       if (Log.isDebugEnabled()) {
/* 30 */         String logMessage = null;
/* 31 */         String hitString = ((Hit)hits.get(i)).getHitParams();
/* 32 */         String modifiedHit = TextUtils.isEmpty(hitString) ? "" : HitBuilder.postProcessHit((Hit)hits.get(i), System.currentTimeMillis());
/*    */ 
/* 34 */         if (TextUtils.isEmpty(modifiedHit))
/* 35 */           logMessage = "Hit couldn't be read, wouldn't be sent:";
/* 36 */         else if (modifiedHit.length() <= 2036)
/* 37 */           logMessage = "GET would be sent:";
/* 38 */         else if (modifiedHit.length() > 8192)
/* 39 */           logMessage = "Would be too big:";
/*    */         else {
/* 41 */           logMessage = "POST would be sent:";
/*    */         }
/* 43 */         Log.iDebug(logMessage + modifiedHit);
/*    */       }
/*    */     }
/* 46 */     return maxHits;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.NoopDispatcher
 * JD-Core Version:    0.6.2
 */