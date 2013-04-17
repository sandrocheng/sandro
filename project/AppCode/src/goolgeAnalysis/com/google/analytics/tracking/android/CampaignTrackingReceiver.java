/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.content.BroadcastReceiver;
/*    */ import android.content.Context;
/*    */ import android.content.Intent;
/*    */ 
/*    */ public final class CampaignTrackingReceiver extends BroadcastReceiver
/*    */ {
/*    */   static final String INSTALL_ACTION = "com.android.vending.INSTALL_REFERRER";
/*    */   static final String CAMPAIGN_KEY = "referrer";
/*    */ 
/*    */   public void onReceive(Context ctx, Intent intent)
/*    */   {
/* 40 */     String campaign = intent.getStringExtra("referrer");
/*    */ 
/* 42 */     if ((!"com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) || (campaign == null)) {
/* 43 */       return;
/*    */     }
/*    */ 
/* 46 */     Intent serviceIntent = new Intent(ctx, CampaignTrackingService.class);
/* 47 */     serviceIntent.putExtra("referrer", campaign);
/* 48 */     ctx.startService(serviceIntent);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.CampaignTrackingReceiver
 * JD-Core Version:    0.6.2
 */