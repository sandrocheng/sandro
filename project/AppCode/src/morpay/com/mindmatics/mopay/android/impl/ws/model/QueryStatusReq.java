/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class QueryStatusReq extends SessionAwareReq
/*    */ {
/*    */   public String toString()
/*    */   {
/* 12 */     StringBuffer sb = new StringBuffer();
/* 13 */     sb.append(getClass().getSimpleName());
/* 14 */     super.fillInToString(sb);
/* 15 */     sb.append('}');
/* 16 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.QueryStatusReq
 * JD-Core Version:    0.6.2
 */