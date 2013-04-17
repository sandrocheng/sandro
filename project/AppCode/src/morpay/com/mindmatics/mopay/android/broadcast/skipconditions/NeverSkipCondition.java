/*    */ package com.mindmatics.mopay.android.broadcast.skipconditions;
/*    */ 
/*    */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsReceiver.SkipCondition;
/*    */ 
/*    */ public class NeverSkipCondition
/*    */   implements SmsReceiver.SkipCondition
/*    */ {
/*    */   public boolean skipInbox(SmsItem pSmsItem)
/*    */   {
/* 14 */     return false;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.skipconditions.NeverSkipCondition
 * JD-Core Version:    0.6.2
 */