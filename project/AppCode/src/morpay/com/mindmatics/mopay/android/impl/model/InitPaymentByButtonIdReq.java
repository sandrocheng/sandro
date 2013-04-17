/*    */ package com.mindmatics.mopay.android.impl.model;
/*    */ 
/*    */ public class InitPaymentByButtonIdReq extends AbstractInitPaymentReq
/*    */ {
/*    */   private String country;
/*    */   private String buttonId;
/*    */ 
/*    */   public String getCountry()
/*    */   {
/* 16 */     return this.country;
/*    */   }
/*    */ 
/*    */   public void setCountry(String pCountry) {
/* 20 */     this.country = pCountry;
/*    */   }
/*    */ 
/*    */   public String getButtonId() {
/* 24 */     return this.buttonId;
/*    */   }
/*    */ 
/*    */   public void setButtonId(String pButtonId) {
/* 28 */     this.buttonId = pButtonId;
/*    */   }
/*    */ 
/*    */   protected void appendToString(StringBuffer pSb)
/*    */   {
/* 33 */     pSb.append(", country='").append(this.country).append('\'');
/* 34 */     pSb.append(", buttonId='").append(this.buttonId).append('\'');
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.InitPaymentByButtonIdReq
 * JD-Core Version:    0.6.2
 */