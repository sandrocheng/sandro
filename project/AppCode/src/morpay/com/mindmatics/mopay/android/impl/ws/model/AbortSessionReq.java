/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class AbortSessionReq extends UserCancelReq
/*    */ {
/*    */   private long errorCode;
/*    */ 
/*    */   public long getErrorCode()
/*    */   {
/* 13 */     return this.errorCode;
/*    */   }
/*    */ 
/*    */   public void setErrorCode(long pErrorCode) {
/* 17 */     this.errorCode = pErrorCode;
/*    */   }
/*    */ 
/*    */   protected void fillInToString(StringBuffer pSb)
/*    */   {
/* 22 */     super.fillInToString(pSb);
/* 23 */     pSb.append(", errorCode='").append(this.errorCode).append('\'');
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.AbortSessionReq
 * JD-Core Version:    0.6.2
 */