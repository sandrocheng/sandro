/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class UserCancelReq extends SessionAwareReq
/*    */ {
/*    */   public String toString()
/*    */   {
/* 12 */     StringBuffer sb = new StringBuffer();
/* 13 */     sb.append(getClass().getSimpleName());
/* 14 */     sb.append("{");
/* 15 */     super.fillInToString(sb);
/* 16 */     sb.append('}');
/* 17 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.UserCancelReq
 * JD-Core Version:    0.6.2
 */