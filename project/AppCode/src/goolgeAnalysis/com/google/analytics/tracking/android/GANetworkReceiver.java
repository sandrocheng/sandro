/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.content.BroadcastReceiver;
/*    */ import android.content.Context;
/*    */ import android.content.Intent;
/*    */ import android.os.Bundle;
/*    */ 
/*    */ class GANetworkReceiver extends BroadcastReceiver
/*    */ {
/*    */   private final ServiceManager mManager;
/*    */ 
/*    */   GANetworkReceiver(ServiceManager manager)
/*    */   {
/* 24 */     this.mManager = manager;
/*    */   }
/*    */ 
/*    */   public void onReceive(Context ctx, Intent intent)
/*    */   {
/* 29 */     String action = intent.getAction();
/* 30 */     if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
/* 31 */       Bundle b = intent.getExtras();
/* 32 */       Boolean notConnected = Boolean.FALSE;
/* 33 */       if (b != null) {
/* 34 */         notConnected = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
/*    */       }
/* 36 */       this.mManager.updateConnectivityStatus(!notConnected.booleanValue());
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GANetworkReceiver
 * JD-Core Version:    0.6.2
 */