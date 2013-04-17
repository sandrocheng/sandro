/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class SubmitTanReq extends SessionAwareReq
/*    */ {
/*    */   private String tan;
/*    */   private String type;
/*    */ 
/*    */   public String getTan()
/*    */   {
/* 14 */     return this.tan;
/*    */   }
/*    */ 
/*    */   public void setTan(String pTan) {
/* 18 */     this.tan = pTan;
/*    */   }
/*    */ 
/*    */   public String getType() {
/* 22 */     return this.type;
/*    */   }
/*    */ 
/*    */   public void setType(String pType) {
/* 26 */     this.type = pType;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 31 */     StringBuffer sb = new StringBuffer();
/* 32 */     sb.append(getClass().getSimpleName());
/* 33 */     super.fillInToString(sb);
/* 34 */     sb.append(", type=").append(this.tan);
/* 35 */     sb.append('}');
/* 36 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.SubmitTanReq
 * JD-Core Version:    0.6.2
 */