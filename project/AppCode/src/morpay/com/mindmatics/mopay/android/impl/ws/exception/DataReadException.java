/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ import java.io.IOException;
/*    */ 
/*    */ public class DataReadException extends DataAccessException
/*    */ {
/*    */   public DataReadException(IOException pThrowable)
/*    */   {
/* 13 */     super(pThrowable, true);
/*    */   }
/*    */ 
/*    */   public DataReadException(String pDetailMessage, IOException pThrowable) {
/* 17 */     super(pDetailMessage, pThrowable, true);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataReadException
 * JD-Core Version:    0.6.2
 */