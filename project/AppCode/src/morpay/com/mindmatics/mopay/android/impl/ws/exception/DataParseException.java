/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class DataParseException extends DataAccessException
/*    */ {
/*    */   public DataParseException(JSONException pThrowable)
/*    */   {
/* 12 */     super(pThrowable, false);
/*    */   }
/*    */ 
/*    */   public DataParseException(String pDetailMessage, JSONException pThrowable) {
/* 16 */     super(pDetailMessage, pThrowable, false);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataParseException
 * JD-Core Version:    0.6.2
 */