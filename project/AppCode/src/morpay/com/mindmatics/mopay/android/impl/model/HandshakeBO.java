/*    */ package com.mindmatics.mopay.android.impl.model;
/*    */ 
/*    */ public class HandshakeBO
/*    */ {
/*    */   private boolean handshakeSmsReceived;
/*    */   private boolean handshakeSmsSent;
/*    */   private String keyword;
/*    */   private String shortcode;
/*    */   private String handshakeSmsRegExp;
/*    */ 
/*    */   public HandshakeBO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public HandshakeBO(boolean pHandshakeSmsReceived, boolean pHandshakeSmsSent, String pKeyword, String pShortcode, String pHandshakeSmsRegExp)
/*    */   {
/* 19 */     this.handshakeSmsReceived = pHandshakeSmsReceived;
/* 20 */     this.handshakeSmsSent = pHandshakeSmsSent;
/* 21 */     this.keyword = pKeyword;
/* 22 */     this.shortcode = pShortcode;
/* 23 */     this.handshakeSmsRegExp = pHandshakeSmsRegExp;
/*    */   }
/*    */ 
/*    */   public String getKeyword() {
/* 27 */     return this.keyword;
/*    */   }
/*    */ 
/*    */   public void setKeyword(String pKeyword) {
/* 31 */     this.keyword = pKeyword;
/*    */   }
/*    */ 
/*    */   public String getShortcode() {
/* 35 */     return this.shortcode;
/*    */   }
/*    */ 
/*    */   public void setShortcode(String pShortcode) {
/* 39 */     this.shortcode = pShortcode;
/*    */   }
/*    */ 
/*    */   public boolean isHandshakeSmsSent() {
/* 43 */     return this.handshakeSmsSent;
/*    */   }
/*    */ 
/*    */   public void setHandshakeSmsSent(boolean pHandshakeSmsSent) {
/* 47 */     this.handshakeSmsSent = pHandshakeSmsSent;
/*    */   }
/*    */ 
/*    */   public boolean isHandshakeSmsReceived() {
/* 51 */     return this.handshakeSmsReceived;
/*    */   }
/*    */ 
/*    */   public void setHandshakeSmsReceived(boolean pHandshakeSmsReceived) {
/* 55 */     this.handshakeSmsReceived = pHandshakeSmsReceived;
/*    */   }
/*    */ 
/*    */   public String getHandshakeSmsRegExp() {
/* 59 */     return this.handshakeSmsRegExp;
/*    */   }
/*    */ 
/*    */   public void setHandshakeSmsRegExp(String pHandshakeSmsRegExp) {
/* 63 */     this.handshakeSmsRegExp = pHandshakeSmsRegExp;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.HandshakeBO
 * JD-Core Version:    0.6.2
 */