/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class QueryPinRes extends JsonRes
/*    */ {
/*    */   private String regexp;
/*    */   private String type;
/*    */ 
/*    */   public String getRegexp()
/*    */   {
/* 14 */     return this.regexp;
/*    */   }
/*    */ 
/*    */   public void setRegexp(String pRegexp) {
/* 18 */     this.regexp = pRegexp;
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
/*    */   protected void toStringAppend(StringBuffer pSb)
/*    */   {
/* 31 */     super.toStringAppend(pSb);
/* 32 */     pSb.append(", regexp='").append(this.regexp).append('\'');
/* 33 */     pSb.append(", type='").append(this.type).append('\'');
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.QueryPinRes
 * JD-Core Version:    0.6.2
 */