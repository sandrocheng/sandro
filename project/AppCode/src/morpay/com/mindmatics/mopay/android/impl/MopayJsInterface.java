/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import android.app.AlertDialog.Builder;
/*     */ import android.app.PendingIntent;
/*     */ import android.app.ProgressDialog;
/*     */ import android.content.BroadcastReceiver;
/*     */ import android.content.Context;
/*     */ import android.content.DialogInterface;
/*     */ import android.content.DialogInterface.OnClickListener;
/*     */ import android.content.Intent;
/*     */ import android.content.IntentFilter;
/*     */ import android.net.Uri;
/*     */ import android.telephony.SmsManager;
/*     */ import android.webkit.WebView;
/*     */ import com.mindmatics.mopay.android.activity.MopayActivity;
/*     */ import com.mindmatics.mopay.android.api.impl.PaymentRes;
/*     */ import com.mindmatics.mopay.android.broadcast.SmsItem;
/*     */ import com.mindmatics.mopay.android.broadcast.SmsItemManager;
/*     */ import com.mindmatics.mopay.android.broadcast.SmsReceiver;
/*     */ import com.mindmatics.mopay.android.broadcast.skipconditions.ContentMatchesSkipCondition;
/*     */ import com.mindmatics.mopay.android.impl.model.AndroidSession;
/*     */ import com.mindmatics.mopay.android.impl.model.AuthenticationTanBO;
/*     */ import com.mindmatics.mopay.android.impl.model.BillingTanBO;
/*     */ import com.mindmatics.mopay.android.impl.model.HandshakeBO;
/*     */ import com.mindmatics.mopay.android.impl.util.AndroidSDKUtil;
/*     */ import com.mindmatics.mopay.android.impl.util.AwaitSmsTask;
/*     */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.AbortSessionDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.BackToMerchantDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.GetStatusDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IAbortSessionSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IBackToMerchantSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IGetStatusSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.ILogSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IQueryPinSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IQueryStatusSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.ISubmitBillingTanSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IUserCancelSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.LogDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.QueryPinDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.QueryStatusDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.SubmitTanDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.UserCancelDAO;
/*     */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.Handshake;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.JsonRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.LogReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryPinRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryStatusRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.SubmitTanRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.UserCancelRes;
/*     */ import java.util.Collection;
/*     */ import java.util.Date;
/*     */ import java.util.Map;
/*     */ import java.util.Timer;
/*     */ import java.util.TimerTask;
/*     */ import java.util.regex.Matcher;
/*     */ import java.util.regex.Pattern;
/*     */ import org.json.JSONException;
/*     */ 
/*     */ public class MopayJsInterface
/*     */   implements IMopayJsInterface, IGetStatusSuccess, IQueryPinSuccess, IQueryStatusSuccess, ISubmitBillingTanSuccess, IUserCancelSuccess, ILogSuccess, IAbortSessionSuccess, IBackToMerchantSuccess
/*     */ {
/*     */   private BroadcastReceiver sentOrderSMSReceiver;
/*     */   private QueryStatusRes currentStatus;
/*     */   private ProgressDialog dialog;
/*  71 */   private final Timer optInTimer = new Timer();
/*     */   private MopayActivity context;
/*     */   private int connectionAtempts;
/*     */ 
/*     */   public MopayJsInterface(Context pContext)
/*     */   {
/*  81 */     this.context = ((MopayActivity)pContext);
/*  82 */     this.sentOrderSMSReceiver = createBroadcastReceiver();
/*     */   }
/*     */ 
/*     */   public void sendSms(String pJsonString)
/*     */   {
/*  95 */     AndroidSession session = getSession();
/*     */     try {
/*  97 */       String processingText = (String)getSession().getInitMap().get(JavascriptParameters.PROCESSING_TEXT.toString());
/*     */ 
/*  99 */       String[] strings = JSONHttpUtil.deserializeStringArray(pJsonString);
/* 100 */       this.dialog = ProgressDialog.show(MopayActivity.getInstance(), "", processingText);
/* 101 */       executeJavascriptMethod("smsHasBeenSent()");
/* 102 */       if (AndroidSDKUtil.networkConnectionActive(this.context)) {
/*     */         try {
/* 104 */           new LogDAO(this).info(new StringBuilder().append("Trying to send SMS; GUID: ").append(getSession().getGuid()).append("; Msisdn: ").append((getSession().getMsisdn() != null) || (!"".equals(getSession().getMsisdn())) ? getSession().getMsisdn() : "not known").toString());
/*     */         }
/*     */         catch (DataAccessException e)
/*     */         {
/* 109 */           LogUtil.logD(this, "Server-side logging failed");
/*     */         }
/*     */       }
/*     */ 
/* 113 */       sendSms(strings[0], strings[1], true);
/* 114 */       session.setPaymentStatus("INPROGRESS");
/*     */     } catch (JSONException e) {
/* 116 */       returnInternalError(e);
/*     */     } catch (Exception e) {
/* 118 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void sendSms(String pMsisdn, String pSmsText, boolean pDeviceInfosInSms) {
/* 123 */     AndroidSession session = getSession();
/* 124 */     this.context.getApplicationContext().registerReceiver(this.sentOrderSMSReceiver, new IntentFilter("SMS_SENT"));
/* 125 */     PendingIntent sentPI = PendingIntent.getBroadcast(this.context, 0, new Intent("SMS_SENT"), 0);
/*     */ 
/* 127 */     String text = null;
/* 128 */     if (pDeviceInfosInSms)
/* 129 */       text = SmsItemManager.prepareMessageContent(pSmsText);
/*     */     else {
/* 131 */       text = pSmsText;
/*     */     }
/*     */ 
/* 134 */     if (text.length() > 120) {
/* 135 */       text = text.substring(0, 119);
/*     */     }
/*     */ 
/* 138 */     session.getSentSms().put(pMsisdn, pSmsText);
/* 139 */     SmsManager sms = SmsManager.getDefault();
/* 140 */     sms.sendTextMessage(pMsisdn, null, text, sentPI, null);
/* 141 */     session.setFinishOptinLoopStarted(new Date());
/* 142 */     restartOptinCheckTimer();
/*     */   }
/*     */ 
/*     */   public void executeSendSmsDoubleConfirm(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 155 */       Map initMap = getSession().getInitMap();
/* 156 */       executeYesNoDialog((String)initMap.get(JavascriptParameters.SEND_SMS_DOUBLE_CONFIRM_DIALOG_TEXT.toString()), (String)initMap.get(JavascriptParameters.SEND_SMS_DOUBLE_CONFIRM_DIALOG_CONFIRM_TEXT.toString()), (String)initMap.get(JavascriptParameters.SEND_SMS_DOUBLE_CONFIRM_DIALOG_DECLINE_TEXT.toString()), (String)initMap.get(JavascriptParameters.SEND_SMS_DOUBLE_CONFIRM_DIALOG_CALLBACK_METHOD.toString()));
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 161 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void executeYesNoDialog(String pMessage, String pConfirmText, String pDeclineText, final String pCallbackMethod) {
/*     */     try {
/* 167 */       DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener()
/*     */       {
/*     */         public void onClick(DialogInterface pDialog, int pDialogResult) {
/* 170 */           if (pDialogResult == -1)
/* 171 */             MopayJsInterface.this.executeJavascriptMethod(pCallbackMethod);
/*     */         }
/*     */       };
/* 175 */       AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
/* 176 */       builder.setMessage(pMessage).setPositiveButton(pConfirmText, dialogClickListener).setNegativeButton(pDeclineText, dialogClickListener).show();
/*     */     } catch (Exception e) {
/* 178 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void executeYesNoDialog(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 196 */       String[] strings = JSONHttpUtil.deserializeStringArray(pJsonString);
/* 197 */       executeYesNoDialog(strings[0], strings[1], strings[2], strings[3]);
/*     */     } catch (JSONException e) {
/* 199 */       returnInternalError(e);
/*     */     } catch (Exception e) {
/* 201 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public String getTelephoneNumber(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 213 */       return getSession().getMsisdn();
/*     */     } catch (Exception e) {
/* 215 */       returnInternalError(e);
/*     */     }
/* 217 */     return "";
/*     */   }
/*     */ 
/*     */   private String buildPaymentStatus(String pStatus) {
/* 221 */     String paymentStatus = "ERROR";
/* 222 */     if ((pStatus == null) && ("".equals(pStatus)) && (pStatus.toUpperCase().equals("ERROR")))
/* 223 */       paymentStatus = "ERROR";
/* 224 */     else if (pStatus.toUpperCase().equals("SUCCESS"))
/* 225 */       paymentStatus = "SUCCESS";
/* 226 */     else if (pStatus.toUpperCase().equals("INPROGRESS"))
/* 227 */       paymentStatus = "INPROGRESS";
/*     */     else {
/* 229 */       paymentStatus = "ERROR";
/*     */     }
/* 231 */     return paymentStatus;
/*     */   }
/*     */ 
/*     */   public void buildResult(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 253 */       String[] result = JSONHttpUtil.deserializeStringArray(pJsonString);
/* 254 */       String guid = result[0];
/* 255 */       String status = result[1];
/* 256 */       String grossAmount = result[2];
/* 257 */       String currency = result[3];
/* 258 */       String country = result[4];
/* 259 */       String msisdn = result[5];
/* 260 */       String errorCode = result[6];
/* 261 */       String errorMessage = result[7];
/* 262 */       String apiError = result[8];
/*     */ 
/* 264 */       PaymentRes res = new PaymentRes();
/* 265 */       res.setGuid(guid);
/* 266 */       res.setPaymentStatus(buildPaymentStatus(status));
/* 267 */       res.setAmount(Double.valueOf(grossAmount));
/* 268 */       res.setCurrency(currency);
/* 269 */       res.setCountry(country);
/* 270 */       res.setMsisdn(msisdn);
/* 271 */       if (Long.valueOf(errorCode).longValue() > 0L) {
/* 272 */         res.setErrorMessage(errorMessage);
/* 273 */         res.setErrorCode(Long.valueOf(errorCode));
/* 274 */         if ((apiError != null) && (!"".equals(apiError))) {
/*     */           try {
/* 276 */             int errorDetail = new Integer(apiError).intValue();
/* 277 */             if (errorDetail > 0)
/* 278 */               res.setErrorDetail(Integer.valueOf(errorDetail));
/*     */           }
/*     */           catch (NumberFormatException nfe) {
/* 281 */             LogUtil.logD(this, "NumberFormatException while parsing API Error");
/*     */           }
/*     */         }
/*     */       }
/* 285 */       LogUtil.logD(MopayJsInterface.class, "Building result");
/*     */ 
/* 287 */       if (AndroidSDKUtil.networkConnectionActive(this.context)) {
/* 288 */         new BackToMerchantDAO().backToMerchant(res.getGuid());
/*     */       }
/*     */ 
/* 291 */       if (res.getPaymentStatus().equals("CANCEL")) {
/* 292 */         res.setPaymentStatus("ERROR");
/* 293 */         if (AndroidSDKUtil.networkConnectionActive(this.context)) {
/* 294 */           new UserCancelDAO().userCancel(res.getGuid());
/*     */         }
/*     */       }
/* 297 */       this.context.returnResult(res);
/*     */     } catch (JSONException e) {
/* 299 */       LogUtil.logD(MopayJsInterface.class, e);
/* 300 */       returnInternalError(e);
/*     */     } catch (Exception pEx) {
/* 302 */       LogUtil.logD(MopayJsInterface.class, pEx);
/* 303 */       returnInternalError(pEx);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void openUrl(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 316 */       String[] openUrlArray = JSONHttpUtil.deserializeStringArray(pJsonString);
/* 317 */       String url = openUrlArray[0];
/* 318 */       Intent launchBrowserIntent = new Intent("android.intent.action.VIEW", Uri.parse(url));
/* 319 */       this.context.startActivity(launchBrowserIntent);
/*     */     } catch (JSONException e) {
/* 321 */       LogUtil.logD(this, e);
/* 322 */       returnInternalError(e);
/*     */     } catch (Exception e) {
/* 324 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void returnInternalError(Exception pE) {
/* 329 */     this.context.returnResultForInternalSdkError(pE);
/* 330 */     cleanTimers();
/*     */   }
/*     */ 
/*     */   public void log(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 342 */       String logMessage = JSONHttpUtil.deserializeStringArray(pJsonString)[0];
/* 343 */       LogUtil.logD(MopayJsInterface.class, logMessage);
/*     */     } catch (JSONException e) {
/* 345 */       LogUtil.logD(this, "JSONException while parsing logging message. Skipping logging.");
/*     */     } catch (Exception e) {
/* 347 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void initApp(String pJsonString)
/*     */   {
/*     */     try
/*     */     {
/* 371 */       getSession().setInitMap(JSONHttpUtil.deserializeInitMap(pJsonString));
/* 372 */       AndroidSession session = this.context.getSession();
/* 373 */       session.setGuid((String)session.getInitMap().get(JavascriptParameters.GUID.toString()));
/* 374 */       refreshStatus();
/*     */     } catch (JSONException e) {
/* 376 */       returnInternalError(e);
/*     */     } catch (Exception e) {
/* 378 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void submitTan(SmsItem pItem, String pTanType) {
/* 383 */     AndroidSession session = getSession();
/*     */     try {
/* 385 */       if (pItem != null) {
/* 386 */         if ("AUTH_TAN".equals(pTanType))
/*     */         {
/* 388 */           Pattern pattern = Pattern.compile(session.getAuthenticationTanBO().getAutheticationTanRegExp());
/*     */ 
/* 390 */           Matcher m = pattern.matcher(pItem.getMessage());
/* 391 */           if ((m.find()) && (m.groupCount() > 0)) {
/* 392 */             session.getAuthenticationTanBO().setAutheticationTan(m.group(1));
/* 393 */             session.getReceivedSms().put(pItem.getAddress(), pItem.getMessage());
/* 394 */             LogUtil.logD(this, "AuthTan message found");
/* 395 */             new SubmitTanDAO(this).submitTan(session.getGuid(), pTanType, session.getAuthenticationTanBO().getAutheticationTan());
/*     */           }
/*     */           else {
/* 398 */             LogUtil.logD(this, "AuthTan message not found");
/* 399 */             new AbortSessionDAO(this).abortPayment(session.getGuid(), 10210128L);
/* 400 */             this.context.returnReceiveSmsFailed();
/*     */           }
/* 402 */         } else if ("BILLING_TAN".equals(pTanType)) {
/* 403 */           Pattern pattern = Pattern.compile(session.getBillingTanBO().getBillingTanRegExp());
/* 404 */           Matcher m = pattern.matcher(pItem.getMessage());
/* 405 */           if ((m.find()) && (m.groupCount() > 0)) {
/* 406 */             session.getBillingTanBO().setBillingTan(m.group(1));
/* 407 */             session.getReceivedSms().put(pItem.getAddress(), pItem.getMessage());
/* 408 */             LogUtil.logD(this, "BillingTan message found");
/* 409 */             new SubmitTanDAO(this).submitTan(session.getGuid(), pTanType, session.getBillingTanBO().getBillingTan());
/*     */           }
/*     */           else {
/* 412 */             LogUtil.logD(this, "BillingTan message not found");
/* 413 */             new AbortSessionDAO(this).abortPayment(session.getGuid(), 10210128L);
/* 414 */             this.context.returnReceiveSmsFailed();
/*     */           }
/* 416 */         } else if ("HANDSHAKE_SMS".equals(pTanType)) {
/* 417 */           HandshakeBO handshakeBO = session.getHandshakeBO();
/* 418 */           Pattern pattern = Pattern.compile(handshakeBO.getHandshakeSmsRegExp());
/* 419 */           Matcher m = pattern.matcher(pItem.getMessage());
/* 420 */           if ((m.find()) && (m.groupCount() > 0)) {
/* 421 */             handshakeBO.setHandshakeSmsReceived(true);
/* 422 */             synchronized (session.getHandshakeBO()) {
/* 423 */               if ((handshakeBO.getKeyword() != null) && (handshakeBO.getShortcode() != null) && (!handshakeBO.isHandshakeSmsSent()))
/*     */               {
/* 425 */                 sendHandshakeSms(handshakeBO);
/*     */               }
/*     */             }
/*     */           } else {
/* 429 */             LogUtil.logD(this, "Handshake message not found");
/* 430 */             new AbortSessionDAO(this).abortPayment(session.getGuid(), 10210128L);
/* 431 */             this.context.returnReceiveSmsFailed();
/*     */           }
/*     */         }
/*     */       } else {
/* 435 */         LogUtil.logD(this, "Tan message not found");
/* 436 */         new AbortSessionDAO(this).abortPayment(session.getGuid(), 10210128L);
/* 437 */         this.context.returnReceiveSmsFailed();
/*     */       }
/*     */     } catch (Exception e) {
/* 440 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void awaitTanSms(String pJsonString)
/*     */   {
/*     */     try {
/* 447 */       AndroidSession session = getSession();
/* 448 */       QueryPinRes res = new QueryPinDAO().queryPinSync(session.getGuid(), "AUTH_TAN");
/*     */ 
/* 450 */       SmsReceiver.setSkipCondition(new ContentMatchesSkipCondition(res.getRegexp()));
/* 451 */       session.getAuthenticationTanBO().setAutheticationTanRegExp(res.getRegexp());
/* 452 */       new AwaitSmsTask(this, this.context, "AUTH_TAN").execute(new String[] { session.getGuid(), res.getRegexp() });
/*     */     } catch (Exception e) {
/* 454 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void awaitHandshakeSms(String pJsonString)
/*     */   {
/*     */     try {
/* 461 */       AndroidSession session = getSession();
/* 462 */       QueryPinRes res = new QueryPinDAO().queryPinSync(session.getGuid(), "HANDSHAKE_SMS");
/*     */ 
/* 464 */       session.getHandshakeBO().setHandshakeSmsRegExp(res.getRegexp());
/* 465 */       SmsReceiver.setSkipCondition(new ContentMatchesSkipCondition(res.getRegexp()));
/* 466 */       new AwaitSmsTask(this, this.context, "HANDSHAKE_SMS").execute(new String[] { session.getGuid(), res.getRegexp() });
/*     */     }
/*     */     catch (Exception e) {
/* 469 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void submitHandshakeDetails(String pJsonString)
/*     */   {
/*     */     try {
/* 476 */       String processingText = (String)getSession().getInitMap().get(JavascriptParameters.PROCESSING_TEXT.toString());
/*     */ 
/* 478 */       this.dialog = ProgressDialog.show(this.context.getApplicationContext(), "", processingText);
/* 479 */       String[] params = JSONHttpUtil.deserializeStringArray(pJsonString);
/* 480 */       HandshakeBO handshakeBO = getSession().getHandshakeBO();
/* 481 */       handshakeBO.setShortcode(params[0]);
/* 482 */       handshakeBO.setKeyword(params[1]);
/*     */ 
/* 484 */       synchronized (handshakeBO) {
/* 485 */         if ((handshakeBO.isHandshakeSmsReceived()) && (!handshakeBO.isHandshakeSmsSent()))
/* 486 */           sendHandshakeSms(handshakeBO);
/*     */       }
/*     */     }
/*     */     catch (Exception e) {
/* 490 */       returnInternalError(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void sendHandshakeSms(HandshakeBO pHandshakeBO) {
/* 495 */     executeJavascriptMethod("smsHasBeenSent()");
/* 496 */     sendSms(pHandshakeBO.getShortcode(), pHandshakeBO.getKeyword(), false);
/* 497 */     pHandshakeBO.setHandshakeSmsSent(true);
/*     */   }
/*     */ 
/*     */   public void getStatusSuccess(QueryStatusRes pQueryStatusRes)
/*     */   {
/* 502 */     AndroidSession session = getSession();
/* 503 */     session.getBillingTanBO().setBillingTanUsed(pQueryStatusRes.isPsmsBillingTan());
/*     */ 
/* 505 */     if (("INPROGRESS".equals(pQueryStatusRes.getPaymentStatus())) || ("SUCCESS".equals(pQueryStatusRes.getPaymentStatus()))) {
/* 506 */       this.currentStatus = pQueryStatusRes;
/* 507 */       if (session.isPaymentRelevantSMSSentOrRecieved()) {
/* 508 */         session.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/* 509 */         this.currentStatus.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/*     */       } else {
/* 511 */         session.setPaymentStatus("ERROR");
/* 512 */         this.currentStatus.setPaymentStatus("ERROR");
/*     */       }
/*     */     } else {
/* 515 */       session.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/* 516 */       this.currentStatus = pQueryStatusRes;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void queryPinSuccess(QueryPinRes pQueryPinRes)
/*     */   {
/* 522 */     AndroidSession session = getSession();
/*     */ 
/* 524 */     if (pQueryPinRes.getType().equals("BILLING_TAN"))
/* 525 */       session.getBillingTanBO().setBillingTanRegExp(pQueryPinRes.getRegexp());
/* 526 */     else if (pQueryPinRes.getType().equals("HANDSHAKE_SMS"))
/* 527 */       session.getHandshakeBO().setHandshakeSmsRegExp(pQueryPinRes.getRegexp());
/* 528 */     else if (pQueryPinRes.getType().equals("AUTH_TAN")) {
/* 529 */       session.getAuthenticationTanBO().setAutheticationTanRegExp(pQueryPinRes.getRegexp());
/*     */     }
/*     */ 
/* 532 */     SmsReceiver.setSkipCondition(new ContentMatchesSkipCondition(pQueryPinRes.getRegexp()));
/* 533 */     new AwaitSmsTask(this, this.context, pQueryPinRes.getType()).execute(new String[] { session.getGuid(), pQueryPinRes.getRegexp() });
/*     */   }
/*     */ 
/*     */   public void queryStatusSuccess(QueryStatusRes pQueryStatusRes)
/*     */   {
/* 538 */     AndroidSession session = getSession();
/* 539 */     session.getBillingTanBO().setBillingTanUsed(pQueryStatusRes.isPsmsBillingTan());
/*     */ 
/* 541 */     if (("INPROGRESS".equals(pQueryStatusRes.getPaymentStatus())) || ("SUCCESS".equals(pQueryStatusRes.getPaymentStatus()))) {
/* 542 */       this.currentStatus = pQueryStatusRes;
/* 543 */       if (session.isPaymentRelevantSMSSentOrRecieved()) {
/* 544 */         session.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/* 545 */         this.currentStatus.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/*     */       } else {
/* 547 */         session.setPaymentStatus("ERROR");
/* 548 */         this.currentStatus.setPaymentStatus("ERROR");
/*     */       }
/*     */     } else {
/* 551 */       session.setPaymentStatus(pQueryStatusRes.getPaymentStatus());
/* 552 */       this.currentStatus = pQueryStatusRes;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void submitTanSuccess(SubmitTanRes pSubmitTanRes)
/*     */   {
/* 558 */     LogUtil.logD(MopayJsInterface.class, "Tan submitted successfully.");
/*     */   }
/*     */ 
/*     */   public void userCancelSuccess(UserCancelRes pUserCancelRes)
/*     */   {
/* 563 */     LogUtil.logD(MopayJsInterface.class, "User cancel submitted successfully.");
/*     */   }
/*     */ 
/*     */   public void abortSessionSuccess(JsonRes pJsonRes)
/*     */   {
/* 568 */     LogUtil.logD(MopayJsInterface.class, "Abort Session submitted successfully.");
/*     */   }
/*     */ 
/*     */   public void logSuccess(LogReq pJsonRes)
/*     */   {
/* 573 */     LogUtil.logD(MopayJsInterface.class, "Serverside logging successfull.");
/*     */   }
/*     */ 
/*     */   public void backToMerchantSuccess(JsonRes pJsonRes)
/*     */   {
/* 578 */     LogUtil.logD(MopayJsInterface.class, "BackLinkClicked submitted successfully.");
/*     */   }
/*     */ 
/*     */   private void executeJavascriptMethod(final String pMethod)
/*     */   {
/* 615 */     Runnable runnable = new Runnable()
/*     */     {
/*     */       public void run() {
/* 618 */         if ((MopayJsInterface.this.context != null) && (MopayJsInterface.this.context.getWebView() != null)) {
/* 619 */           LogUtil.logD(this, "Executing Javascript method: " + pMethod);
/* 620 */           MopayJsInterface.this.context.getWebView().loadUrl("javascript:" + pMethod);
/*     */         } else {
/* 622 */           LogUtil.logD(this, "Skipped Javascript method execution for method: " + pMethod);
/*     */         }
/*     */       }
/*     */     };
/* 626 */     this.context.runOnUiThread(runnable);
/*     */   }
/*     */ 
/*     */   private BroadcastReceiver createBroadcastReceiver()
/*     */   {
/* 637 */     return new BroadcastReceiver()
/*     */     {
/*     */       public void onReceive(Context pContext, Intent pIntent)
/*     */       {
/* 641 */         String msg = "";
/*     */         try {
/* 643 */           switch (getResultCode()) {
/*     */           case -1:
/* 645 */             MopayJsInterface.this.getSession().setPaymentStatus("INPROGRESS");
/* 646 */             if (!MopayJsInterface.this.getSession().getHandshakeBO().isHandshakeSmsSent())
/* 647 */               msg = "Order SMS sent; GUID: " + MopayJsInterface.this.getSession().getGuid() + "; Msisdn: " + MopayJsInterface.this.getSession().getMsisdn();
/*     */             else {
/* 649 */               msg = "HandshakeSMS sent; GUID: " + MopayJsInterface.this.getSession().getGuid() + "; Msisdn: " + MopayJsInterface.this.getSession().getMsisdn();
/*     */             }
/* 651 */             if (MopayJsInterface.this.sentOrderSMSReceiver != null) {
/* 652 */               MopayJsInterface.this.context.getApplicationContext().unregisterReceiver(MopayJsInterface.this.sentOrderSMSReceiver);
/* 653 */               MopayJsInterface.this.sentOrderSMSReceiver = null;
/*     */             }
/* 655 */             if (AndroidSDKUtil.networkConnectionActive(MopayJsInterface.this.context)) {
/* 656 */               new LogDAO().info(msg);
/*     */             }
/* 658 */             LogUtil.logD(this, msg);
/* 659 */             break;
/*     */           default:
/* 661 */             if (MopayJsInterface.this.sentOrderSMSReceiver != null) {
/* 662 */               MopayJsInterface.this.context.getApplicationContext().unregisterReceiver(MopayJsInterface.this.sentOrderSMSReceiver);
/* 663 */               MopayJsInterface.this.sentOrderSMSReceiver = null;
/*     */             }
/* 665 */             msg = "------------ SMS Send Error:  " + getResultCode() + " ----------------------------";
/* 666 */             if (AndroidSDKUtil.networkConnectionActive(MopayJsInterface.this.context)) {
/* 667 */               new AbortSessionDAO().abortPayment(MopayJsInterface.this.context.getSession().getGuid());
/* 668 */               new LogDAO().info(msg);
/*     */             }
/* 670 */             if (MopayJsInterface.this.dialog != null) {
/* 671 */               MopayJsInterface.this.dialog.dismiss();
/*     */             }
/* 673 */             MopayJsInterface.this.context.returnReceiveSmsFailed();
/* 674 */             LogUtil.logD(this, msg);
/*     */           }
/*     */         }
/*     */         catch (Exception e) {
/* 678 */           LogUtil.logD(MopayActivity.class, e);
/* 679 */           MopayJsInterface.this.returnInternalError(e);
/*     */         }
/*     */       }
/*     */     };
/*     */   }
/*     */ 
/*     */   private void refreshStatus()
/*     */   {
/* 691 */     if ((this.context.getSession() == null) || (this.context.getSession().getGuid() == null)) {
/* 692 */       throw new IllegalStateException();
/*     */     }
/* 694 */     if (AndroidSDKUtil.networkConnectionActive(this.context))
/*     */       try {
/* 696 */         if (this.currentStatus == null)
/* 697 */           new GetStatusDAO(this).getStatus(getSession().getGuid());
/*     */         else
/* 699 */           new QueryStatusDAO(this).querySessionStatus(getSession().getGuid());
/*     */       }
/*     */       catch (DataAccessException e) {
/* 702 */         LogUtil.logD(this, "Retrieving status failed");
/*     */       }
/*     */   }
/*     */ 
/*     */   private AndroidSession getSession()
/*     */   {
/* 713 */     return this.context.getSession();
/*     */   }
/*     */ 
/*     */   private void finishOptin()
/*     */     throws DataAccessException
/*     */   {
/* 723 */     this.optInTimer.purge();
/* 724 */     AndroidSession session = getSession();
/* 725 */     refreshStatus();
/*     */ 
/* 728 */     if (this.currentStatus == null)
/* 729 */       throw new DataAccessException("Current Status is null, unable to access webservice", false);
/* 730 */     if (this.currentStatus.isPaymentCompleted())
/* 731 */       return;
/* 732 */     if ((this.currentStatus.isOptinCompleted()) && (this.currentStatus.isPsmsBillingTan()) && (!session.getBillingTanBO().isBillingTanSend()))
/*     */     {
/* 734 */       QueryPinRes res = new QueryPinDAO(this).queryPinSync(session.getGuid(), "BILLING_TAN");
/*     */ 
/* 736 */       session.getBillingTanBO().setBillingTanRegExp(res.getRegexp());
/*     */ 
/* 738 */       if (SmsReceiver.hasMessages()) {
/* 739 */         Pattern pattern = Pattern.compile(session.getBillingTanBO().getBillingTanRegExp());
/* 740 */         Collection messages = SmsReceiver.getMessages();
/*     */ 
/* 742 */         for (SmsItem item : messages) {
/* 743 */           Matcher m = pattern.matcher(item.getMessage());
/* 744 */           if ((session.getSentSms().containsKey(item.getAddress())) && (m.matches())) {
/* 745 */             session.getBillingTanBO().setBillingTan(m.group(1));
/* 746 */             session.getBillingTanBO().setBillingTanSend(true);
/* 747 */             session.getReceivedSms().put(item.getAddress(), item.getMessage());
/* 748 */             new SubmitTanDAO(this).submitTan(session.getGuid(), "BILLING_TAN", session.getBillingTanBO().getBillingTan());
/*     */ 
/* 750 */             return;
/*     */           }
/*     */         }
/* 753 */         restartOptinCheckTimer();
/* 754 */         return;
/*     */       }
/* 756 */       restartOptinCheckTimer();
/* 757 */       return;
/*     */     }
/* 759 */     if (this.currentStatus.isOptinCompleted()) {
/* 760 */       return;
/*     */     }
/*     */ 
/* 764 */     if ((!this.currentStatus.isOptinCompleted()) && (!session.getHandshakeBO().isHandshakeSmsSent()) && (this.currentStatus.getHandshake() == null))
/*     */     {
/* 766 */       restartOptinCheckTimer();
/* 767 */       return;
/*     */     }
/*     */ 
/* 771 */     if ((!this.currentStatus.isOptinCompleted()) && (!session.getHandshakeBO().isHandshakeSmsSent())) {
/* 772 */       Handshake handshake = this.currentStatus.getHandshake();
/* 773 */       String shortId = handshake.getShortId();
/* 774 */       String smsText = handshake.getSmsText();
/* 775 */       String status = handshake.getStatus();
/* 776 */       if (AndroidSDKUtil.networkConnectionActive(this.context)) {
/* 777 */         if ((shortId != null) && (!"".equals(shortId)) && (smsText != null) && (!"".equals(smsText))) {
/* 778 */           session.getHandshakeBO().setHandshakeSmsSent(true);
/*     */           try {
/* 780 */             new LogDAO().info(new StringBuilder().append("Sending Handshake SMS; GUID: ").append(getSession().getGuid()).append("; Msisdn: ").append((getSession().getMsisdn() != null) || (!"".equals(getSession().getMsisdn())) ? getSession().getMsisdn() : "not known").toString());
/*     */           }
/*     */           catch (DataAccessException e)
/*     */           {
/* 786 */             LogUtil.logD(this, "Server-side logging failed");
/*     */           }
/* 788 */           sendSms(shortId, smsText, true);
/*     */         } else {
/* 790 */           throw new IllegalStateException("Inconsistent state in Handshake object");
/*     */         }
/*     */       }
/* 793 */       restartOptinCheckTimer();
/*     */     }
/* 797 */     else if ((!this.currentStatus.isOptinCompleted()) && (session.getHandshakeBO().isHandshakeSmsSent())) {
/* 798 */       restartOptinCheckTimer();
/*     */     }
/*     */   }
/*     */ 
/*     */   private void restartOptinCheckTimer()
/*     */   {
/* 806 */     if (this.optInTimer != null) {
/* 807 */       this.optInTimer.purge();
/*     */     }
/* 809 */     this.optInTimer.schedule(new CheckOptinTask(), 4000L);
/*     */   }
/*     */ 
/*     */   public void cleanTimers()
/*     */   {
/* 816 */     if (this.optInTimer != null)
/* 817 */       this.optInTimer.cancel();
/*     */   }
/*     */ 
/*     */   protected void finalize()
/*     */   {
/*     */     try
/*     */     {
/* 824 */       cleanTimers();
/* 825 */       if (this.sentOrderSMSReceiver != null) {
/* 826 */         this.context.getApplicationContext().unregisterReceiver(this.sentOrderSMSReceiver);
/* 827 */         this.sentOrderSMSReceiver = null;
/*     */       }
/* 829 */       super.finalize();
/*     */     } catch (Throwable t) {
/* 831 */       LogUtil.logD(this, new StringBuilder().append("Tried to unregister ").append(this.sentOrderSMSReceiver.getClass().getSimpleName()).append(", ").append("but was not registered").toString());
/*     */     }
/*     */   }
/*     */ 
/*     */   public void dismissDialog()
/*     */   {
/*     */     try
/*     */     {
/* 839 */       executeJavascriptMethod("hideWhiteOverlay()");
/* 840 */       if ((this.dialog != null) && 
/* 841 */         (this.dialog.isShowing()))
/* 842 */         this.dialog.dismiss();
/*     */     }
/*     */     catch (IllegalArgumentException e)
/*     */     {
/* 846 */       LogUtil.logD(this, "Tried to dismiss a view which is not attached to the window manager");
/*     */     }
/*     */   }
/*     */ 
/*     */   class CheckOptinTask extends TimerTask
/*     */   {
/*     */     CheckOptinTask()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void run()
/*     */     {
/* 584 */       if (new Date().getTime() < MopayJsInterface.this.getSession().getFinishOptinLoopStarted().getTime() + 120000L) {
/* 585 */         execute();
/*     */       } else {
/* 587 */         MopayJsInterface.this.dismissDialog();
/* 588 */         MopayJsInterface.this.context.returnTimeOut();
/*     */       }
/*     */     }
/*     */ 
/*     */     public void execute() {
/*     */       try {
/* 594 */         MopayJsInterface.this.finishOptin();
/*     */       } catch (DataAccessException e) {
/* 596 */         if (AndroidSDKUtil.networkConnectionActive(MopayJsInterface.this.context))
/*     */           try {
/* 598 */             new AbortSessionDAO().abortPayment(MopayJsInterface.this.context.getSession().getGuid());
/* 599 */             MopayJsInterface.this.returnInternalError(e);
/*     */           } catch (DataAccessException ex) {
/* 601 */             LogUtil.logD(this, "AbortSessionDAO exception" + ex);
/*     */           }
/*     */       }
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.MopayJsInterface
 * JD-Core Version:    0.6.2
 */