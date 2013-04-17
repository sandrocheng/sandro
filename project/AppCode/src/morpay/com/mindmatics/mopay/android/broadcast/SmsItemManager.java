/*     */ package com.mindmatics.mopay.android.broadcast;
/*     */ 
/*     */ import android.content.ContentResolver;
/*     */ import android.content.Context;
/*     */ import android.net.Uri;
/*     */ import android.os.Build;
/*     */ import android.os.Build.VERSION;
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import java.text.SimpleDateFormat;
/*     */ import java.util.Date;
/*     */ import java.util.Map;
/*     */ import java.util.Set;
/*     */ import java.util.SimpleTimeZone;
/*     */ 
/*     */ public class SmsItemManager
/*     */ {
/*     */   public static void deleteReceivedSmsMessages(Context pContext, Map<String, String> pSmsMap)
/*     */   {
/*  27 */     Set keySet = pSmsMap.keySet();
/*  28 */     for (String key : keySet)
/*  29 */       deleteReceivedSmsMessage(pContext, key, (String)pSmsMap.get(key));
/*     */   }
/*     */ 
/*     */   public static void deleteReceivedSmsMessage(Context pContext, String pSmsNumber, String pSmsBody)
/*     */   {
/*     */     try
/*     */     {
/*  46 */       LogUtil.logD(SmsItemManager.class, "deleteReceivedSmsMessage(from=" + pSmsNumber + ",text=" + pSmsBody + ")");
/*     */ 
/*  48 */       ContentResolver contentResolver = pContext.getContentResolver();
/*  49 */       Uri smsUri = Uri.parse("content://sms/inbox");
/*     */ 
/*  51 */       String where = "address = ? and body = ?";
/*  52 */       String[] args = { pSmsNumber, pSmsBody };
/*  53 */       int nrRows = contentResolver.delete(smsUri, "address = ? and body = ?", args);
/*     */ 
/*  55 */       LogUtil.logD(SmsReceiver.class, "-------Deleted sms from address='" + pSmsNumber + "' with body='" + pSmsBody + "'. Rows affected: " + nrRows);
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  59 */       LogUtil.logD(SmsReceiver.class, "Failed to delete received message from inbox " + e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public static void deleteSentSmsMessages(Context pContext, Map<String, String> pSmsMap) {
/*  64 */     Set keySet = pSmsMap.keySet();
/*  65 */     for (String key : keySet)
/*  66 */       deleteSentSmsMessage(pContext, key, (String)pSmsMap.get(key));
/*     */   }
/*     */ 
/*     */   public static void deleteSentSmsMessage(Context pContext, String pSmsNumber, String pMessageText)
/*     */   {
/*     */     try {
/*  72 */       String fullMessage = prepareMessageContent(pMessageText);
/*  73 */       LogUtil.logD(SmsItemManager.class, "deleteSentSmsMessage(from=" + pSmsNumber + ",text=" + fullMessage + ")");
/*     */ 
/*  75 */       ContentResolver contentResolver = pContext.getContentResolver();
/*  76 */       Uri smsUri = Uri.parse("content://sms/sent");
/*     */ 
/*  78 */       String where = "address = ? and body = ?";
/*  79 */       String[] args = { pSmsNumber, fullMessage };
/*  80 */       int nrRows = contentResolver.delete(smsUri, "address = ? and body = ?", args);
/*     */ 
/*  82 */       LogUtil.logD(SmsReceiver.class, "-------Deleted sms from address='" + pSmsNumber + "' with body='" + fullMessage + "'. Rows affected: " + nrRows);
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  86 */       LogUtil.logD(SmsReceiver.class, "Failed to delete sent message from outbox" + e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public static String prepareMessageContent(String pMessage)
/*     */   {
/*  92 */     StringBuilder sb = new StringBuilder();
/*  93 */     sb.append(pMessage);
/*  94 */     sb.append("  ");
/*  95 */     Date date = new Date();
/*  96 */     SimpleDateFormat sdf = new SimpleDateFormat();
/*  97 */     sdf.setTimeZone(new SimpleTimeZone(0, "GMT"));
/*  98 */     sdf.applyPattern("dd MMM yyyy HH:mm:ss z");
/*  99 */     sb.append(sdf.format(date));
/* 100 */     sb.append(":");
/* 101 */     sb.append(Build.VERSION.SDK_INT);
/* 102 */     sb.append(":");
/* 103 */     sb.append(Build.DEVICE);
/* 104 */     sb.append(":");
/* 105 */     sb.append(Build.MODEL);
/* 106 */     sb.append(":");
/* 107 */     sb.append(Build.PRODUCT);
/* 108 */     sb.append(":");
/* 109 */     sb.append(System.getProperty("os.version"));
/*     */ 
/* 111 */     return sb.toString();
/*     */   }
/*     */ 
/*     */   public static void cleanupMessages(Context pContext, Map<String, String> pSendMessages, Map<String, String> pReceivedMessages)
/*     */   {
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.SmsItemManager
 * JD-Core Version:    0.6.2
 */