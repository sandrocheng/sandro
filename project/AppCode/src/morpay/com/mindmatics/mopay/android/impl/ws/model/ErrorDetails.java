/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ public class ErrorDetails
/*    */   implements Serializable
/*    */ {
/*    */   static final long serialVersionUID = 1L;
/*    */   private Long errorCode;
/*    */   private Integer apiError;
/*    */   private String wsErrorMessage;
/*    */ 
/*    */   public ErrorDetails()
/*    */   {
/* 20 */     this.errorCode = Long.valueOf(0L);
/* 21 */     this.apiError = Integer.valueOf(0);
/* 22 */     this.wsErrorMessage = "";
/*    */   }
/*    */ 
/*    */   public Long getErrorCode()
/*    */   {
/* 29 */     return this.errorCode;
/*    */   }
/*    */ 
/*    */   public void setErrorCode(Long pErrorCode)
/*    */   {
/* 36 */     this.errorCode = pErrorCode;
/*    */   }
/*    */ 
/*    */   public Integer getApiError()
/*    */   {
/* 43 */     return this.apiError;
/*    */   }
/*    */ 
/*    */   public void setApiError(Integer pApiError)
/*    */   {
/* 50 */     this.apiError = pApiError;
/*    */   }
/*    */ 
/*    */   public String getWsErrorMessage()
/*    */   {
/* 57 */     return this.wsErrorMessage;
/*    */   }
/*    */ 
/*    */   public void setWsErrorMessage(String pWsErrorMessage) {
/* 61 */     this.wsErrorMessage = pWsErrorMessage;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 66 */     StringBuffer sb = new StringBuffer();
/* 67 */     sb.append("ErrorDetails");
/* 68 */     sb.append("{errorCode=").append(this.errorCode);
/* 69 */     sb.append(", apiError=").append(this.apiError);
/* 70 */     sb.append(", wsErrorMessage=").append(this.wsErrorMessage);
/* 71 */     sb.append('}');
/* 72 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.ErrorDetails
 * JD-Core Version:    0.6.2
 */