/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ public class DataHttpErrorException extends DataAccessException
/*    */ {
/*    */   private int code;
/*    */ 
/*    */   public DataHttpErrorException(String pDetailMessage, int pCode)
/*    */   {
/* 14 */     super(pDetailMessage, false);
/* 15 */     this.code = pCode;
/*    */   }
/*    */ 
/*    */   public String getMessage()
/*    */   {
/* 20 */     return "HTTP request error. ResponseCode=" + this.code + ", Reason=" + super.getMessage();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataHttpErrorException
 * JD-Core Version:    0.6.2
 */