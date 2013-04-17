/*    */ package com.mindmatics.mopay.android.impl.model;
/*    */ 
/*    */ public class BillingTanBO
/*    */ {
/*    */   private boolean billingTanUsed;
/*    */   private String billingTan;
/*    */   private String billingTanRegExp;
/*    */   private boolean billingTanSend;
/*    */ 
/*    */   public BillingTanBO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public BillingTanBO(boolean pBillingTanUsed, String pBillingTan, String pBillingTanRegExp)
/*    */   {
/* 18 */     this.billingTanUsed = pBillingTanUsed;
/* 19 */     this.billingTan = pBillingTan;
/* 20 */     this.billingTanRegExp = pBillingTanRegExp;
/*    */   }
/*    */ 
/*    */   public String getBillingTan() {
/* 24 */     return this.billingTan;
/*    */   }
/*    */ 
/*    */   public void setBillingTan(String pBillingTan) {
/* 28 */     this.billingTan = pBillingTan;
/*    */   }
/*    */ 
/*    */   public String getBillingTanRegExp() {
/* 32 */     return this.billingTanRegExp;
/*    */   }
/*    */ 
/*    */   public void setBillingTanRegExp(String pBillingTanRegExp) {
/* 36 */     this.billingTanRegExp = pBillingTanRegExp;
/*    */   }
/*    */ 
/*    */   public boolean isBillingTanUsed() {
/* 40 */     return this.billingTanUsed;
/*    */   }
/*    */ 
/*    */   public void setBillingTanUsed(boolean pBillingTanUsed) {
/* 44 */     this.billingTanUsed = pBillingTanUsed;
/*    */   }
/*    */ 
/*    */   public void setBillingTanSend(boolean pBillingTanSend) {
/* 48 */     this.billingTanSend = pBillingTanSend;
/*    */   }
/*    */ 
/*    */   public boolean isBillingTanSend() {
/* 52 */     return this.billingTanSend;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.BillingTanBO
 * JD-Core Version:    0.6.2
 */