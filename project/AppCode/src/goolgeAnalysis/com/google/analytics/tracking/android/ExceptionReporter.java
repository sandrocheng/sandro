/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ public class ExceptionReporter
/*    */   implements Thread.UncaughtExceptionHandler
/*    */ {
/*    */   private final Thread.UncaughtExceptionHandler mOriginalHandler;
/*    */   private final Tracker mTracker;
/*    */   private final ServiceManager mServiceManager;
/*    */   private ExceptionParser mExceptionParser;
/*    */ 
/*    */   public ExceptionReporter(Tracker tracker, ServiceManager serviceManager, Thread.UncaughtExceptionHandler originalHandler)
/*    */   {
/* 43 */     if (tracker == null) {
/* 44 */       throw new NullPointerException("tracker cannot be null");
/*    */     }
/* 46 */     if (serviceManager == null) {
/* 47 */       throw new NullPointerException("serviceManager cannot be null");
/*    */     }
/* 49 */     this.mOriginalHandler = originalHandler;
/* 50 */     this.mTracker = tracker;
/* 51 */     this.mServiceManager = serviceManager;
/* 52 */     Log.iDebug(new StringBuilder().append("ExceptionReporter created, original handler is ").append(originalHandler == null ? "null" : originalHandler.getClass().getName()).toString());
/*    */   }
/*    */ 
/*    */   public ExceptionParser getExceptionParser()
/*    */   {
/* 57 */     return this.mExceptionParser;
/*    */   }
/*    */ 
/*    */   public void setExceptionParser(ExceptionParser exceptionParser) {
/* 61 */     this.mExceptionParser = exceptionParser;
/*    */   }
/*    */ 
/*    */   public void uncaughtException(Thread t, Throwable e)
/*    */   {
/* 67 */     String description = "";
/* 68 */     if (this.mExceptionParser == null)
/*    */     {
/* 70 */       description = e.getMessage();
/*    */     } else {
/* 72 */       String threadName = t != null ? t.getName() : null;
/* 73 */       description = this.mExceptionParser.getDescription(threadName, e);
/*    */     }
/* 75 */     Log.iDebug(new StringBuilder().append("Tracking Exception: ").append(description).toString());
/* 76 */     this.mTracker.sendException(description, true);
/*    */ 
/* 78 */     this.mServiceManager.dispatch();
/* 79 */     if (this.mOriginalHandler != null) {
/* 80 */       Log.iDebug("Passing exception to original handler.");
/* 81 */       this.mOriginalHandler.uncaughtException(t, e);
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.ExceptionReporter
 * JD-Core Version:    0.6.2
 */