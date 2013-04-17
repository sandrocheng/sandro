/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class JsonRes
/*    */ {
/*    */   private boolean retry;
/*    */   private boolean success;
/*    */   private ErrorDetails errorDetails;
/*    */ 
/*    */   public JsonRes()
/*    */   {
/*    */   }
/*    */ 
/*    */   public JsonRes(boolean pSuccess)
/*    */   {
/* 19 */     this.success = pSuccess;
/*    */   }
/*    */ 
/*    */   public boolean isRetry() {
/* 23 */     return this.retry;
/*    */   }
/*    */ 
/*    */   public void setRetry(boolean pRetry) {
/* 27 */     this.retry = pRetry;
/*    */   }
/*    */ 
/*    */   public boolean isSuccess() {
/* 31 */     return this.success;
/*    */   }
/*    */ 
/*    */   public void setSuccess(boolean pSuccess) {
/* 35 */     this.success = pSuccess;
/*    */   }
/*    */ 
/*    */   public ErrorDetails getErrorDetails() {
/* 39 */     return this.errorDetails;
/*    */   }
/*    */ 
/*    */   public void setErrorDetails(ErrorDetails pErrorDetails) {
/* 43 */     this.errorDetails = pErrorDetails;
/*    */   }
/*    */ 
/*    */   public final String toString()
/*    */   {
/* 48 */     StringBuffer sb = new StringBuffer();
/* 49 */     sb.append(getClass().getSimpleName());
/* 50 */     sb.append("{success=").append(this.success);
/* 51 */     if (this.retry) {
/* 52 */       sb.append(", retry=").append(this.retry);
/*    */     }
/* 54 */     if (this.errorDetails != null) {
/* 55 */       sb.append(", errorDetails=").append(this.errorDetails);
/*    */     }
/* 57 */     toStringAppend(sb);
/* 58 */     sb.append('}');
/* 59 */     return sb.toString();
/*    */   }
/*    */ 
/*    */   protected void toStringAppend(StringBuffer pSb)
/*    */   {
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.JsonRes
 * JD-Core Version:    0.6.2
 */