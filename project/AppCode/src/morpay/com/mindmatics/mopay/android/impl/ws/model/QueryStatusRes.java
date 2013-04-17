/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class QueryStatusRes extends JsonRes
/*    */ {
/*    */   private String paymentStatus;
/*    */   private boolean optinCompleted;
/*    */   private boolean paymentCompleted;
/*    */   private Handshake handshake;
/*    */   private boolean psmsBillingTan;
/*    */ 
/*    */   public String getPaymentStatus()
/*    */   {
/* 20 */     return this.paymentStatus;
/*    */   }
/*    */ 
/*    */   public void setPaymentStatus(String pPaymentStatus)
/*    */   {
/* 27 */     this.paymentStatus = pPaymentStatus;
/*    */   }
/*    */ 
/*    */   public boolean isOptinCompleted()
/*    */   {
/* 34 */     return this.optinCompleted;
/*    */   }
/*    */ 
/*    */   public void setOptinCompleted(boolean pOptinCompleted)
/*    */   {
/* 41 */     this.optinCompleted = pOptinCompleted;
/*    */   }
/*    */ 
/*    */   public boolean isPaymentCompleted()
/*    */   {
/* 48 */     return this.paymentCompleted;
/*    */   }
/*    */ 
/*    */   public void setPaymentCompleted(boolean pPaymentCompleted)
/*    */   {
/* 55 */     this.paymentCompleted = pPaymentCompleted;
/*    */   }
/*    */ 
/*    */   public Handshake getHandshake()
/*    */   {
/* 60 */     return this.handshake;
/*    */   }
/*    */ 
/*    */   public void setHandshake(Handshake pHandshake) {
/* 64 */     this.handshake = pHandshake;
/*    */   }
/*    */ 
/*    */   public boolean isPsmsBillingTan()
/*    */   {
/* 73 */     return this.psmsBillingTan;
/*    */   }
/*    */ 
/*    */   public void setPsmsBillingTan(boolean pPsmsBillingTan) {
/* 77 */     this.psmsBillingTan = pPsmsBillingTan;
/*    */   }
/*    */ 
/*    */   protected void toStringAppend(StringBuffer pSb)
/*    */   {
/* 84 */     super.toStringAppend(pSb);
/* 85 */     pSb.append(", paymentStatus='").append(this.paymentStatus).append('\'');
/* 86 */     pSb.append(", optinCompleted=").append(this.optinCompleted);
/* 87 */     pSb.append(", paymentCompleted=").append(this.paymentCompleted);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.QueryStatusRes
 * JD-Core Version:    0.6.2
 */