/*    */ package com.mindmatics.mopay.android.broadcast.skipconditions;
/*    */ 
/*    */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsReceiver.SkipCondition;
/*    */ 
/*    */ public class MsisdnSkipCondition
/*    */   implements SmsReceiver.SkipCondition
/*    */ {
/*    */   private String msisdn;
/*    */ 
/*    */   public MsisdnSkipCondition(String pMsisdn)
/*    */   {
/* 16 */     this.msisdn = pMsisdn;
/*    */   }
/*    */ 
/*    */   public String getMsisdn() {
/* 20 */     return this.msisdn;
/*    */   }
/*    */ 
/*    */   public void setMsisdn(String pMsisdn) {
/* 24 */     this.msisdn = pMsisdn;
/*    */   }
/*    */ 
/*    */   public boolean skipInbox(SmsItem pSmsItem)
/*    */   {
/* 29 */     return this.msisdn.equals(pSmsItem.getAddress());
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.skipconditions.MsisdnSkipCondition
 * JD-Core Version:    0.6.2
 */