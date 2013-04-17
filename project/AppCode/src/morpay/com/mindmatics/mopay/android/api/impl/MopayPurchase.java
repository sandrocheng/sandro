/*    */ package com.mindmatics.mopay.android.api.impl;
/*    */ 
/*    */ import com.mindmatics.mopay.android.api.IMopayPurchase;
/*    */ import com.mindmatics.mopay.android.api.PurchaseParam;
/*    */ import java.util.HashMap;
/*    */ import java.util.Map;
/*    */ import java.util.Set;
/*    */ 
/*    */ public class MopayPurchase
/*    */   implements IMopayPurchase
/*    */ {
/*    */   public static final int TYPE_BUTTONID = 1;
/*    */   public static final int TYPE_TARIFFKEY = 2;
/*    */   public static final int TYPE_AMOUNT = 3;
/* 20 */   private final Map<PurchaseParam, String> kvPairs = new HashMap();
/*    */   private final String secret;
/*    */   private final int type;
/*    */ 
/*    */   public MopayPurchase(int pType, String pSecret)
/*    */   {
/* 26 */     this.type = pType;
/* 27 */     this.secret = pSecret;
/*    */   }
/*    */ 
/*    */   public String getSecret() {
/* 31 */     return this.secret;
/*    */   }
/*    */ 
/*    */   public void putParam(PurchaseParam pKey, String pValue) {
/* 35 */     this.kvPairs.put(pKey, pValue);
/*    */   }
/*    */ 
/*    */   public String getParamValue(Object pKey) {
/* 39 */     return (String)this.kvPairs.get(pKey);
/*    */   }
/*    */ 
/*    */   public Set<PurchaseParam> getParams() {
/* 43 */     return this.kvPairs.keySet();
/*    */   }
/*    */ 
/*    */   public int size() {
/* 47 */     return this.kvPairs.size();
/*    */   }
/*    */ 
/*    */   public String toString()
/*    */   {
/* 52 */     StringBuffer sb = new StringBuffer();
/* 53 */     sb.append("MopayPurchase");
/* 54 */     sb.append("{params=").append(this.kvPairs);
/* 55 */     sb.append('}');
/* 56 */     return sb.toString();
/*    */   }
/*    */ 
/*    */   public int getType()
/*    */   {
/* 61 */     return this.type;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.impl.MopayPurchase
 * JD-Core Version:    0.6.2
 */