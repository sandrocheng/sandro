/*     */ package com.mindmatics.mopay.android.api;
/*     */ 
/*     */ import android.app.Activity;
/*     */ import android.content.ActivityNotFoundException;
/*     */ import android.content.Intent;
/*     */ import android.os.Handler;
/*     */ import android.text.TextUtils;
/*     */ import com.mindmatics.mopay.android.activity.MopayActivity;
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import com.mindmatics.mopay.android.impl.model.AbstractInitPaymentReq;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByButtonIdReq;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByTariffKeyReq;
/*     */ import java.util.HashMap;
/*     */ import java.util.Locale;
/*     */ 
/*     */ public class MopayClient
/*     */   implements IMopayClient
/*     */ {
/*     */   private Handler threadCallback;
/*     */   private final Activity currentActivity;
/*     */   private final IMopayClient currentMopayClient;
/*  27 */   private final HashMap<String, String> mopayConfiguration = new HashMap();
/*     */ 
/*     */   public MopayClient(Activity pCurrentActivity)
/*     */   {
/*  37 */     this.currentActivity = pCurrentActivity;
/*  38 */     this.currentMopayClient = this;
/*  39 */     LogUtil.logD(MopayClient.class, "System language: " + getSystemLanguage());
/*     */   }
/*     */ 
/*     */   public boolean startPayment(IMopayPurchase pMopayPurchase)
/*     */   {
/*  48 */     boolean rtn = true;
/*  49 */     Intent mopayIntent = new Intent(this.currentActivity, MopayActivity.class);
/*     */     AbstractInitPaymentReq request;
/*  53 */     switch (pMopayPurchase.getType()) {
/*     */     case 1:
/*  55 */       request = new InitPaymentByButtonIdReq();
/*  56 */       addButtonIdParameters((InitPaymentByButtonIdReq)request, pMopayPurchase);
/*  57 */       break;
/*     */     case 2:
/*  60 */       request = new InitPaymentByTariffKeyReq();
/*  61 */       addTariffKeyParameters((InitPaymentByTariffKeyReq)request, pMopayPurchase);
/*  62 */       break;
/*     */     default:
/*  65 */       LogUtil.logD(MopayClient.class, "Unknown payment type number='" + pMopayPurchase.getType() + "'  used.");
/*  66 */       return false;
/*     */     }
/*     */ 
/*  69 */     request.setPaymentType(pMopayPurchase.getType());
/*  70 */     request.setSecret(pMopayPurchase.getSecret());
/*     */ 
/*  72 */     LogUtil.logD(MopayActivity.class, "Request object is: " + request.toString());
/*     */ 
/*  74 */     mopayIntent.putExtra("Mopay4AndroidPaymentRequest", request);
/*     */     try
/*     */     {
/*  77 */       this.currentActivity.startActivityForResult(mopayIntent, 31111);
/*     */     } catch (ActivityNotFoundException e) {
/*  79 */       LogUtil.logD(MopayClient.class, "Missing mopay activity - check AndroidManifest.xml");
/*  80 */       rtn = false;
/*     */     } catch (Exception e) {
/*  82 */       LogUtil.logD(MopayClient.class, "Start payment failed. Exception=" + e.getMessage());
/*  83 */       rtn = false;
/*     */     }
/*     */ 
/*  86 */     return rtn;
/*     */   }
/*     */ 
/*     */   private void addCommonParameters(AbstractInitPaymentReq pRequest, IMopayPurchase pClientsMopayPurchase)
/*     */   {
/*  93 */     pRequest.setMyId(pClientsMopayPurchase.getParamValue(PurchaseParam.MYID));
/*  94 */     pRequest.setProductName(pClientsMopayPurchase.getParamValue(PurchaseParam.PRODUCT_NAME));
/*     */ 
/*  96 */     if (!TextUtils.isEmpty(pClientsMopayPurchase.getParamValue(PurchaseParam.SERVICE_NAME))) {
/*  97 */       pRequest.setServiceName(pClientsMopayPurchase.getParamValue(PurchaseParam.SERVICE_NAME));
/*     */     }
/*     */ 
/* 100 */     if (!TextUtils.isEmpty(pClientsMopayPurchase.getParamValue(PurchaseParam.EXTERNAL_UID))) {
/* 101 */       pRequest.setExternalUid(pClientsMopayPurchase.getParamValue(PurchaseParam.EXTERNAL_UID));
/*     */     }
/*     */ 
/* 104 */     String sReportingId = pClientsMopayPurchase.getParamValue(PurchaseParamByTariffKey.REPORTING_ID);
/* 105 */     if ((!TextUtils.isEmpty(sReportingId)) && (TextUtils.isDigitsOnly(sReportingId)))
/* 106 */       pRequest.setReportingId(Long.valueOf(Long.parseLong(sReportingId)));
/*     */   }
/*     */ 
/*     */   private void addButtonIdParameters(InitPaymentByButtonIdReq pRequest, IMopayPurchase pClientsMopayPurchase)
/*     */   {
/* 116 */     pRequest.setButtonId(pClientsMopayPurchase.getParamValue(PurchaseParamByButtonId.BUTTON_ID));
/* 117 */     LogUtil.logD(MopayClient.class, "added ButtonID= " + pRequest.getButtonId());
/* 118 */     if (!TextUtils.isEmpty(pClientsMopayPurchase.getParamValue(PurchaseParamByButtonId.COUNTRY))) {
/* 119 */       pRequest.setCountry(pClientsMopayPurchase.getParamValue(PurchaseParamByButtonId.COUNTRY));
/*     */     }
/* 121 */     addCommonParameters(pRequest, pClientsMopayPurchase);
/*     */   }
/*     */ 
/*     */   private void addTariffKeyParameters(InitPaymentByTariffKeyReq pRequest, IMopayPurchase pClientsMopayPurchase)
/*     */   {
/* 128 */     pRequest.setTariffKey(pClientsMopayPurchase.getParamValue(PurchaseParamByTariffKey.TARIFF_KEY));
/*     */ 
/* 130 */     String sProjectId = pClientsMopayPurchase.getParamValue(PurchaseParamByTariffKey.PROJECT_ID);
/* 131 */     if ((!TextUtils.isEmpty(sProjectId)) && (TextUtils.isDigitsOnly(sProjectId))) {
/* 132 */       pRequest.setProjectId(Long.valueOf(Long.parseLong(sProjectId)));
/*     */     }
/* 134 */     addCommonParameters(pRequest, pClientsMopayPurchase);
/*     */   }
/*     */ 
/*     */   private String getSystemLanguage() {
/* 138 */     Locale locale = Locale.getDefault();
/* 139 */     return locale.getLanguage();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.MopayClient
 * JD-Core Version:    0.6.2
 */