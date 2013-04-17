/*     */ package com.mindmatics.mopay.android.api.impl;
/*     */ 
/*     */ import java.io.Serializable;
/*     */ 
/*     */ public class PaymentRes
/*     */   implements Serializable
/*     */ {
/*     */   public static final String KEY_EXTRA_INFO = "Mopay4AndroidPaymentResult";
/*     */   private static final long serialVersionUID = 1308847930920896314L;
/*     */   private String guid;
/*     */   private String paymentStatus;
/*     */   private String errorMessage;
/*     */   private String message;
/*     */   private Long errorCode;
/*     */   private Double amount;
/*     */   private String country;
/*     */   private String currency;
/*     */   private String msisdn;
/*     */   private Integer errorDetail;
/*     */ 
/*     */   public String getGuid()
/*     */   {
/*  29 */     return this.guid;
/*     */   }
/*     */ 
/*     */   public void setGuid(String pGuid) {
/*  33 */     this.guid = pGuid;
/*     */   }
/*     */ 
/*     */   public String getPaymentStatus() {
/*  37 */     return this.paymentStatus;
/*     */   }
/*     */ 
/*     */   public void setPaymentStatus(String pPaymentStatus) {
/*  41 */     this.paymentStatus = pPaymentStatus;
/*     */   }
/*     */ 
/*     */   public String getErrorMessage() {
/*  45 */     return this.errorMessage;
/*     */   }
/*     */ 
/*     */   public void setErrorMessage(String pErrorMessage) {
/*  49 */     this.errorMessage = pErrorMessage;
/*     */   }
/*     */ 
/*     */   public String getMessage() {
/*  53 */     return this.message;
/*     */   }
/*     */ 
/*     */   public void setMessage(String pMessage) {
/*  57 */     this.message = pMessage;
/*     */   }
/*     */ 
/*     */   public Long getErrorCode() {
/*  61 */     return this.errorCode;
/*     */   }
/*     */ 
/*     */   public void setErrorCode(Long pErrorCode) {
/*  65 */     this.errorCode = pErrorCode;
/*     */   }
/*     */ 
/*     */   public Double getAmount() {
/*  69 */     return this.amount;
/*     */   }
/*     */ 
/*     */   public void setAmount(Double pAmount) {
/*  73 */     this.amount = pAmount;
/*     */   }
/*     */ 
/*     */   public String getCountry() {
/*  77 */     return this.country;
/*     */   }
/*     */ 
/*     */   public void setCountry(String pCountry) {
/*  81 */     this.country = pCountry;
/*     */   }
/*     */ 
/*     */   public String getCurrency() {
/*  85 */     return this.currency;
/*     */   }
/*     */ 
/*     */   public void setCurrency(String pCurrency) {
/*  89 */     this.currency = pCurrency;
/*     */   }
/*     */ 
/*     */   public String getMsisdn() {
/*  93 */     return this.msisdn;
/*     */   }
/*     */ 
/*     */   public void setMsisdn(String pMsisdn) {
/*  97 */     this.msisdn = pMsisdn;
/*     */   }
/*     */ 
/*     */   public Integer getErrorDetail() {
/* 101 */     return this.errorDetail;
/*     */   }
/*     */ 
/*     */   public void setErrorDetail(Integer pErrorDetail) {
/* 105 */     this.errorDetail = pErrorDetail;
/*     */   }
/*     */ 
/*     */   public String getContentInfo() {
/* 109 */     StringBuffer sb = new StringBuffer();
/*     */ 
/* 111 */     sb.append("PaymentResponse- ");
/* 112 */     sb.append(" guid=" + this.guid);
/* 113 */     sb.append(" paymentStatus=" + this.paymentStatus);
/* 114 */     sb.append(" errorMess=" + this.errorMessage);
/* 115 */     sb.append(" message=" + this.message);
/* 116 */     sb.append(" errorCode=" + this.errorCode);
/* 117 */     sb.append(" amount=" + this.amount);
/* 118 */     sb.append(" country=" + this.country);
/* 119 */     sb.append(" currency=" + this.currency);
/* 120 */     sb.append(" msisdn=" + this.msisdn);
/* 121 */     sb.append(" errorDetail=" + this.errorDetail);
/*     */ 
/* 123 */     return sb.toString();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.impl.PaymentRes
 * JD-Core Version:    0.6.2
 */