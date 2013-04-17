/*    */ package com.mindmatics.mopay.android.impl.ws;
/*    */ 
/*    */ public enum WsPath
/*    */ {
/* 12 */   Log("/log", 1), 
/* 13 */   DemoApp("/getDemoConfig", 1), 
/* 14 */   UserCancel("/userCancel", 1), 
/* 15 */   QueryStatus("/queryStatus", 1), 
/* 16 */   Status("/getStatus", 1), 
/* 17 */   Abort("/abortSession", 1), 
/* 18 */   QueryPin("/queryPinConfig", 1), 
/* 19 */   SubmitTan("/submitTan", 1), 
/* 20 */   BackToMerchant("/backToMerchant", 1);
/*    */ 
/*    */   private final String path;
/*    */   private final int version;
/*    */ 
/*    */   private WsPath(String pPath, int pVersion)
/*    */   {
/* 40 */     this.path = pPath;
/* 41 */     this.version = pVersion;
/*    */   }
/*    */ 
/*    */   public String getPath() {
/* 45 */     return this.path + "/v" + this.version;
/*    */   }
/*    */ 
/*    */   public String getPath(String pSubMethod) {
/* 49 */     return this.path + pSubMethod + "/v" + this.version;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.WsPath
 * JD-Core Version:    0.6.2
 */