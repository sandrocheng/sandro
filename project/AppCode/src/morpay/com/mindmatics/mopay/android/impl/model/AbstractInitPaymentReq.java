/*     */ package com.mindmatics.mopay.android.impl.model;
/*     */ 
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import java.io.Serializable;
/*     */ 
/*     */ public abstract class AbstractInitPaymentReq
/*     */   implements Serializable
/*     */ {
/*     */   private String userHash;
/*     */   private String productName;
/*     */   private String externalUid;
/*     */   private String token;
/*     */   private String msisdn;
/*     */   private String serviceName;
/*     */   private String myId;
/*     */   private String secret;
/*     */   private String backUrl;
/*     */   private int paymentType;
/*     */   private boolean loadResources;
/*     */   private Long reportingId;
/*     */ 
/*     */   public String getToken()
/*     */   {
/*  36 */     return this.token;
/*     */   }
/*     */ 
/*     */   public void setToken(String pToken)
/*     */   {
/*  43 */     this.token = pToken;
/*     */   }
/*     */ 
/*     */   public String getUserHash() {
/*  47 */     return this.userHash;
/*     */   }
/*     */ 
/*     */   public void setUserHash(String pUserHash) {
/*  51 */     this.userHash = pUserHash;
/*     */   }
/*     */ 
/*     */   public String getProductName() {
/*  55 */     return this.productName;
/*     */   }
/*     */ 
/*     */   public void setProductName(String pProductName) {
/*  59 */     this.productName = pProductName;
/*     */   }
/*     */ 
/*     */   public String getExternalUid() {
/*  63 */     return this.externalUid;
/*     */   }
/*     */ 
/*     */   public void setExternalUid(String pExternaluid) {
/*  67 */     if (pExternaluid != null) {
/*  68 */       this.externalUid = pExternaluid;
/*     */     } else {
/*  70 */       LogUtil.logD(AbstractInitPaymentReq.class, "calling setExternalUid() with 'null'-Parameter, setting externalUid to an empty String");
/*  71 */       this.externalUid = "";
/*     */     }
/*     */   }
/*     */ 
/*     */   public Long getReportingId() {
/*  76 */     return this.reportingId;
/*     */   }
/*     */ 
/*     */   public void setReportingId(Long pReportingId) {
/*  80 */     if (pReportingId != null) {
/*  81 */       this.reportingId = pReportingId;
/*     */     } else {
/*  83 */       LogUtil.logD(AbstractInitPaymentReq.class, "calling setReportingId() with 'null'-Parameter, setting reportingId to an 0L");
/*  84 */       this.reportingId = Long.valueOf(0L);
/*     */     }
/*     */   }
/*     */ 
/*     */   public boolean isLoadResources()
/*     */   {
/*  90 */     return this.loadResources;
/*     */   }
/*     */ 
/*     */   public String getMyId() {
/*  94 */     return this.myId;
/*     */   }
/*     */ 
/*     */   public void setMyId(String pMyId) {
/*  98 */     if (pMyId != null) {
/*  99 */       this.myId = pMyId;
/*     */     } else {
/* 101 */       LogUtil.logD(AbstractInitPaymentReq.class, "calling setMyId() with 'null'-Parameter, setting myId to an empty String");
/* 102 */       this.myId = "";
/*     */     }
/*     */   }
/*     */ 
/*     */   public int getPaymentType() {
/* 107 */     return this.paymentType;
/*     */   }
/*     */ 
/*     */   public void setPaymentType(int pPaymentType) {
/* 111 */     this.paymentType = pPaymentType;
/*     */   }
/*     */ 
/*     */   public String getSecret() {
/* 115 */     return this.secret;
/*     */   }
/*     */ 
/*     */   public void setSecret(String pSecret) {
/* 119 */     this.secret = pSecret;
/*     */   }
/*     */ 
/*     */   public String getBackUrl() {
/* 123 */     return this.backUrl;
/*     */   }
/*     */ 
/*     */   public void setBackUrl(String pBackUrl) {
/* 127 */     this.backUrl = pBackUrl;
/*     */   }
/*     */ 
/*     */   public String getServiceName() {
/* 131 */     return this.serviceName;
/*     */   }
/*     */ 
/*     */   public void setServiceName(String pServiceName) {
/* 135 */     this.serviceName = pServiceName;
/*     */   }
/*     */ 
/*     */   public String getMsisdn() {
/* 139 */     return this.msisdn;
/*     */   }
/*     */ 
/*     */   public void setMsisdn(String pMsisdn) {
/* 143 */     if (pMsisdn != null) {
/* 144 */       this.msisdn = pMsisdn;
/*     */     } else {
/* 146 */       LogUtil.logD(AbstractInitPaymentReq.class, "calling setMsisdn() with 'null'-Parameter, setting msisdn to an empty String");
/* 147 */       this.msisdn = "";
/*     */     }
/*     */   }
/*     */ 
/*     */   public void setLoadResources(boolean pLoadResources)
/*     */   {
/* 156 */     this.loadResources = pLoadResources;
/*     */   }
/*     */ 
/*     */   public String toString()
/*     */   {
/* 161 */     StringBuffer sb = new StringBuffer();
/* 162 */     sb.append(getClass().getSimpleName());
/* 163 */     sb.append("{userHash='").append(this.userHash).append('\'');
/* 164 */     sb.append(", productName='").append(this.productName).append('\'');
/* 165 */     sb.append(", myid='").append(this.myId).append('\'');
/* 166 */     sb.append(", externalUid='").append(this.externalUid).append('\'');
/* 167 */     sb.append(", reportingId=").append(this.reportingId);
/* 168 */     sb.append(", loadResources=").append(this.loadResources);
/*     */ 
/* 170 */     appendToString(sb);
/* 171 */     sb.append('}');
/* 172 */     return sb.toString();
/*     */   }
/*     */ 
/*     */   protected abstract void appendToString(StringBuffer paramStringBuffer);
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.AbstractInitPaymentReq
 * JD-Core Version:    0.6.2
 */