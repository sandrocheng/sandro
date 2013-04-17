/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ public enum MopayStatus
/*    */ {
/* 13 */   ERROR, 
/*    */ 
/* 17 */   SUCCESS, 
/*    */ 
/* 22 */   INPROGRESS;
/*    */ 
/*    */   public static MopayStatus parseStatus(String pData)
/*    */   {
/*    */     MopayStatus rtn;
/*    */     MopayStatus rtn;
/* 29 */     if (("ERROR".equals(pData)) || ("CANCEL".equals(pData)) || ("EXCEPTION".equals(pData))) {
/* 30 */       rtn = ERROR;
/*    */     }
/*    */     else
/*    */     {
/*    */       MopayStatus rtn;
/* 31 */       if ("SUCCESS".equals(pData)) {
/* 32 */         rtn = SUCCESS;
/*    */       }
/*    */       else
/*    */       {
/*    */         MopayStatus rtn;
/* 33 */         if ("INPROGRESS".equals(pData))
/* 34 */           rtn = INPROGRESS;
/*    */         else
/* 36 */           rtn = null; 
/*    */       }
/*    */     }
/* 38 */     return rtn;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.MopayStatus
 * JD-Core Version:    0.6.2
 */