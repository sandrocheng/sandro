/*    */ package com.mindmatics.mopay.android.broadcast.skipconditions;
/*    */ 
/*    */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*    */ import com.mindmatics.mopay.android.broadcast.SmsReceiver.SkipCondition;
/*    */ import java.util.ArrayList;
/*    */ import java.util.regex.Matcher;
/*    */ import java.util.regex.Pattern;
/*    */ 
/*    */ public class ContentMatchesSkipCondition
/*    */   implements SmsReceiver.SkipCondition
/*    */ {
/*    */   private ArrayList<String> messageTextRegExp;
/*    */ 
/*    */   public ContentMatchesSkipCondition(ArrayList<String> pMessageTextRegExp)
/*    */   {
/* 20 */     this.messageTextRegExp = pMessageTextRegExp;
/*    */   }
/*    */ 
/*    */   public ContentMatchesSkipCondition(String pMessageTextRegExp) {
/* 24 */     this.messageTextRegExp = new ArrayList();
/* 25 */     this.messageTextRegExp.add(pMessageTextRegExp);
/*    */   }
/*    */ 
/*    */   public void addRegExp(String pRegExp) {
/* 29 */     this.messageTextRegExp.add(pRegExp);
/*    */   }
/*    */ 
/*    */   public ArrayList<String> getMessageTextRegExp() {
/* 33 */     return this.messageTextRegExp;
/*    */   }
/*    */ 
/*    */   public void setMessageTextRegExp(ArrayList<String> pMessageTextRegExp) {
/* 37 */     this.messageTextRegExp = pMessageTextRegExp;
/*    */   }
/*    */ 
/*    */   public boolean skipInbox(SmsItem pSmsItem)
/*    */   {
/* 42 */     for (String regExp : this.messageTextRegExp) {
/* 43 */       Matcher m = Pattern.compile(regExp).matcher(pSmsItem.getMessage());
/* 44 */       if (m.find()) {
/* 45 */         return true;
/*    */       }
/*    */     }
/* 48 */     return false;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.skipconditions.ContentMatchesSkipCondition
 * JD-Core Version:    0.6.2
 */