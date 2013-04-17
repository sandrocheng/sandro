/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ import com.mindmatics.mopay.android.api.impl.MopayPurchase;
/*    */ 
/*    */ public class MopayPurchaseFactory
/*    */ {
/*    */   public static IMopayPurchase createForButtonId(String pAppSecret)
/*    */   {
/* 21 */     MopayPurchase mopayPurchase = new MopayPurchase(1, pAppSecret);
/* 22 */     return mopayPurchase;
/*    */   }
/*    */ 
/*    */   public static IMopayPurchase createForTariffKey(String pAppSecret)
/*    */   {
/* 34 */     MopayPurchase mopayPurchase = new MopayPurchase(2, pAppSecret);
/* 35 */     return mopayPurchase;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.MopayPurchaseFactory
 * JD-Core Version:    0.6.2
 */