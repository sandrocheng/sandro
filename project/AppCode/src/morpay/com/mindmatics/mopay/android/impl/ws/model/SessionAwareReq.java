/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public abstract class SessionAwareReq
/*    */ {
/*    */   private String guid;
/*    */ 
/*    */   public final String getGuid()
/*    */   {
/* 13 */     return this.guid;
/*    */   }
/*    */ 
/*    */   public final void setGuid(String pGuid) {
/* 17 */     this.guid = pGuid;
/*    */   }
/*    */ 
/*    */   protected void fillInToString(StringBuffer pSb) {
/* 21 */     pSb.append(", guid='").append(this.guid).append('\'');
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.SessionAwareReq
 * JD-Core Version:    0.6.2
 */