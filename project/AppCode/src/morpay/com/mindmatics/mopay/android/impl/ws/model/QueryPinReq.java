/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class QueryPinReq extends SessionAwareReq
/*    */ {
/*    */   private String type;
/*    */ 
/*    */   public String getType()
/*    */   {
/* 17 */     return this.type;
/*    */   }
/*    */ 
/*    */   public void setType(String pType) {
/* 21 */     this.type = pType;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 26 */     StringBuffer sb = new StringBuffer();
/* 27 */     sb.append(getClass().getSimpleName());
/* 28 */     super.fillInToString(sb);
/* 29 */     sb.append(", type=").append(this.type);
/* 30 */     sb.append('}');
/* 31 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.QueryPinReq
 * JD-Core Version:    0.6.2
 */