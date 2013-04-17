/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ public class PurchaseParam<T>
/*    */ {
/* 14 */   public static final PurchaseParam<String> MYID = new PurchaseParam("MYID");
/*    */ 
/* 20 */   public static final PurchaseParam<String> PRODUCT_NAME = new PurchaseParam("PRODUCT_NAME");
/*    */ 
/* 25 */   public static final PurchaseParam<String> EXTERNAL_UID = new PurchaseParam("EXTERNAL_UID");
/*    */ 
/* 30 */   public static final PurchaseParam<Long> REPORTING_ID = new PurchaseParam("REPORTING_ID");
/*    */ 
/* 35 */   public static final PurchaseParam<Long> SERVICE_NAME = new PurchaseParam("SERVICE_NAME");
/*    */   private final String key;
/*    */ 
/*    */   protected PurchaseParam(String pKey)
/*    */   {
/* 41 */     this.key = pKey;
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 46 */     return this.key;
/*    */   }
/*    */ 
/*    */   public boolean equals(Object pO)
/*    */   {
/* 51 */     if (this == pO) {
/* 52 */       return true;
/*    */     }
/* 54 */     if ((pO == null) || (getClass() != pO.getClass())) {
/* 55 */       return false;
/*    */     }
/*    */ 
/* 58 */     PurchaseParam that = (PurchaseParam)pO;
/*    */ 
/* 60 */     if (this.key != null ? !this.key.equals(that.key) : that.key != null) {
/* 61 */       return false;
/*    */     }
/*    */ 
/* 64 */     return true;
/*    */   }
/*    */ 
/*    */   public int hashCode()
/*    */   {
/* 69 */     return this.key != null ? this.key.hashCode() : 0;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.PurchaseParam
 * JD-Core Version:    0.6.2
 */