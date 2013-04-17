/*    */ package com.mindmatics.mopay.android.impl.model;
/*    */ 
/*    */ public class AuthenticationTanBO
/*    */ {
/*    */   private String autheticationTan;
/*    */   private String autheticationTanRegExp;
/*    */ 
/*    */   public AuthenticationTanBO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public AuthenticationTanBO(String pAutheticationTan, String pAutheticationTanRegExp)
/*    */   {
/* 16 */     this.autheticationTan = pAutheticationTan;
/* 17 */     this.autheticationTanRegExp = pAutheticationTanRegExp;
/*    */   }
/*    */ 
/*    */   public String getAutheticationTan() {
/* 21 */     return this.autheticationTan;
/*    */   }
/*    */ 
/*    */   public void setAutheticationTan(String pAutheticationTan) {
/* 25 */     this.autheticationTan = pAutheticationTan;
/*    */   }
/*    */ 
/*    */   public String getAutheticationTanRegExp() {
/* 29 */     return this.autheticationTanRegExp;
/*    */   }
/*    */ 
/*    */   public void setAutheticationTanRegExp(String pAutheticationTanRegExp) {
/* 33 */     this.autheticationTanRegExp = pAutheticationTanRegExp;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.AuthenticationTanBO
 * JD-Core Version:    0.6.2
 */