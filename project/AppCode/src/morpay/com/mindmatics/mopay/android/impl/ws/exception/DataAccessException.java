/*    */ package com.mindmatics.mopay.android.impl.ws.exception;
/*    */ 
/*    */ public class DataAccessException extends Exception
/*    */ {
/*    */   private final boolean retry;
/*    */ 
/*    */   public DataAccessException(String pDetailMessage, boolean pRetry)
/*    */   {
/* 14 */     super(pDetailMessage);
/* 15 */     this.retry = pRetry;
/*    */   }
/*    */ 
/*    */   public DataAccessException(Throwable pThrowable, boolean pRetry) {
/* 19 */     super(pThrowable);
/* 20 */     this.retry = pRetry;
/*    */   }
/*    */ 
/*    */   public DataAccessException(String pDetailMessage, Throwable pThrowable, boolean pRetry) {
/* 24 */     super(pDetailMessage, pThrowable);
/* 25 */     this.retry = pRetry;
/*    */   }
/*    */ 
/*    */   public boolean isRetry()
/*    */   {
/* 34 */     return this.retry;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.exception.DataAccessException
 * JD-Core Version:    0.6.2
 */