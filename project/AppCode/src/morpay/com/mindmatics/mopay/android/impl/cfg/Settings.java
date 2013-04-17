/*    */ package com.mindmatics.mopay.android.impl.cfg;
/*    */ 
/*    */ public class Settings
/*    */ {
/* 10 */   private static final Settings INSTANCE = new Settings();
/*    */ 
/* 12 */   private WsEnv webServiceEnvironment = WsEnv.PROD;
/*    */ 
/*    */   public WsEnv getWebServiceEnvironment()
/*    */   {
/* 22 */     return this.webServiceEnvironment;
/*    */   }
/*    */ 
/*    */   public void setWebServiceEnvironment(WsEnv pWebServiceEnvironment)
/*    */   {
/* 30 */     this.webServiceEnvironment = pWebServiceEnvironment;
/*    */   }
/*    */ 
/*    */   public static Settings getInstance() {
/* 34 */     return INSTANCE;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.cfg.Settings
 * JD-Core Version:    0.6.2
 */