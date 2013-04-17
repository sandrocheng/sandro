/*    */ package com.mindmatics.mopay.android.impl;
/*    */ 
/*    */ import java.io.PrintWriter;
/*    */ import java.io.StringWriter;
/*    */ import java.util.ArrayList;
/*    */ import java.util.List;
/*    */ 
/*    */ public class StackTraceCollector
/*    */ {
/* 15 */   private static final List<String> STACKTRACES = new ArrayList();
/*    */ 
/*    */   public static void clear()
/*    */   {
/* 21 */     STACKTRACES.clear();
/*    */   }
/*    */ 
/*    */   public static void add(Throwable pThrowable) {
/* 25 */     STACKTRACES.add(readStackTrace(pThrowable));
/*    */   }
/*    */ 
/*    */   public static String concatAll() {
/* 29 */     StringBuffer sb = new StringBuffer();
/* 30 */     for (String s : STACKTRACES) {
/* 31 */       sb.append(s);
/* 32 */       sb.append("---------------------------------------------------------------\n");
/*    */     }
/* 34 */     return sb.toString();
/*    */   }
/*    */ 
/*    */   private static String readStackTrace(Throwable pException) {
/*    */     try {
/* 39 */       StringWriter out = new StringWriter();
/* 40 */       out.append(pException.getMessage());
/* 41 */       out.append(" -- ");
/* 42 */       pException.printStackTrace(new PrintWriter(out));
/* 43 */       return out.toString();
/*    */     }
/*    */     catch (Exception e) {
/* 46 */       e.printStackTrace();
/*    */     }
/*    */ 
/* 49 */     return " Error parsing error message: " + pException.getLocalizedMessage();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.StackTraceCollector
 * JD-Core Version:    0.6.2
 */