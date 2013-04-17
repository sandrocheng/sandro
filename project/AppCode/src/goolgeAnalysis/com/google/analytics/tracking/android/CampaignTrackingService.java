/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.app.IntentService;
/*    */ import android.content.Intent;
/*    */ import java.io.IOException;
/*    */ import java.io.OutputStream;
/*    */ 
/*    */ public final class CampaignTrackingService extends IntentService
/*    */ {
/*    */   public CampaignTrackingService(String name)
/*    */   {
/* 16 */     super(name);
/*    */   }
/*    */ 
/*    */   public CampaignTrackingService() {
/* 20 */     super("CampaignIntentService");
/*    */   }
/*    */ 
/*    */   protected void onHandleIntent(Intent intent)
/*    */   {
/* 25 */     String campaign = intent.getStringExtra("referrer");
/*    */     try
/*    */     {
/* 29 */       OutputStream output = openFileOutput("gaInstallData", 0);
/* 30 */       output.write(campaign.getBytes());
/* 31 */       output.close();
/*    */     } catch (IOException e) {
/* 33 */       Log.e("Error storing install campaign.");
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.CampaignTrackingService
 * JD-Core Version:    0.6.2
 */