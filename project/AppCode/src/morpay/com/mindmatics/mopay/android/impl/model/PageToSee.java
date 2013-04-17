/*     */ package com.mindmatics.mopay.android.impl.model;
/*     */ 
/*     */ public enum PageToSee
/*     */   implements Page
/*     */ {
/*  11 */   LOAD("load"), 
/*  12 */   CHOOSE_COUNTRY("choose_country"), 
/*  13 */   MAIN("main"), 
/*  14 */   PAYPAL("paypal"), 
/*  15 */   LANDING("landing"), 
/*  16 */   MAIN_ERROR("error"), 
/*     */ 
/*  19 */   ENTER_CAPTCHA(0, true, false, true, false, false), 
/*  20 */   FINISH_CANCEL(3, false, true, true, true, false), 
/*  21 */   FINISH_ERROR(3, false, true, true, true, false), 
/*  22 */   FINISH_SUCCESS(3, false, true, true, true, false), 
/*  23 */   FINISH_INPROGRESS(3, false, true, true, true, false), 
/*  24 */   ERROR(3, false, true, true, true, false), 
/*     */ 
/*  27 */   SELECT_OPERATOR(1, true, false, true, false, false), 
/*  28 */   INPUT_MSISDN(1, true, true, true, false, true), 
/*  29 */   WEBFLOW(1, true, true, false, false, false), 
/*  30 */   INPUT_TAN(2, true, true, true, false, false), 
/*  31 */   INPUT_BILLING_TAN(2, true, true, true, false, true), 
/*  32 */   PROCESSING(2, false, true, false, false, false), 
/*  33 */   SEND_SMS(2, true, true, true, false, true), 
/*  34 */   HANDSHAKE(2, true, true, true, false, false), 
/*  35 */   VOICE_FALLBACK(3, true, true, true, false, false), 
/*  36 */   INPUT_EMAIL(1, true, true, true, false, false), 
/*     */ 
/*  38 */   MOCREDIT_FALLBACK_A(3, true, true, true, false, false), 
/*  39 */   MOCREDIT_FALLBACK_B(3, true, true, true, false, false), 
/*  40 */   ACCEPT_MOCREDIT(4, true, true, true, false, false), 
/*     */ 
/*  45 */   CHOOSE_VOICE_TYPE(1, true, true, true, false, false), 
/*  46 */   VOICE_TAN(1, true, true, true, false, false), 
/*  47 */   VOICE_PROCESS(2, true, true, true, false, false), 
/*  48 */   VOICE_REVERSE_TAN(2, true, true, true, false, false), 
/*     */ 
/*  51 */   ENTER_VOUCHER(1, true, true, true, false, false), 
/*  52 */   VOUCHER_DETAILS(2, true, true, true, false, false), 
/*     */ 
/*  54 */   ACCEPT_TERMS(2, true, true, true, false, true), 
/*     */ 
/*  57 */   SMS_SENT_PROCESSING(1, false, true, false, false, false);
/*     */ 
/*     */   private int stepNumber;
/*     */   private boolean cancelAllowed;
/*     */   private boolean refreshDisclaimer;
/*     */   private boolean showHelp;
/*     */   private String pageName;
/*     */   private boolean exitPoint;
/*     */   private boolean showVoucherLink;
/*     */ 
/*  69 */   private PageToSee(int pStepNumber, boolean pCancelAllowed, boolean pRefreshDisclaimer, boolean pShowHelp, boolean pExitpoint, boolean pShowVoucherLink) { this.stepNumber = pStepNumber;
/*  70 */     this.cancelAllowed = pCancelAllowed;
/*  71 */     this.refreshDisclaimer = pRefreshDisclaimer;
/*  72 */     this.showHelp = pShowHelp;
/*  73 */     this.exitPoint = pExitpoint;
/*  74 */     this.pageName = name().toLowerCase();
/*  75 */     this.showVoucherLink = pShowVoucherLink; }
/*     */ 
/*     */   private PageToSee(String pPageName)
/*     */   {
/*  79 */     this.pageName = pPageName;
/*     */   }
/*     */ 
/*     */   public int getStepNumber()
/*     */   {
/*  84 */     return this.stepNumber;
/*     */   }
/*     */ 
/*     */   public String getPageName()
/*     */   {
/*  89 */     return this.pageName;
/*     */   }
/*     */ 
/*     */   public boolean isCancelAllowed()
/*     */   {
/*  94 */     return this.cancelAllowed;
/*     */   }
/*     */ 
/*     */   public boolean isRefreshDisclaimer()
/*     */   {
/*  99 */     return this.refreshDisclaimer;
/*     */   }
/*     */ 
/*     */   public boolean isShowHelp()
/*     */   {
/* 104 */     return this.showHelp;
/*     */   }
/*     */ 
/*     */   public boolean isExitPoint()
/*     */   {
/* 109 */     return this.exitPoint;
/*     */   }
/*     */ 
/*     */   public boolean isShowVoucherLink()
/*     */   {
/* 114 */     return this.showVoucherLink;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.PageToSee
 * JD-Core Version:    0.6.2
 */