/*    */ package com.mindmatics.mopay.android.broadcast.skipconditions;
/*    */ 
/*    */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsReceiver.SkipCondition;
/*    */ import java.util.ArrayList;
/*    */ import java.util.regex.Matcher;
/*    */ import java.util.regex.Pattern;
/*    */ 
/*    */ public class ContentContainsSkipCondition
/*    */   implements SmsReceiver.SkipCondition
/*    */ {
/*    */   private ArrayList<String> messageTextRegExp;
/*    */ 
/*    */   public ContentContainsSkipCondition(String pMessageTextRegExp)
/*    */   {
/* 20 */     this.messageTextRegExp = new ArrayList();
/* 21 */     this.messageTextRegExp.add(pMessageTextRegExp);
/*    */   }
/*    */ 
/*    */   public ContentContainsSkipCondition(ArrayList<String> pMessageTextRegExp) {
/* 25 */     this.messageTextRegExp = new ArrayList();
/* 26 */     this.messageTextRegExp = pMessageTextRegExp;
/*    */   }
/*    */ 
/*    */   public ArrayList<String> getMessageTextRegExp() {
/* 30 */     return this.messageTextRegExp;
/*    */   }
/*    */ 
/*    */   public void setMessageTextRegExp(ArrayList<String> pMessageTextRegExp) {
/* 34 */     this.messageTextRegExp = pMessageTextRegExp;
/*    */   }
/*    */ 
/*    */   public boolean skipInbox(SmsItem pSmsItem)
/*    */   {
/* 39 */     for (String regExp : this.messageTextRegExp) {
/* 40 */       Matcher m = Pattern.compile(regExp).matcher(pSmsItem.getMessage());
/* 41 */       if (m.find()) {
/* 42 */         return true;
/*    */       }
/*    */     }
/* 45 */     return false;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.skipconditions.ContentContainsSkipCondition
 * JD-Core Version:    0.6.2
 */