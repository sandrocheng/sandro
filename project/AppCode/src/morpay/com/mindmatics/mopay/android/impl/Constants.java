/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import java.text.NumberFormat;
/*     */ import java.util.Locale;
/*     */ 
/*     */ public class Constants
/*     */ {
/*     */   public static final long POLL_INTERVAL_MSEC_FOR_TAN_OR_SMS = 500L;
/*     */   public static final long MAX_WAIT_SECONDS_SMS_SENT = 15L;
/*     */   public static final long POLL_INTERVAL_MIN_MSEC_FOR_QUERY_STATUS = 1000L;
/*     */   public static final long HTTP_CONNECTION_TIMEOUT_MSEC = 30000L;
/*     */   public static final long HTTP_SO_TIMEOUT_MSEC = 30000L;
/*     */   public static final String JSON_CHARSET = "UTF-8";
/*     */   public static final String SDK_VERSION = "0.1";
/*     */   public static final int MAX_SMS_TEXT_LENGTH = 120;
/*     */   public static final String SMS_INTENT_RESULT_SENT = "SMS_SENT";
/*     */   public static final String SMS_RECEIVED_ACTION = "android.provider.Telephony.SMS_RECEIVED";
/*     */   public static final long SEND_SMS_TIMEOUT = 15000L;
/*     */   public static final String JAVASCRIPT_INTERFACE_NAME = "mopayJsInterface";
/*     */   public static final String CONTENT_SMS_SENT = "content://sms/sent";
/*     */   public static final String CONTENT_SMS_RECEIVED = "content://sms/inbox";
/*     */   public static final int MESSAGE_TYPE_SENT = 2;
/*     */   public static final long QUERY_STATUS_MAX_IN_PROGRESS = 120L;
/*     */   public static final long QUERY_STATUS_DELAY = 4000L;
/*     */ 
/*     */   public static String formatMoneyDefault(double pValue)
/*     */   {
/* 103 */     String format = formatMoney(pValue, 4);
/* 104 */     if (format.endsWith("00")) {
/* 105 */       return format.substring(0, format.length() - 2);
/*     */     }
/* 107 */     return format;
/*     */   }
/*     */ 
/*     */   public static String formatMoney(double pAmount, int pFracDig)
/*     */   {
/* 112 */     NumberFormat nf = NumberFormat.getNumberInstance(Locale.ENGLISH);
/* 113 */     nf.setMaximumFractionDigits(pFracDig);
/* 114 */     nf.setMinimumFractionDigits(pFracDig);
/* 115 */     return nf.format(pAmount);
/*     */   }
/*     */ 
/*     */   public static String formatMoney4Digits(double pAmount) {
/* 119 */     return formatMoney(pAmount, 4);
/*     */   }
/*     */ 
/*     */   public static double calculateNetFromGross(double pGrossAmount, double pVat)
/*     */   {
/* 134 */     return roundMoneyAmount(pGrossAmount / (1.0D + pVat));
/*     */   }
/*     */ 
/*     */   public static double calculateTaxFromGross(double pGrossAmount, double pVat)
/*     */   {
/* 148 */     return roundMoneyAmount(pGrossAmount - calculateNetFromGross(pGrossAmount, pVat));
/*     */   }
/*     */ 
/*     */   public static double roundMoneyAmount(double pAmount)
/*     */   {
/* 158 */     return Math.round(pAmount * 10000.0D) / 10000.0D;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.Constants
 * JD-Core Version:    0.6.2
 */