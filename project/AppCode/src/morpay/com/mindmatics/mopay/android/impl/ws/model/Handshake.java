/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class Handshake
/*    */ {
/*    */   private String shortId;
/*    */   private String smsText;
/*    */   private String status;
/*    */ 
/*    */   public String getShortId()
/*    */   {
/* 14 */     return this.shortId;
/*    */   }
/*    */ 
/*    */   public void setShortId(String pShortId) {
/* 18 */     this.shortId = pShortId;
/*    */   }
/*    */ 
/*    */   public String getSmsText() {
/* 22 */     return this.smsText;
/*    */   }
/*    */ 
/*    */   public void setSmsText(String pSmsText) {
/* 26 */     this.smsText = pSmsText;
/*    */   }
/*    */ 
/*    */   public String getStatus() {
/* 30 */     return this.status;
/*    */   }
/*    */ 
/*    */   public void setStatus(String pStatus) {
/* 34 */     this.status = pStatus;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 39 */     StringBuffer sb = new StringBuffer();
/* 40 */     sb.append("Handshake");
/* 41 */     sb.append("{shortId='").append(this.shortId).append('\'');
/* 42 */     sb.append(", smsText='").append(this.smsText).append('\'');
/* 43 */     sb.append(", status='").append(this.status).append('\'');
/* 44 */     sb.append('}');
/* 45 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.Handshake
 * JD-Core Version:    0.6.2
 */