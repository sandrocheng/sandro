/*     */ package com.mindmatics.mopay.android.api.impl;
/*     */ 
/*     */ import java.io.Serializable;
/*     */ 
/*     */ public class PaymentReq
/*     */   implements Serializable
/*     */ {
/*     */   public static final String KEY_EXTRA_INFO = "Mopay4AndroidPaymentRequest";
/*     */   private static final long serialVersionUID = -1129041973562955101L;
/*     */   private String secret;
/*     */   private String buttonId;
/*     */   private String tariffKey;
/*     */   private String amount;
/*     */   private String currency;
/*     */   private Long projectId;
/*     */   private String token;
/*     */   private int paymentType;
/*     */   private String myId;
/*     */   private String productName;
/*     */   private String country;
/*     */   private String externalUid;
/*     */   private Long reportingId;
/*     */ 
/*     */   public String getSecret()
/*     */   {
/*  33 */     return this.secret;
/*     */   }
/*     */ 
/*     */   public void setSecret(String pSecret) {
/*  37 */     this.secret = pSecret;
/*     */   }
/*     */ 
/*     */   public String getToken() {
/*  41 */     return this.token;
/*     */   }
/*     */ 
/*     */   public void setToken(String pToken) {
/*  45 */     this.token = pToken;
/*     */   }
/*     */ 
/*     */   public String getButtonId() {
/*  49 */     return this.buttonId;
/*     */   }
/*     */ 
/*     */   public void setButtonId(String pButtonId) {
/*  53 */     this.buttonId = pButtonId;
/*     */   }
/*     */ 
/*     */   public String getTariffKey() {
/*  57 */     return this.tariffKey;
/*     */   }
/*     */ 
/*     */   public void setTariffKey(String pTariffKey) {
/*  61 */     this.tariffKey = pTariffKey;
/*     */   }
/*     */ 
/*     */   public String getAmount() {
/*  65 */     return this.amount;
/*     */   }
/*     */ 
/*     */   public void setAmount(String pAmount) {
/*  69 */     this.amount = pAmount;
/*     */   }
/*     */ 
/*     */   public String getCurrency() {
/*  73 */     return this.currency;
/*     */   }
/*     */ 
/*     */   public void setCurrency(String pCurrency) {
/*  77 */     this.currency = pCurrency;
/*     */   }
/*     */ 
/*     */   public Long getProjectId() {
/*  81 */     return this.projectId;
/*     */   }
/*     */ 
/*     */   public void setProjectId(Long pProjectId) {
/*  85 */     this.projectId = pProjectId;
/*     */   }
/*     */ 
/*     */   public int getPaymentType() {
/*  89 */     return this.paymentType;
/*     */   }
/*     */ 
/*     */   public void setPaymentType(int pPaymentType) {
/*  93 */     this.paymentType = pPaymentType;
/*     */   }
/*     */ 
/*     */   public String getMyId() {
/*  97 */     return this.myId;
/*     */   }
/*     */ 
/*     */   public void setMyId(String pMyId) {
/* 101 */     this.myId = pMyId;
/*     */   }
/*     */ 
/*     */   public String getProductName() {
/* 105 */     return this.productName;
/*     */   }
/*     */ 
/*     */   public void setProductName(String pProductName) {
/* 109 */     this.productName = pProductName;
/*     */   }
/*     */ 
/*     */   public String getCountry() {
/* 113 */     return this.country;
/*     */   }
/*     */ 
/*     */   public void setCountry(String pCountry) {
/* 117 */     this.country = pCountry;
/*     */   }
/*     */ 
/*     */   public String getExternalUid() {
/* 121 */     return this.externalUid;
/*     */   }
/*     */ 
/*     */   public void setExternalUid(String pExternalUid) {
/* 125 */     this.externalUid = pExternalUid;
/*     */   }
/*     */ 
/*     */   public Long getReportingId() {
/* 129 */     return this.reportingId;
/*     */   }
/*     */ 
/*     */   public void setReportingId(Long pReportingId) {
/* 133 */     this.reportingId = pReportingId;
/*     */   }
/*     */ 
/*     */   public String toString()
/*     */   {
/* 139 */     StringBuffer sb = new StringBuffer();
/* 140 */     sb.append("PaymentReq");
/* 141 */     sb.append("{secret='").append(this.secret).append('\'');
/* 142 */     sb.append(", buttonId='").append(this.buttonId).append('\'');
/* 143 */     sb.append(", tariffKey='").append(this.tariffKey).append('\'');
/* 144 */     sb.append(", amount='").append(this.amount).append('\'');
/* 145 */     sb.append(", currency='").append(this.currency).append('\'');
/* 146 */     sb.append(", projectId=").append(this.projectId);
/* 147 */     sb.append(", paymentType=").append(this.paymentType);
/* 148 */     sb.append(", myId='").append(this.myId).append('\'');
/* 149 */     sb.append(", productName='").append(this.productName).append('\'');
/* 150 */     sb.append(", country='").append(this.country).append('\'');
/* 151 */     sb.append(", externalUid='").append(this.externalUid).append('\'');
/* 152 */     sb.append(", reportingId=").append(this.reportingId);
/* 153 */     sb.append('}');
/* 154 */     return sb.toString();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.impl.PaymentReq
 * JD-Core Version:    0.6.2
 */