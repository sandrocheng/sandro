/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class DataResultMappingException extends DataAccessException
/*    */ {
/*    */   public DataResultMappingException(JSONException pThrowable)
/*    */   {
/* 14 */     super(pThrowable, false);
/*    */   }
/*    */ 
/*    */   public DataResultMappingException(String pDetailMessage, JSONException pThrowable) {
/* 18 */     super(pDetailMessage, pThrowable, false);
/*    */   }
/*    */   public DataResultMappingException(String pDetailMessage, Throwable pThrowable) {
/* 21 */     super(pDetailMessage, pThrowable, false);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataResultMappingException
 * JD-Core Version:    0.6.2
 */