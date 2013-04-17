/*     */ package com.mindmatics.mopay.android.activity;
/*     */ 
/*     */ import android.app.Activity;
/*     */ import android.app.AlertDialog.Builder;
/*     */ import android.app.ProgressDialog;
/*     */ import android.content.DialogInterface;
/*     */ import android.content.DialogInterface.OnClickListener;
/*     */ import android.content.Intent;
/*     */ import android.content.res.Configuration;
/*     */ import android.os.Bundle;
/*     */ import android.telephony.TelephonyManager;
/*     */ import android.view.Menu;
/*     */ import android.view.MenuItem;
/*     */ import android.webkit.WebView;
/*     */ import android.widget.FrameLayout;
/*     */ import android.widget.LinearLayout;
/*     */ import com.mindmatics.mopay.android.api.impl.PaymentRes;
/*     */ import com.mindmatics.mopay.android.broadcast.SmsItemManager;
/*     */ import com.mindmatics.mopay.android.broadcast.SmsReceiver;
/*     */ import com.mindmatics.mopay.android.broadcast.skipconditions.NeverSkipCondition;
/*     */ import com.mindmatics.mopay.android.impl.AbstractRequestTask;
/*     */ import com.mindmatics.mopay.android.impl.ApplicationErrorRTException;
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import com.mindmatics.mopay.android.impl.MopayJsInterface;
/*     */ import com.mindmatics.mopay.android.impl.RequestCreator;
/*     */ import com.mindmatics.mopay.android.impl.StaticMessages;
/*     */ import com.mindmatics.mopay.android.impl.UiBuilder;
/*     */ import com.mindmatics.mopay.android.impl.cfg.Settings;
/*     */ import com.mindmatics.mopay.android.impl.cfg.WsEnv;
/*     */ import com.mindmatics.mopay.android.impl.model.AbstractInitPaymentReq;
/*     */ import com.mindmatics.mopay.android.impl.model.AndroidSession;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByButtonIdReq;
/*     */ import com.mindmatics.mopay.android.impl.model.InitPaymentByTariffKeyReq;
/*     */ import com.mindmatics.mopay.android.impl.util.AndroidSDKUtil;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.AbortSessionDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IAbortSessionSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.ILogSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IUserCancelSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.LogDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.UserCancelDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.JsonRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.LogReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.UserCancelRes;
/*     */ 
/*     */ public class MopayActivity extends Activity
/*     */   implements IAbortSessionSuccess, ILogSuccess, IUserCancelSuccess
/*     */ {
/*     */   private static final int MENU_SEND_SMS = 1;
/*     */   private static final int MENU_BILLING_ERROR = 2;
/*     */   private static MopayActivity activity;
/*     */   private static ProgressDialog initialLoadingDialog;
/*     */   private AndroidSession session;
/*     */   private LinearLayout layoutMain;
/*     */   private FrameLayout webViewPlaceholder;
/*     */   private WebView webView;
/*  66 */   private static String closeMessage = "Do you really want to cancel the payment?";
/*  67 */   private static String initialLoadingMessage = "Loading...";
/*  68 */   private String closeButtonPositive = "Yes";
/*  69 */   private String closeButtonNegative = "No";
/*     */   private MopayJsInterface jsInterface;
/*     */ 
/*     */   public static MopayActivity getInstance()
/*     */   {
/*  76 */     return activity;
/*     */   }
/*     */ 
/*     */   public void onCreate(Bundle pSavedInstanceState)
/*     */   {
/*     */     try
/*     */     {
/*  87 */       activity = this;
/*  88 */       LogUtil.logD(MopayActivity.class, "MopayActivity created, payment started.");
/*  89 */       requestWindowFeature(1);
/*  90 */       super.onCreate(pSavedInstanceState);
/*  91 */       this.session = new AndroidSession();
/*  92 */       this.session.setMsisdn(getMsisdn());
/*  93 */       requestWindowFeature(5);
/*  94 */       this.jsInterface = new MopayJsInterface(this);
/*  95 */       this.layoutMain = UiBuilder.getMainLayout(getApplicationContext(), this.jsInterface);
/*  96 */       this.webViewPlaceholder = ((FrameLayout)this.layoutMain.findViewById(1002));
/*  97 */       this.layoutMain.setVisibility(0);
/*  98 */       setContentView(this.layoutMain);
/*     */ 
/* 100 */       loadWebView();
/* 101 */       SmsReceiver.registerReceiver(getApplicationContext());
/* 102 */       SmsReceiver.setSkipCondition(new NeverSkipCondition());
/*     */       try
/*     */       {
/* 107 */         Class.forName("android.os.AsyncTask");
/*     */       } catch (ClassNotFoundException e) {
/* 109 */         LogUtil.logD(this, "Catched ClassNotFoundException for \"android.os.AsyncTask\". Caused by Android API < 1.5");
/*     */       }
/*     */     }
/*     */     catch (Exception e) {
/* 113 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void loadWebView()
/*     */   {
/* 124 */     if (AndroidSDKUtil.networkConnectionActive(this))
/*     */     {
/* 127 */       this.webViewPlaceholder = ((FrameLayout)this.layoutMain.findViewById(1002));
/* 128 */       if (this.webView == null) {
/* 129 */         this.webView = UiBuilder.buildWebView(this);
/*     */ 
/* 131 */         String requestUrl = null;
/* 132 */         byte[] postparams = null;
/* 133 */         AbstractRequestTask requestTask = null;
/*     */ 
/* 135 */         if (((AbstractInitPaymentReq)getIntent().getExtras().get("Mopay4AndroidPaymentRequest")).getPaymentType() == 1) {
/* 136 */           requestUrl = RequestCreator.getRequestByButtonUrl();
/* 137 */           postparams = RequestCreator.getRequestByButtonParamString((InitPaymentByButtonIdReq)getIntent().getExtras().get("Mopay4AndroidPaymentRequest"));
/* 138 */         } else if (((AbstractInitPaymentReq)getIntent().getExtras().get("Mopay4AndroidPaymentRequest")).getPaymentType() == 2) {
/* 139 */           requestUrl = RequestCreator.getRequestByTariffUrl();
/* 140 */           postparams = RequestCreator.getRequestByTariffParamString((InitPaymentByTariffKeyReq)getIntent().getExtras().get("Mopay4AndroidPaymentRequest"));
/*     */         } else {
/* 142 */           returnResultForInternalSdkError(new IllegalStateException("Unexpected InitPayment object"));
/* 143 */           return;
/*     */         }
/* 145 */         if ((requestUrl != null) && (postparams != null))
/*     */           try {
/* 147 */             this.webView.postUrl(requestUrl, postparams);
/* 148 */             this.webViewPlaceholder.addView(this.webView);
/*     */           } catch (Exception e) {
/* 150 */             returnConnectionError("HTTP Request failed, payment canceled");
/*     */           }
/*     */         else {
/* 153 */           returnResultForInternalSdkError(new ApplicationErrorRTException(20090801L));
/*     */         }
/*     */       }
/*     */       else
/*     */       {
/* 158 */         this.webViewPlaceholder.addView(this.webView);
/*     */       }
/*     */     }
/*     */     else
/*     */     {
/* 163 */       returnConnectionError("No connection available, payment canceled");
/*     */     }
/*     */   }
/*     */ 
/*     */   public void onStop()
/*     */   {
/* 172 */     super.onStop();
/*     */   }
/*     */ 
/*     */   public void onPause()
/*     */   {
/*     */     try {
/* 178 */       super.onPause();
/*     */       try {
/* 180 */         if (this.jsInterface != null) {
/* 181 */           this.jsInterface.cleanTimers();
/*     */         }
/* 183 */         SmsReceiver.unregisterReceiver(getApplicationContext());
/*     */       }
/*     */       catch (Exception e) {
/* 186 */         LogUtil.logD(this, "Tried to unregister " + SmsReceiver.class.getSimpleName() + ", " + "but was not registered");
/*     */       }
/*     */ 
/* 189 */       SmsItemManager.cleanupMessages(this, this.session.getSentSms(), this.session.getReceivedSms());
/*     */     } catch (Exception e) {
/* 191 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   protected void onRestart()
/*     */   {
/* 197 */     super.onRestart();
/* 198 */     SmsReceiver.registerReceiver(getApplicationContext());
/*     */   }
/*     */ 
/*     */   public void onConfigurationChanged(Configuration pNewConfig)
/*     */   {
/* 210 */     super.onConfigurationChanged(pNewConfig);
/*     */     try {
/* 212 */       if (this.webView != null)
/*     */       {
/* 214 */         this.webViewPlaceholder.removeView(this.webView);
/*     */       }
/*     */ 
/* 217 */       setContentView(this.layoutMain.findViewById(1001));
/*     */ 
/* 220 */       loadWebView();
/*     */     } catch (Exception e) {
/* 222 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   protected void onSaveInstanceState(Bundle pOutState)
/*     */   {
/* 233 */     super.onSaveInstanceState(pOutState);
/*     */     try
/*     */     {
/* 236 */       this.webView.saveState(pOutState);
/*     */     } catch (Exception e) {
/* 238 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   protected void onRestoreInstanceState(Bundle pSavedInstanceState)
/*     */   {
/*     */     try
/*     */     {
/* 250 */       super.onRestoreInstanceState(pSavedInstanceState);
/*     */ 
/* 253 */       this.webView.restoreState(pSavedInstanceState);
/*     */     } catch (Exception e) {
/* 255 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void onBackPressed()
/*     */   {
/*     */     try
/*     */     {
/* 265 */       DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener()
/*     */       {
/*     */         public void onClick(DialogInterface pDialog, int pDialogResult) {
/* 268 */           if (pDialogResult == -1)
/* 269 */             if (AndroidSDKUtil.networkConnectionActive(MopayActivity.getInstance()))
/*     */             {
/* 271 */               AbortSessionDAO abortSessionDAO = new AbortSessionDAO();
/*     */               try {
/* 273 */                 abortSessionDAO.abortPayment(MopayActivity.this.session.getGuid(), 10210111L);
/* 274 */                 MopayActivity.this.returnUserCanceled();
/*     */               } catch (DataAccessException e) {
/* 276 */                 LogUtil.logD(this, "DataAccessException while aborting session.");
/*     */               } finally {
/* 278 */                 MopayActivity.this.returnUserCanceled();
/*     */               }
/*     */             } else {
/* 281 */               MopayActivity.this.returnUserCanceled();
/*     */             }
/*     */         }
/*     */       };
/* 286 */       AlertDialog.Builder builder = new AlertDialog.Builder(this);
/* 287 */       builder.setMessage(closeMessage).setPositiveButton(this.closeButtonPositive, dialogClickListener).setNegativeButton(this.closeButtonNegative, dialogClickListener).show();
/*     */     }
/*     */     catch (Exception e) {
/* 290 */       returnResultForInternalSdkError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public boolean onCreateOptionsMenu(Menu pMenu)
/*     */   {
/* 302 */     boolean rtn = super.onCreateOptionsMenu(pMenu);
/*     */     try {
/* 304 */       if (Settings.getInstance().getWebServiceEnvironment() == WsEnv.DEV) {
/* 305 */         pMenu.add(0, 1, 0, "Send SMS");
/* 306 */         pMenu.add(0, 2, 0, "Simluate Billing Error");
/*     */       }
/*     */     } catch (Exception e) {
/* 309 */       returnResultForInternalSdkError(e);
/*     */     }
/* 311 */     return rtn;
/*     */   }
/*     */ 
/*     */   public boolean onOptionsItemSelected(MenuItem pItem)
/*     */   {
/*     */     try
/*     */     {
/* 323 */       if (Settings.getInstance().getWebServiceEnvironment() == WsEnv.DEV) {
/* 324 */         switch (pItem.getItemId()) {
/*     */         case 1:
/* 326 */           this.webView.loadUrl("javascript:(function() { var parameters = {};parameters['guid'] = guid;executeJSONCall(absoluteUrl + '/restApi/testing/send-sms', parameters);})()");
/*     */ 
/* 331 */           break;
/*     */         case 2:
/* 333 */           this.webView.loadUrl("javascript:(function() { var parameters = {};parameters['guid'] = guid;executeJSONCall(absoluteUrl + '/restApi/testing/billing-error', parameters);})()");
/*     */         }
/*     */ 
/*     */       }
/*     */ 
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 345 */       returnResultForInternalSdkError(e);
/*     */     }
/* 347 */     return super.onOptionsItemSelected(pItem);
/*     */   }
/*     */ 
/*     */   public void returnConnectionError(String pErrorMessage)
/*     */   {
/* 356 */     LogUtil.logD(MopayActivity.class, pErrorMessage);
/* 357 */     PaymentRes res = new PaymentRes();
/*     */ 
/* 359 */     res.setErrorMessage(StaticMessages.getStaticErrorMessageForMerchantCallback(20090802L));
/*     */ 
/* 361 */     if (this.session != null)
/* 362 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/*     */     else {
/* 364 */       res.setPaymentStatus("ERROR");
/*     */     }
/*     */ 
/* 367 */     res.setErrorCode(Long.valueOf(20090802L));
/* 368 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   public void returnReceiveSmsFailed() {
/* 372 */     LogUtil.logD(MopayActivity.class, "Unable to receive SMS containing TAN");
/*     */ 
/* 374 */     AbortSessionDAO abortSessionDAO = new AbortSessionDAO(this);
/* 375 */     JsonRes abortRes = null;
/* 376 */     if (AndroidSDKUtil.networkConnectionActive(this)) {
/*     */       try {
/* 378 */         abortSessionDAO.abortPayment(this.session.getGuid(), 20090803L);
/*     */       } catch (DataAccessException e) {
/* 380 */         LogUtil.logD(this, StaticMessages.getStaticErrorMessageForMerchantCallback(20090803L));
/*     */       }
/*     */     }
/* 383 */     PaymentRes res = new PaymentRes();
/*     */ 
/* 385 */     res.setErrorMessage(StaticMessages.getStaticErrorMessageForMerchantCallback(10210128L));
/*     */ 
/* 387 */     if (this.session != null)
/* 388 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/*     */     else {
/* 390 */       res.setPaymentStatus("ERROR");
/*     */     }
/*     */ 
/* 393 */     res.setErrorCode(Long.valueOf(20090801L));
/* 394 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   public void returnUserCanceled() {
/* 398 */     LogUtil.logD(MopayActivity.class, "User canceled payment");
/*     */ 
/* 400 */     if (AndroidSDKUtil.networkConnectionActive(this)) {
/*     */       try {
/* 402 */         new UserCancelDAO(this).userCancel(this.session.getGuid());
/*     */       } catch (DataAccessException e) {
/* 404 */         LogUtil.logD(this, "failed to execute userCancel");
/*     */       } catch (Exception e) {
/* 406 */         LogUtil.logD(MopayActivity.class, "Unexpected exception while building result");
/*     */       }
/*     */     }
/*     */ 
/* 410 */     PaymentRes res = new PaymentRes();
/*     */ 
/* 412 */     if (this.session != null) {
/* 413 */       res.setGuid(this.session.getGuid());
/* 414 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/* 415 */       res.setMsisdn(this.session.getMsisdn());
/*     */     } else {
/* 417 */       res.setPaymentStatus("ERROR");
/*     */     }
/*     */ 
/* 420 */     res.setErrorMessage("User canceled");
/* 421 */     res.setErrorCode(Long.valueOf(10210111L));
/*     */ 
/* 423 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   public void returnResultForInternalSdkError(Exception pEx)
/*     */   {
/*     */     try
/*     */     {
/* 433 */       if (AndroidSDKUtil.networkConnectionActive(this)) {
/* 434 */         LogDAO logDao = new LogDAO(this);
/* 435 */         logDao.info("Unexpected exception, payment shutdown");
/*     */       }
/*     */     } catch (Exception e) {
/* 438 */       LogUtil.logD(MopayActivity.class, "Unexpected exception while building result");
/*     */     }
/* 440 */     LogUtil.logD(MopayJsInterface.class, "Building result with no data, internal error");
/* 441 */     PaymentRes res = new PaymentRes();
/* 442 */     if ((pEx instanceof ApplicationErrorRTException))
/* 443 */       res.setErrorCode(Long.valueOf(((ApplicationErrorRTException)pEx).getErrorCode()));
/*     */     else {
/* 445 */       res.setErrorCode(Long.valueOf(20090801L));
/*     */     }
/*     */ 
/* 448 */     res.setErrorMessage(StaticMessages.getStaticErrorMessageForMerchantCallback(res.getErrorCode().longValue()));
/* 449 */     if (this.session != null)
/* 450 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/*     */     else {
/* 452 */       res.setPaymentStatus("ERROR");
/*     */     }
/* 454 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   public void returnResult(PaymentRes pResult)
/*     */   {
/* 462 */     if (this.jsInterface != null) {
/* 463 */       this.jsInterface.cleanTimers();
/* 464 */       this.jsInterface = null;
/*     */     }
/*     */ 
/* 467 */     if (this.webView != null) {
/* 468 */       Runnable runnable = new Runnable()
/*     */       {
/*     */         public void run() {
/* 471 */           if (MopayActivity.activity != null)
/*     */             try {
/* 473 */               MopayActivity.this.webView.clearHistory();
/* 474 */               MopayActivity.this.webView.clearFormData();
/* 475 */               MopayActivity.this.webView.clearCache(true);
/* 476 */               MopayActivity.this.webView.clearMatches();
/* 477 */               MopayActivity.this.webView.clearSslPreferences();
/* 478 */               MopayActivity.this.webView.clearView();
/* 479 */               MopayActivity.this.webView = null;
/*     */             } catch (Exception e) {
/* 481 */               LogUtil.logD(this, "Failed to clean up webView: " + e);
/*     */             }
/*     */           else
/* 484 */             LogUtil.logD(this, "Failed to clean up webView");
/*     */         }
/*     */       };
/* 488 */       activity.runOnUiThread(runnable);
/*     */     }
/*     */ 
/* 492 */     LogUtil.logD(this, "Returning result: " + pResult.getContentInfo());
/* 493 */     Intent intent = new Intent();
/* 494 */     intent.putExtra("Mopay4AndroidPaymentResult", pResult);
/*     */ 
/* 496 */     setResult(32222, intent);
/* 497 */     finish();
/*     */   }
/*     */ 
/*     */   public WebView getWebView()
/*     */   {
/* 506 */     return this.webView;
/*     */   }
/*     */ 
/*     */   public String getCloseMessage() {
/* 510 */     return closeMessage;
/*     */   }
/*     */ 
/*     */   public void setCloseMessage(String pCloseMessage) {
/* 514 */     closeMessage = pCloseMessage;
/*     */   }
/*     */ 
/*     */   public String getCloseButtonPositive() {
/* 518 */     return this.closeButtonPositive;
/*     */   }
/*     */ 
/*     */   public void setCloseButtonPositive(String pCloseButtonPositive) {
/* 522 */     this.closeButtonPositive = pCloseButtonPositive;
/*     */   }
/*     */ 
/*     */   public String getCloseButtonNegative() {
/* 526 */     return this.closeButtonNegative;
/*     */   }
/*     */ 
/*     */   public void setCloseButtonNegative(String pCloseButtonNegative) {
/* 530 */     this.closeButtonNegative = pCloseButtonNegative;
/*     */   }
/*     */ 
/*     */   public AndroidSession getSession() {
/* 534 */     return this.session;
/*     */   }
/*     */ 
/*     */   public void setSession(AndroidSession pSession) {
/* 538 */     this.session = pSession;
/*     */   }
/*     */ 
/*     */   public String getMsisdn() {
/* 542 */     TelephonyManager tMgr = (TelephonyManager)getSystemService("phone");
/* 543 */     return (tMgr.getLine1Number() != null) && (!"".equals(tMgr.getLine1Number())) ? tMgr.getLine1Number() : "";
/*     */   }
/*     */ 
/*     */   protected void onDestroy()
/*     */   {
/*     */     try {
/* 549 */       SmsReceiver.unregisterReceiver(getApplicationContext());
/* 550 */       SmsReceiver.clearSkipCondition();
/* 551 */       SmsReceiver.clear();
/*     */     } catch (Exception e) {
/* 553 */       LogUtil.logD(this, "SmsReceiver not registered, unregister not possible" + e);
/*     */     }
/* 555 */     SmsItemManager.cleanupMessages(this, this.session.getSentSms(), this.session.getReceivedSms());
/* 556 */     super.onDestroy();
/*     */   }
/*     */ 
/*     */   public void abortSessionSuccess(JsonRes pJsonRes)
/*     */   {
/* 562 */     PaymentRes res = new PaymentRes();
/*     */ 
/* 564 */     res.setErrorMessage(StaticMessages.getStaticErrorMessageForMerchantCallback(10210111L));
/* 565 */     if (this.session != null)
/* 566 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/*     */     else {
/* 568 */       res.setPaymentStatus("ERROR");
/*     */     }
/*     */ 
/* 571 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   public void userCancelSuccess(UserCancelRes pUserCancelRes)
/*     */   {
/* 576 */     LogUtil.logD(MopayActivity.class, "User cancel submitted successfully.");
/*     */   }
/*     */ 
/*     */   public void logSuccess(LogReq pJsonRes)
/*     */   {
/* 581 */     LogUtil.logD(MopayActivity.class, "Logging submitted successfully.");
/*     */   }
/*     */ 
/*     */   public void finish()
/*     */   {
/* 586 */     super.finish();
/*     */   }
/*     */ 
/*     */   public void returnTimeOut() {
/* 590 */     LogUtil.logD(MopayActivity.class, "Payment timed out after 120 seconds");
/*     */ 
/* 593 */     if (AndroidSDKUtil.networkConnectionActive(this)) {
/*     */       try {
/* 595 */         new UserCancelDAO(this).userCancel(this.session.getGuid());
/*     */       } catch (DataAccessException e) {
/* 597 */         LogUtil.logD(this, "failed to execute userCancel");
/*     */       } catch (Exception e) {
/* 599 */         LogUtil.logD(MopayActivity.class, "Unexpected exception while building result");
/*     */       }
/*     */     }
/*     */ 
/* 603 */     PaymentRes res = new PaymentRes();
/*     */ 
/* 605 */     if (this.session != null) {
/* 606 */       res.setGuid(this.session.getGuid());
/* 607 */       res.setMsisdn(this.session.getMsisdn());
/* 608 */       res.setPaymentStatus(determinePaymentStatus("ERROR"));
/*     */     } else {
/* 610 */       res.setPaymentStatus("ERROR");
/*     */     }
/*     */ 
/* 613 */     res.setErrorMessage("Payment timed out");
/* 614 */     res.setErrorCode(Long.valueOf(10210110L));
/* 615 */     returnResult(res);
/*     */   }
/*     */ 
/*     */   private String determinePaymentStatus(String pPreferedPaymentStatus) {
/* 619 */     if ("INPROGRESS".equals(this.session.getPaymentStatus()))
/* 620 */       return "INPROGRESS";
/* 621 */     if ("SUCCESS".equals(this.session.getPaymentStatus())) {
/* 622 */       return "SUCCESS";
/*     */     }
/* 624 */     return pPreferedPaymentStatus;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.activity.MopayActivity
 * JD-Core Version:    0.6.2
 */