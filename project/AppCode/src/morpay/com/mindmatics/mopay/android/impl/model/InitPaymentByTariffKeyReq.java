/*    */ package com.mindmatics.mopay.android.impl.model;
/*    */ 
/*    */ public class InitPaymentByTariffKeyReq extends AbstractInitPaymentReq
/*    */ {
/*    */   private Long projectId;
/*    */   private String tariffKey;
/*    */ 
/*    */   public Long getProjectId()
/*    */   {
/* 15 */     return this.projectId;
/*    */   }
/*    */ 
/*    */   public void setProjectId(Long pProjectId) {
/* 19 */     this.projectId = pProjectId;
/*    */   }
/*    */ 
/*    */   public String getTariffKey() {
/* 23 */     return this.tariffKey;
/*    */   }
/*    */ 
/*    */   public void setTariffKey(String pTariffKey) {
/* 27 */     this.tariffKey = pTariffKey;
/*    */   }
/*    */ 
/*    */   protected void appendToString(StringBuffer pSb)
/*    */   {
/* 32 */     pSb.append(", projectId='").append(this.projectId).append('\'');
/* 33 */     pSb.append(", tariffKey='").append(this.tariffKey).append('\'');
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.InitPaymentByTariffKeyReq
 * JD-Core Version:    0.6.2
 */