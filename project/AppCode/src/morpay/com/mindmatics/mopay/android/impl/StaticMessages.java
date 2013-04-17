/*    */ package com.mindmatics.mopay.android.impl;
/*    */ 
/*    */ import java.util.HashMap;
/*    */ import java.util.Map;
/*    */ 
/*    */ public class StaticMessages
/*    */ {
/*    */   public static final String MSG_PLEASE_WAIT = "Please wait ....";
/*    */   public static final String MSG_INTERNAL_ERROR = "Internal Payment SDK Application Error.";
/* 18 */   private static Map<Long, String> staticErrorCodeMessages = new HashMap();
/*    */ 
/*    */   public static String getStaticErrorMessageForMerchantCallback(long pErrorCode)
/*    */   {
/* 36 */     String msg = (String)staticErrorCodeMessages.get(Long.valueOf(pErrorCode));
/* 37 */     if (msg == null) {
/* 38 */       return "Internal Payment SDK Application Error.";
/*    */     }
/* 40 */     return msg;
/*    */   }
/*    */ 
/*    */   static
/*    */   {
/* 24 */     staticErrorCodeMessages.put(Long.valueOf(20090801L), "Internal Payment SDK Application Error.");
/* 25 */     staticErrorCodeMessages.put(Long.valueOf(20090802L), "Internet Connection Error.");
/* 26 */     staticErrorCodeMessages.put(Long.valueOf(20090804L), "No SIM card available");
/* 27 */     staticErrorCodeMessages.put(Long.valueOf(20090803L), "Failed to Send SMS Message.");
/* 28 */     staticErrorCodeMessages.put(Long.valueOf(10210128L), "Failed to receive the TAN Message.");
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.StaticMessages
 * JD-Core Version:    0.6.2
 */