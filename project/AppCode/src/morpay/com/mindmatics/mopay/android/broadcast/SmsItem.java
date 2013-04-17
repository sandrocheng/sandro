/*    */ package com.mindmatics.mopay.android.broadcast;
/*    */ 
/*    */ public class SmsItem
/*    */ {
/*    */   private final String uuid;
/*    */   private final String message;
/*    */   private final String address;
/*    */   private final long timeStampMillis;
/*    */ 
/*    */   public SmsItem(String pUuid, String pMessage, String pAddress, long pTimeStamp)
/*    */   {
/* 17 */     this.uuid = pUuid;
/* 18 */     this.address = pAddress;
/* 19 */     this.message = pMessage;
/* 20 */     this.timeStampMillis = pTimeStamp;
/*    */   }
/*    */ 
/*    */   public String getMessage()
/*    */   {
/* 27 */     return this.message;
/*    */   }
/*    */ 
/*    */   public String getAddress()
/*    */   {
/* 34 */     return this.address;
/*    */   }
/*    */ 
/*    */   public String getUuid() {
/* 38 */     return this.uuid;
/*    */   }
/*    */ 
/*    */   public long getTimeStampMillis() {
/* 42 */     return this.timeStampMillis;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 47 */     StringBuffer sb = new StringBuffer();
/* 48 */     sb.append("SmsItem");
/* 49 */     sb.append("{message='").append(this.message).append('\'');
/* 50 */     sb.append(", address='").append(this.address).append('\'');
/* 51 */     sb.append(", timeStampMillis='").append(this.timeStampMillis).append('\'');
/* 52 */     sb.append(", uuid='").append(this.uuid).append('\'');
/* 53 */     sb.append('}');
/* 54 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.broadcast.SmsItem
 * JD-Core Version:    0.6.2
 */