/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.ws.model.ErrorDetails;
/*    */ 
/*    */ public class RemoteCallFailedException extends Exception
/*    */ {
/*    */   private final ErrorDetails errorDetail;
/*    */ 
/*    */   public RemoteCallFailedException(String pMessage, ErrorDetails pErrorDetail)
/*    */   {
/* 16 */     super(pMessage);
/* 17 */     this.errorDetail = pErrorDetail;
/*    */   }
/*    */ 
/*    */   public ErrorDetails getErrorDetail() {
/* 21 */     return this.errorDetail;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.RemoteCallFailedException
 * JD-Core Version:    0.6.2
 */