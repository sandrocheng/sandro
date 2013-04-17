/*    */ package com.mindmatics.mopay.android.impl;
/*    */ 
/*    */ public enum JavascriptParameters
/*    */ {
/*  9 */   SHORT_ID("shortId"), 
/* 10 */   SMS_TEXT("smsText"), 
/* 11 */   GUID("guid"), 
/* 12 */   PROCESSING_TITLE("processingTitle"), 
/* 13 */   PROCESSING_TEXT("processingText"), 
/* 14 */   SEND_SMS_DOUBLE_CONFIRM_DIALOG_TEXT("sendSmsDoubleConfirmDialogText"), 
/* 15 */   SEND_SMS_DOUBLE_CONFIRM_DIALOG_CONFIRM_TEXT("sendSmsDoubleConfirmDialogConfirmText"), 
/* 16 */   SEND_SMS_DOUBLE_CONFIRM_DIALOG_DECLINE_TEXT("sendSmsDoubleConfirmDialogDeclineText"), 
/* 17 */   SEND_SMS_DOUBLE_CONFIRM_DIALOG_CALLBACK_METHOD("sendSmsDoubleConfirmDialogCallbackMethod"), 
/* 18 */   RESULT_GUID("resultGuid"), 
/* 19 */   RESULT_STATUS("resultStatus"), 
/* 20 */   RESULT_GROSSAMOUNT("resultGrossAmount"), 
/* 21 */   RESULT_CURRENCY("resultCurrency"), 
/* 22 */   RESULT_COUNTRY("resultCountry"), 
/* 23 */   RESULT_MSISDN("resultMsisdn"), 
/* 24 */   RESULT_ERRORCODE("resultErrorCode"), 
/* 25 */   RESULT_ERRORMESSAGE("resultErrorMessage"), 
/* 26 */   RESULT_ERRORDETAIL("resultErrorDetail"), 
/* 27 */   LOG_MESSAGE("logMessage"), 
/* 28 */   SUPPORT_URL("supportUrl"), 
/* 29 */   BACK_BUTTON_CANCEL_TEXT("backButtonCancelText"), 
/* 30 */   BACK_BUTTON_CANCEL_CONFIRM_TEXT("backButtonCancelConfirmText"), 
/* 31 */   BACK_BUTTON_CANCEL_DECLINE_TEXT("backButtonCancelDeclineText");
/*    */ 
/*    */   private final String text;
/*    */ 
/*    */   private JavascriptParameters(String pName)
/*    */   {
/* 38 */     this.text = pName;
/*    */   }
/*    */ 
/*    */   public static String[] getInitParams()
/*    */   {
/* 43 */     String[] strings = new String[10];
/* 44 */     strings[0] = GUID.toString();
/* 45 */     strings[1] = PROCESSING_TITLE.toString();
/* 46 */     strings[2] = PROCESSING_TEXT.toString();
/* 47 */     strings[3] = SEND_SMS_DOUBLE_CONFIRM_DIALOG_TEXT.toString();
/* 48 */     strings[4] = SEND_SMS_DOUBLE_CONFIRM_DIALOG_CONFIRM_TEXT.toString();
/* 49 */     strings[5] = SEND_SMS_DOUBLE_CONFIRM_DIALOG_DECLINE_TEXT.toString();
/* 50 */     strings[6] = SEND_SMS_DOUBLE_CONFIRM_DIALOG_CALLBACK_METHOD.toString();
/* 51 */     strings[7] = BACK_BUTTON_CANCEL_TEXT.toString();
/* 52 */     strings[8] = BACK_BUTTON_CANCEL_CONFIRM_TEXT.toString();
/* 53 */     strings[9] = BACK_BUTTON_CANCEL_DECLINE_TEXT.toString();
/* 54 */     return strings;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 62 */     return this.text;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.JavascriptParameters
 * JD-Core Version:    0.6.2
 */