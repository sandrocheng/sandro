/*     */ package com.mindmatics.mopay.android.broadcast;
/*     */ 
/*     */ import android.content.BroadcastReceiver;
/*     */ import android.content.Context;
/*     */ import android.content.Intent;
/*     */ import android.content.IntentFilter;
/*     */ import android.os.Bundle;
/*     */ import android.telephony.SmsMessage;
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import java.util.Collection;
/*     */ import java.util.Collections;
/*     */ import java.util.HashMap;
/*     */ import java.util.LinkedHashMap;
/*     */ import java.util.UUID;
/*     */ 
/*     */ public class SmsReceiver extends BroadcastReceiver
/*     */ {
/*     */   private static boolean listenForSms;
/*  37 */   private static final SmsReceiver INSTANCE = new SmsReceiver();
/*     */ 
/*  51 */   private static HashMap<String, SmsItem> messageStoreIn = new LinkedHashMap();
/*     */   private static SkipCondition activeSkipCondition;
/*     */ 
/*     */   public static void registerReceiver(Context pContext)
/*     */   {
/*  56 */     clear();
/*  57 */     startListeningForSms();
/*  58 */     IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
/*  59 */     pContext.registerReceiver(INSTANCE, filter);
/*     */   }
/*     */ 
/*     */   public static void unregisterReceiver(Context pContext) {
/*  63 */     stopListeningForSms();
/*  64 */     clear();
/*     */     try {
/*  66 */       pContext.unregisterReceiver(INSTANCE);
/*     */     } catch (Exception e) {
/*  68 */       LogUtil.logD(SmsReceiver.class, "Tried to unregister " + SmsReceiver.class.getSimpleName() + ", " + "but was not registered");
/*     */     }
/*     */   }
/*     */ 
/*     */   public static void setSkipCondition(SkipCondition pSkipCondition)
/*     */   {
/*  74 */     activeSkipCondition = pSkipCondition;
/*     */   }
/*     */ 
/*     */   public static void clearSkipCondition() {
/*  78 */     activeSkipCondition = null;
/*     */   }
/*     */ 
/*     */   public void onReceive(Context pContext, Intent pIntent)
/*     */   {
/*     */     try {
/*  84 */       LogUtil.logD(SmsReceiver.class, "onReceive() new message received");
/*     */ 
/*  87 */       Bundle bundle = pIntent.getExtras();
/*  88 */       if (bundle == null) {
/*  89 */         LogUtil.logD(this, "Missing extra / new messages not checked.");
/*  90 */         return;
/*     */       }
/*     */ 
/*  93 */       Object[] pdus = (Object[])bundle.get("pdus");
/*  94 */       if (pdus.length == 0) {
/*  95 */         LogUtil.logD(this, "No PDU found.");
/*  96 */         return;
/*     */       }
/*     */ 
/*  99 */       SmsMessage[] smsMessages = new SmsMessage[pdus.length];
/* 100 */       SmsItem lastItem = null;
/* 101 */       for (int i = 0; i < smsMessages.length; i++) {
/* 102 */         SmsMessage smsMessage = SmsMessage.createFromPdu((byte[])pdus[i]);
/* 103 */         smsMessages[i] = smsMessage;
/*     */ 
/* 105 */         long currentTime = smsMessage.getTimestampMillis();
/* 106 */         if (currentTime <= 0L) {
/* 107 */           LogUtil.logD(this, "Missing timestamp on received sms, taking current system time.");
/* 108 */           currentTime = System.currentTimeMillis();
/*     */         }
/*     */ 
/* 111 */         if ((lastItem != null) && (lastItem.getAddress().equals(smsMessage.getOriginatingAddress()))) {
/* 112 */           lastItem = new SmsItem(UUID.randomUUID().toString(), lastItem.getMessage() + smsMessage.getMessageBody(), smsMessage.getOriginatingAddress(), currentTime);
/*     */         }
/*     */         else
/*     */         {
/* 118 */           SmsItem smsItemBo = new SmsItem(UUID.randomUUID().toString(), smsMessage.getMessageBody(), smsMessage.getOriginatingAddress(), currentTime);
/*     */ 
/* 123 */           lastItem = smsItemBo;
/*     */         }
/*     */       }
/* 126 */       if ((listenForSms) && (lastItem != null))
/*     */       {
/* 128 */         messageStoreIn.put(lastItem.getUuid(), lastItem);
/* 129 */         LogUtil.logD(this, "NEW SMS added to store: " + lastItem);
/*     */       } else {
/* 131 */         LogUtil.logD(this, "Not listening for SMS, SMS not added to store: " + lastItem);
/*     */       }
/* 133 */       if ((activeSkipCondition != null) && (activeSkipCondition.skipInbox(lastItem)))
/* 134 */         abortBroadcast();
/*     */     }
/*     */     catch (Exception e) {
/* 137 */       LogUtil.logD(SmsReceiver.class, e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public static boolean hasMessages() {
/* 142 */     return (messageStoreIn != null) && (!messageStoreIn.isEmpty());
/*     */   }
/*     */ 
/*     */   public static Collection<SmsItem> getMessages() {
/* 146 */     return Collections.unmodifiableCollection(messageStoreIn.values());
/*     */   }
/*     */ 
/*     */   public static void startListeningForSms() {
/* 150 */     LogUtil.logD(SmsReceiver.class, "startListeningForSms");
/* 151 */     listenForSms = true;
/*     */   }
/*     */ 
/*     */   public static void clear() {
/* 155 */     messageStoreIn.clear();
/*     */   }
/*     */ 
/*     */   public static void stopListeningForSms() {
/* 159 */     LogUtil.logD(SmsReceiver.class, "stopListeningForSms");
/* 160 */     listenForSms = false;
/* 161 */     messageStoreIn.clear();
/*     */   }
/*     */ 
/*     */   public static abstract interface SkipCondition
/*     */   {
/*     */     public abstract boolean skipInbox(SmsItem paramSmsItem);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.SmsReceiver
 * JD-Core Version:    0.6.2
 */