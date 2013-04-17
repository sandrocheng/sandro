/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ public class PurchaseParamByButtonId<T> extends PurchaseParam
/*    */ {
/* 13 */   public static final PurchaseParam<String> BUTTON_ID = new PurchaseParam("BUTTON_ID");
/*    */ 
/* 18 */   public static final PurchaseParam<String> COUNTRY = new PurchaseParam("COUNTRY");
/*    */ 
/*    */   private PurchaseParamByButtonId(String pKey)
/*    */   {
/* 22 */     super(pKey);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.PurchaseParamByButtonId
 * JD-Core Version:    0.6.2
 */