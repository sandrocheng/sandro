/*    */ package com.mindmatics.mopay.android.impl;
/*    */ 
/*    */ import android.content.Context;
/*    */ import android.os.AsyncTask;
/*    */ import com.mindmatics.mopay.android.impl.model.AbstractInitPaymentReq;
/*    */ import java.util.Map;
/*    */ 
/*    */ public abstract class AbstractRequestTask extends AsyncTask<Void, Void, Void>
/*    */ {
/* 15 */   protected final boolean androidAppParam = true;
/* 16 */   protected final String androidAppParamName = "androidapp";
/* 17 */   protected final String productNameParamName = "productname";
/* 18 */   protected final String myIdParamName = "myid";
/* 19 */   protected final String backUrl = "http://android.mopay.com";
/* 20 */   protected final String backUrlParamName = "backurl";
/* 21 */   protected final String serviceNameParamName = "servicename";
/* 22 */   protected final String externalUidParamName = "externaluid";
/* 23 */   protected final String msisdnParamName = "msisdn";
/* 24 */   protected final String encodingParamName = "encoding";
/* 25 */   protected final String checksumEncoding = "UTF-8";
/* 26 */   protected final String countryParamName = "country";
/* 27 */   protected final String reportingIdParamName = "reportingid";
/* 28 */   protected final String checksumEncodingParamName = "checksumencoding";
/* 29 */   protected final String backUrlTargetParamName = "backUrlTarget";
/* 30 */   protected final String tokenParamName = "token";
/* 31 */   protected final String refererHeaderName = "referer";
/* 32 */   protected final String referer = "http://android.mopay.com";
/* 33 */   protected final String userAgent = "Mopay in Android Request Task: Android app; contains \"Android mobile phone\" to match device detection";
/*    */   protected AbstractInitPaymentReq initPaymentReq;
/*    */   protected Context context;
/* 38 */   private final int paymentType = -1;
/*    */ 
/*    */   protected Void doInBackground(Void[] pVoids)
/*    */   {
/* 42 */     run();
/* 43 */     return null;
/*    */   }
/*    */ 
/*    */   public void run() {
/* 47 */     throw new UnsupportedOperationException("AbstractRequestTask can not be run");
/*    */   }
/*    */ 
/*    */   public Map<String, String> getParameterMap() {
/* 51 */     throw new UnsupportedOperationException("AbstractRequestTask can not be run");
/*    */   }
/*    */ 
/*    */   public int getPaymentType() {
/* 55 */     return -1;
/*    */   }
/*    */ 
/*    */   public AbstractInitPaymentReq getInitPaymentReq() {
/* 59 */     return this.initPaymentReq;
/*    */   }
/*    */ 
/*    */   public String toString() {
/* 63 */     StringBuffer sb = new StringBuffer();
/* 64 */     sb.append(getClass().getSimpleName());
/* 65 */     sb.append("{myid='").append(this.initPaymentReq.getMyId()).append('\'');
/* 66 */     sb.append(", backurl='").append(this.initPaymentReq.getBackUrl()).append('\'');
/* 67 */     sb.append(", productname='").append(this.initPaymentReq.getProductName()).append('\'');
/* 68 */     sb.append(", servicename='").append(this.initPaymentReq.getServiceName()).append('\'');
/* 69 */     sb.append(", externaluid='").append(this.initPaymentReq.getExternalUid()).append('\'');
/* 70 */     sb.append(", reportingid=").append(this.initPaymentReq.getReportingId()).append('\'');
/* 71 */     sb.append(", msisdn=").append(this.initPaymentReq.getMsisdn()).append('\'');
/* 72 */     sb.append(", encoding=").append("UTF-8").append('\'');
/* 73 */     sb.append('}');
/* 74 */     return sb.toString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.AbstractRequestTask
 * JD-Core Version:    0.6.2
 */