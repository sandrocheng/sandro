/*     */ package com.mindmatics.mopay.android.impl.model;
/*     */ 
/*     */ import java.util.Date;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ 
/*     */ public class AndroidSession
/*     */ {
/*     */   private String guid;
/*     */   private String msisdn;
/*     */   private PageToSee pageToSee;
/*     */   private HandshakeBO handshakeBO;
/*     */   private BillingTanBO billingTanBO;
/*     */   private AuthenticationTanBO authenticationTanBO;
/*     */   private Map<String, String> initMap;
/*     */   private Map<String, String> sentSms;
/*     */   private Map<String, String> receivedSms;
/*     */   private String paymentStatus;
/*     */   private Date finishOptinLoopStarted;
/*     */ 
/*     */   public AndroidSession()
/*     */   {
/*  29 */     this.paymentStatus = "ERROR";
/*  30 */     this.guid = "";
/*  31 */     this.msisdn = "";
/*  32 */     this.sentSms = new HashMap();
/*  33 */     this.receivedSms = new HashMap();
/*  34 */     this.billingTanBO = new BillingTanBO();
/*  35 */     this.handshakeBO = new HandshakeBO();
/*  36 */     this.authenticationTanBO = new AuthenticationTanBO();
/*     */   }
/*     */ 
/*     */   public String getGuid() {
/*  40 */     return this.guid;
/*     */   }
/*     */ 
/*     */   public void setGuid(String pGuid) {
/*  44 */     this.guid = pGuid;
/*     */   }
/*     */ 
/*     */   public String getMsisdn() {
/*  48 */     return this.msisdn;
/*     */   }
/*     */ 
/*     */   public void setMsisdn(String pMsisdn) {
/*  52 */     this.msisdn = pMsisdn;
/*     */   }
/*     */ 
/*     */   public PageToSee getPageToSee() {
/*  56 */     return this.pageToSee;
/*     */   }
/*     */ 
/*     */   public void setPageToSee(PageToSee pPageToSee) {
/*  60 */     this.pageToSee = pPageToSee;
/*     */   }
/*     */ 
/*     */   public Map<String, String> getInitMap() {
/*  64 */     return this.initMap;
/*     */   }
/*     */ 
/*     */   public void setInitMap(Map<String, String> pInitMap) {
/*  68 */     this.initMap = pInitMap;
/*     */   }
/*     */ 
/*     */   public Map<String, String> getSentSms() {
/*  72 */     return this.sentSms;
/*     */   }
/*     */ 
/*     */   public void setSentSms(HashMap<String, String> pSentSms) {
/*  76 */     this.sentSms = pSentSms;
/*     */   }
/*     */ 
/*     */   public Map<String, String> getReceivedSms() {
/*  80 */     return this.receivedSms;
/*     */   }
/*     */ 
/*     */   public void setReceivedSms(Map<String, String> pReceivedSms) {
/*  84 */     this.receivedSms = pReceivedSms;
/*     */   }
/*     */ 
/*     */   public BillingTanBO getBillingTanBO() {
/*  88 */     return this.billingTanBO;
/*     */   }
/*     */ 
/*     */   public void setBillingTanBO(BillingTanBO pBillingTanBO) {
/*  92 */     this.billingTanBO = pBillingTanBO;
/*     */   }
/*     */ 
/*     */   public AuthenticationTanBO getAuthenticationTanBO() {
/*  96 */     return this.authenticationTanBO;
/*     */   }
/*     */ 
/*     */   public void setAuthenticationTanBO(AuthenticationTanBO pAuthenticationTanBO) {
/* 100 */     this.authenticationTanBO = pAuthenticationTanBO;
/*     */   }
/*     */ 
/*     */   public HandshakeBO getHandshakeBO() {
/* 104 */     return this.handshakeBO;
/*     */   }
/*     */ 
/*     */   public void setHandshakeBO(HandshakeBO pHandshakeBO) {
/* 108 */     this.handshakeBO = pHandshakeBO;
/*     */   }
/*     */ 
/*     */   public String getPaymentStatus() {
/* 112 */     return this.paymentStatus;
/*     */   }
/*     */ 
/*     */   public void setPaymentStatus(String pPaymentStatus) {
/* 116 */     this.paymentStatus = pPaymentStatus;
/*     */   }
/*     */ 
/*     */   public boolean isPaymentRelevantSMSSentOrRecieved() {
/* 120 */     if ((this.sentSms.isEmpty()) && (this.receivedSms.isEmpty())) {
/* 121 */       return false;
/*     */     }
/*     */ 
/* 124 */     return true;
/*     */   }
/*     */ 
/*     */   public Date getFinishOptinLoopStarted()
/*     */   {
/* 129 */     return this.finishOptinLoopStarted;
/*     */   }
/*     */ 
/*     */   public void setFinishOptinLoopStarted(Date pFinishOptinLoopStarted) {
/* 133 */     this.finishOptinLoopStarted = pFinishOptinLoopStarted;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.AndroidSession
 * JD-Core Version:    0.6.2
 */