/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ public class PurchaseParamByTariffKey<T> extends PurchaseParam
/*    */ {
/* 13 */   public static final PurchaseParam<String> TARIFF_KEY = new PurchaseParam("TARIFF_KEY");
/*    */ 
/* 18 */   public static final PurchaseParam<Long> PROJECT_ID = new PurchaseParam("PROJECT_ID");
/*    */ 
/*    */   private PurchaseParamByTariffKey(String pKey)
/*    */   {
/* 22 */     super(pKey);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.PurchaseParamByTariffKey
 * JD-Core Version:    0.6.2
 */