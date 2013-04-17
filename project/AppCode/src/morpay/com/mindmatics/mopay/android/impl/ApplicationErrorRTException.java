/*    */ package com.mindmatics.mopay.android.impl;
/*    */ 
/*    */ public class ApplicationErrorRTException extends RuntimeException
/*    */ {
/*    */   private final long errorCode;
/*    */ 
/*    */   public ApplicationErrorRTException(long pErrorCode)
/*    */   {
/* 20 */     this.errorCode = pErrorCode;
/*    */   }
/*    */ 
/*    */   public long getErrorCode() {
/* 24 */     return this.errorCode;
/*    */   }
/*    */ 
/*    */   public String getMessage()
/*    */   {
/* 29 */     return StaticMessages.getStaticErrorMessageForMerchantCallback(this.errorCode);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ApplicationErrorRTException
 * JD-Core Version:    0.6.2
 */