/*    */ package com.mindmatics.mopay.android.impl.util;
/*    */ 
/*    */ import android.os.AsyncTask;
/*    */ import com.mindmatics.mopay.android.activity.MopayActivity;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsReceiver;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.MopayJsInterface;
/*    */ import java.util.Collection;
/*    */ import java.util.regex.Matcher;
/*    */ import java.util.regex.Pattern;
/*    */ 
/*    */ public class AwaitSmsTask extends AsyncTask<String, Void, Void>
/*    */ {
/*    */   private long firstProcessPaymentCall;
/*    */   private SmsItem smsFound;
/*    */   private String guid;
/*    */   private String regExp;
/*    */   private MopayJsInterface mopayJsInterface;
/*    */   private MopayActivity mopayActivity;
/*    */   private String tanType;
/*    */ 
/*    */   public AwaitSmsTask(MopayJsInterface pJsInterface, MopayActivity pMopayActivity, String pTanType)
/*    */   {
/* 30 */     this.mopayJsInterface = pJsInterface;
/* 31 */     this.mopayActivity = pMopayActivity;
/* 32 */     this.tanType = pTanType;
/*    */   }
/*    */ 
/*    */   protected Void doInBackground(String[] pStrings)
/*    */   {
/* 37 */     this.guid = pStrings[0];
/* 38 */     this.regExp = pStrings[1];
/* 39 */     this.firstProcessPaymentCall = System.currentTimeMillis();
/* 40 */     execute();
/* 41 */     return null;
/*    */   }
/*    */ 
/*    */   private void execute() {
/* 45 */     int processPaymentAgeInSec = (int)((System.currentTimeMillis() - this.firstProcessPaymentCall) / 1000L);
/*    */ 
/* 47 */     while ((this.smsFound == null) && (this.firstProcessPaymentCall != 0L) && (processPaymentAgeInSec < 120L))
/*    */     {
/* 49 */       processPaymentAgeInSec = (int)((System.currentTimeMillis() - this.firstProcessPaymentCall) / 1000L);
/*    */       try {
/* 51 */         synchronized (this) {
/* 52 */           wait(4000L);
/*    */         }
/*    */       } catch (InterruptedException e) {
/* 55 */         LogUtil.logD(this, "Searching for Sms failed: " + e);
/*    */       }
/* 57 */       this.smsFound = searchForSms();
/*    */     }
/*    */   }
/*    */ 
/*    */   private SmsItem searchForSms()
/*    */   {
/* 63 */     SmsItem messageFound = null;
/*    */     Pattern p;
/* 64 */     if (SmsReceiver.hasMessages()) {
/* 65 */       Collection items = SmsReceiver.getMessages();
/* 66 */       p = Pattern.compile(this.regExp);
/* 67 */       for (SmsItem item : items) {
/* 68 */         Matcher m = p.matcher(item.getMessage());
/* 69 */         if (m.find()) {
/* 70 */           messageFound = item;
/*    */         }
/*    */       }
/*    */     }
/* 74 */     return messageFound;
/*    */   }
/*    */ 
/*    */   protected void onPostExecute(Void pResult)
/*    */   {
/* 79 */     this.mopayJsInterface.submitTan(this.smsFound, this.tanType);
/* 80 */     this.firstProcessPaymentCall = 0L;
/* 81 */     this.smsFound = null;
/* 82 */     this.guid = null;
/* 83 */     this.regExp = null;
/* 84 */     this.mopayJsInterface = null;
/* 85 */     this.mopayActivity = null;
/* 86 */     this.tanType = null;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.util.AwaitSmsTask
 * JD-Core Version:    0.6.2
 */