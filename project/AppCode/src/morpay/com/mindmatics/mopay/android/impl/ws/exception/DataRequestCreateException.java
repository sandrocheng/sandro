/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class DataRequestCreateException extends DataAccessException
/*    */ {
/*    */   public DataRequestCreateException(JSONException pThrowable)
/*    */   {
/* 12 */     super(pThrowable, false);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataRequestCreateException
 * JD-Core Version:    0.6.2
 */