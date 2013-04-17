/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.text.TextUtils;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.io.ByteArrayOutputStream;
/*     */ import java.io.IOException;
/*     */ import java.io.ObjectOutputStream;
/*     */ import java.text.DecimalFormat;
/*     */ import java.text.DecimalFormatSymbols;
/*     */ import java.util.HashMap;
/*     */ import java.util.Locale;
/*     */ import java.util.Map;
/*     */ 
/*     */ public class Tracker
/*     */ {
/*  29 */   private static final DecimalFormat DF = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
/*     */   private final TrackerHandler mHandler;
/*     */   private final SimpleModel mModel;
/*     */   private volatile ExceptionParser mExceptionParser;
/*  35 */   private volatile boolean mIsTrackerClosed = false;
/*  36 */   private volatile boolean mIsTrackingStarted = false;
/*     */   static final long TIME_PER_TOKEN_MILLIS = 2000L;
/*     */   static final long MAX_TOKENS = 120000L;
/*  44 */   private long mTokens = 120000L;
/*     */   private long mLastTrackTime;
/*  46 */   private boolean mIsThrottlingEnabled = true;
/*     */ 
/*     */   Tracker() {
/*  49 */     this.mHandler = null;
/*  50 */     this.mModel = null;
/*     */   }
/*     */ 
/*     */   Tracker(String trackingId, TrackerHandler handler) {
/*  54 */     if (trackingId == null) {
/*  55 */       throw new IllegalArgumentException("trackingId cannot be null");
/*     */     }
/*  57 */     this.mHandler = handler;
/*  58 */     this.mModel = new SimpleModel(null);
/*     */ 
/*  60 */     this.mModel.set("trackingId", trackingId);
/*     */ 
/*  68 */     this.mModel.set("sampleRate", "100");
/*     */ 
/*  71 */     this.mModel.setForNextHit("sessionControl", "start");
/*     */ 
/*  74 */     this.mModel.set("useSecure", Boolean.toString(true));
/*     */   }
/*     */ 
/*     */   private void assertTrackerOpen()
/*     */   {
/*  81 */     if (this.mIsTrackerClosed)
/*  82 */       throw new IllegalStateException("Tracker closed");
/*     */   }
/*     */ 
/*     */   public void setStartSession(boolean startSession)
/*     */   {
/*  99 */     assertTrackerOpen();
/* 100 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_START_SESSION);
/* 101 */     this.mModel.setForNextHit("sessionControl", startSession ? "start" : null);
/*     */   }
/*     */ 
/*     */   public void setAppName(String appName)
/*     */   {
/* 112 */     if (this.mIsTrackingStarted) {
/* 113 */       Log.wDebug("Tracking already started, setAppName call ignored");
/* 114 */       return;
/*     */     }
/* 116 */     if (TextUtils.isEmpty(appName)) {
/* 117 */       Log.wDebug("setting appName to empty value not allowed, call ignored");
/* 118 */       return;
/*     */     }
/* 120 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_NAME);
/* 121 */     this.mModel.set("appName", appName);
/*     */   }
/*     */ 
/*     */   public void setAppVersion(String appVersion)
/*     */   {
/* 133 */     if (this.mIsTrackingStarted) {
/* 134 */       Log.wDebug("Tracking already started, setAppVersion call ignored");
/* 135 */       return;
/*     */     }
/* 137 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_VERSION);
/* 138 */     this.mModel.set("appVersion", appVersion);
/*     */   }
/*     */ 
/*     */   public void setAppScreen(String appScreen)
/*     */   {
/* 148 */     assertTrackerOpen();
/* 149 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_SCREEN);
/* 150 */     this.mModel.set("description", appScreen);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackView()
/*     */   {
/* 158 */     sendView();
/*     */   }
/*     */ 
/*     */   public void sendView()
/*     */   {
/* 164 */     assertTrackerOpen();
/* 165 */     if (TextUtils.isEmpty(this.mModel.get("description"))) {
/* 166 */       throw new IllegalStateException("trackView requires a appScreen to be set");
/*     */     }
/* 168 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_VIEW);
/* 169 */     internalSend("appview", null);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackView(String appScreen)
/*     */   {
/* 177 */     sendView(appScreen);
/*     */   }
/*     */ 
/*     */   public void sendView(String appScreen)
/*     */   {
/* 186 */     assertTrackerOpen();
/* 187 */     if (TextUtils.isEmpty(appScreen)) {
/* 188 */       throw new IllegalStateException("trackView requires a appScreen to be set");
/*     */     }
/* 190 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_VIEW_WITH_APPSCREEN);
/* 191 */     this.mModel.set("description", appScreen);
/* 192 */     internalSend("appview", null);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackEvent(String category, String action, String label, Long value)
/*     */   {
/* 200 */     sendEvent(category, action, label, value);
/*     */   }
/*     */ 
/*     */   public void sendEvent(String category, String action, String label, Long value)
/*     */   {
/* 213 */     assertTrackerOpen();
/* 214 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EVENT);
/* 215 */     GAUsage.getInstance().setDisableUsage(true);
/* 216 */     internalSend("event", constructEvent(category, action, label, value));
/* 217 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackTransaction(Transaction transaction)
/*     */   {
/* 225 */     sendTransaction(transaction);
/*     */   }
/*     */ 
/*     */   public void sendTransaction(Transaction transaction)
/*     */   {
/* 232 */     assertTrackerOpen();
/* 233 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_TRANSACTION);
/* 234 */     GAUsage.getInstance().setDisableUsage(true);
/* 235 */     internalSend("tran", constructTransaction(transaction));
/*     */ 
/* 237 */     for (Transaction.Item item : transaction.getItems()) {
/* 238 */       internalSend("item", constructItem(item, transaction));
/*     */     }
/* 240 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackException(String description, boolean fatal)
/*     */   {
/* 248 */     sendException(description, fatal);
/*     */   }
/*     */ 
/*     */   public void sendException(String description, boolean fatal)
/*     */   {
/* 259 */     assertTrackerOpen();
/* 260 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EXCEPTION_WITH_DESCRIPTION);
/* 261 */     GAUsage.getInstance().setDisableUsage(true);
/* 262 */     internalSend("exception", constructException(description, fatal));
/* 263 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackException(String threadName, Throwable exception, boolean fatal)
/*     */   {
/* 271 */     sendException(threadName, exception, fatal);
/*     */   }
/*     */ 
/*     */   public void sendException(String threadName, Throwable exception, boolean fatal)
/*     */   {
/* 284 */     assertTrackerOpen();
/*     */ 
/* 286 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EXCEPTION_WITH_THROWABLE);
/*     */     String description;
/*     */     String description;
/* 287 */     if (this.mExceptionParser != null)
/* 288 */       description = this.mExceptionParser.getDescription(threadName, exception);
/*     */     else {
/*     */       try {
/* 291 */         GAUsage.getInstance().setDisableUsage(true);
/* 292 */         internalSend("exception", constructRawException(threadName, exception, fatal));
/* 293 */         GAUsage.getInstance().setDisableUsage(false);
/* 294 */         return;
/*     */       } catch (IOException e) {
/* 296 */         Log.w("trackException: couldn't serialize, sending \"Unknown Exception\"");
/* 297 */         description = "Unknown Exception";
/*     */       }
/*     */     }
/* 300 */     GAUsage.getInstance().setDisableUsage(true);
/* 301 */     sendException(description, fatal);
/* 302 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackTiming(String category, long intervalInMilliseconds, String name, String label)
/*     */   {
/* 310 */     sendTiming(category, intervalInMilliseconds, name, label);
/*     */   }
/*     */ 
/*     */   public void sendTiming(String category, long intervalInMilliseconds, String name, String label)
/*     */   {
/* 322 */     assertTrackerOpen();
/* 323 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_TIMING);
/* 324 */     GAUsage.getInstance().setDisableUsage(true);
/* 325 */     internalSend("timing", constructTiming(category, intervalInMilliseconds, name, label));
/*     */ 
/* 327 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   @Deprecated
/*     */   public void trackSocial(String network, String action, String target)
/*     */   {
/* 335 */     sendSocial(network, action, target);
/*     */   }
/*     */ 
/*     */   public void sendSocial(String network, String action, String target)
/*     */   {
/* 345 */     assertTrackerOpen();
/* 346 */     GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_SOCIAL);
/* 347 */     GAUsage.getInstance().setDisableUsage(true);
/* 348 */     internalSend("social", constructSocial(network, action, target));
/* 349 */     GAUsage.getInstance().setDisableUsage(false);
/*     */   }
/*     */ 
/*     */   public void close()
/*     */   {
/* 356 */     this.mIsTrackerClosed = true;
/* 357 */     this.mHandler.closeTracker(this);
/*     */   }
/*     */ 
/*     */   public void send(String hitType, Map<String, String> params)
/*     */   {
/* 369 */     assertTrackerOpen();
/* 370 */     GAUsage.getInstance().setUsage(GAUsage.Field.SEND);
/* 371 */     internalSend(hitType, params);
/*     */   }
/*     */ 
/*     */   private void internalSend(String hitType, Map<String, String> params) {
/* 375 */     this.mIsTrackingStarted = true;
/* 376 */     if (params == null) {
/* 377 */       params = new HashMap();
/*     */     }
/* 379 */     params.put("hitType", hitType);
/* 380 */     this.mModel.setAll(params, Boolean.valueOf(true));
/* 381 */     if (!tokensAvailable())
/* 382 */       Log.wDebug("Too many hits sent too quickly, throttling invoked.");
/*     */     else {
/* 384 */       this.mHandler.sendHit(this.mModel.getKeysAndValues());
/*     */     }
/* 386 */     this.mModel.clearTemporaryValues();
/*     */   }
/*     */ 
/*     */   public String get(String key)
/*     */   {
/* 393 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET);
/* 394 */     return this.mModel.get(key);
/*     */   }
/*     */ 
/*     */   public void set(String key, String value)
/*     */   {
/* 402 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET);
/* 403 */     this.mModel.set(key, value);
/*     */   }
/*     */ 
/*     */   public String getTrackingId()
/*     */   {
/* 410 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKING_ID);
/* 411 */     return this.mModel.get("trackingId");
/*     */   }
/*     */ 
/*     */   public void setAnonymizeIp(boolean anonymizeIp)
/*     */   {
/* 425 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_ANONYMIZE_IP);
/* 426 */     this.mModel.set("anonymizeIp", Boolean.toString(anonymizeIp));
/*     */   }
/*     */ 
/*     */   public boolean isAnonymizeIpEnabled()
/*     */   {
/* 433 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_ANONYMIZE_IP);
/* 434 */     return Utils.safeParseBoolean(this.mModel.get("anonymizeIp"));
/*     */   }
/*     */ 
/*     */   public void setSampleRate(double sampleRate)
/*     */   {
/* 455 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_SAMPLE_RATE);
/* 456 */     this.mModel.set("sampleRate", Double.toString(sampleRate));
/*     */   }
/*     */ 
/*     */   public double getSampleRate()
/*     */   {
/* 463 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_SAMPLE_RATE);
/* 464 */     return Utils.safeParseDouble(this.mModel.get("sampleRate"));
/*     */   }
/*     */ 
/*     */   public void setUseSecure(boolean useSecure)
/*     */   {
/* 474 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_USE_SECURE);
/* 475 */     this.mModel.set("useSecure", Boolean.toString(useSecure));
/*     */   }
/*     */ 
/*     */   public boolean isUseSecure()
/*     */   {
/* 482 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_USE_SECURE);
/* 483 */     return Boolean.parseBoolean(this.mModel.get("useSecure"));
/*     */   }
/*     */ 
/*     */   public void setReferrer(String referrer)
/*     */   {
/* 493 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_REFERRER);
/* 494 */     this.mModel.setForNextHit("referrer", referrer);
/*     */   }
/*     */ 
/*     */   public void setCampaign(String campaign)
/*     */   {
/* 523 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_CAMPAIGN);
/* 524 */     this.mModel.setForNextHit("campaign", campaign);
/*     */   }
/*     */ 
/*     */   public void setAppId(String appId)
/*     */   {
/* 535 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_ID);
/* 536 */     this.mModel.set("appId", appId);
/*     */   }
/*     */ 
/*     */   public String getAppId() {
/* 540 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_APP_ID);
/* 541 */     return this.mModel.get("appId");
/*     */   }
/*     */ 
/*     */   public void setAppInstallerId(String appInstallerId)
/*     */   {
/* 551 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_INSTALLER_ID);
/* 552 */     this.mModel.set("appInstallerId", appInstallerId);
/*     */   }
/*     */ 
/*     */   public String getAppInstallerId() {
/* 556 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_APP_INSTALLER_ID);
/* 557 */     return this.mModel.get("appInstallerId");
/*     */   }
/*     */ 
/*     */   public void setExceptionParser(ExceptionParser exceptionParser)
/*     */   {
/* 564 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_EXCEPTION_PARSER);
/* 565 */     this.mExceptionParser = exceptionParser;
/*     */   }
/*     */ 
/*     */   public ExceptionParser getExceptionParser()
/*     */   {
/* 572 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_EXCEPTION_PARSER);
/* 573 */     return this.mExceptionParser;
/*     */   }
/*     */ 
/*     */   public void setCustomDimension(int index, String value)
/*     */   {
/* 583 */     if (index < 1) {
/* 584 */       Log.w("index must be > 0, ignoring setCustomDimension call for " + index + ", " + value);
/* 585 */       return;
/*     */     }
/* 587 */     this.mModel.setForNextHit(Utils.getSlottedModelField("customDimension", index), value);
/*     */   }
/*     */ 
/*     */   public void setCustomMetric(int index, Long value)
/*     */   {
/* 598 */     if (index < 1) {
/* 599 */       Log.w("index must be > 0, ignoring setCustomMetric call for " + index + ", " + value);
/* 600 */       return;
/*     */     }
/* 602 */     String tmpValue = null;
/* 603 */     if (value != null) {
/* 604 */       tmpValue = Long.toString(value.longValue());
/*     */     }
/* 606 */     this.mModel.setForNextHit(Utils.getSlottedModelField("customMetric", index), tmpValue);
/*     */   }
/*     */ 
/*     */   public void setCustomDimensionsAndMetrics(Map<Integer, String> dimensions, Map<Integer, Long> metrics)
/*     */   {
/* 618 */     if (dimensions != null) {
/* 619 */       for (Integer key : dimensions.keySet()) {
/* 620 */         setCustomDimension(key.intValue(), (String)dimensions.get(key));
/*     */       }
/*     */     }
/* 623 */     if (metrics != null)
/* 624 */       for (Integer key : metrics.keySet())
/* 625 */         setCustomMetric(key.intValue(), (Long)metrics.get(key));
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructEvent(String category, String action, String label, Long value)
/*     */   {
/* 636 */     Map params = new HashMap();
/*     */ 
/* 638 */     params.put("eventCategory", category);
/* 639 */     params.put("eventAction", action);
/* 640 */     params.put("eventLabel", label);
/* 641 */     if (value != null) {
/* 642 */       params.put("eventValue", Long.toString(value.longValue()));
/*     */     }
/* 644 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_EVENT);
/* 645 */     return params;
/*     */   }
/*     */ 
/*     */   private static String microsToCurrencyString(long currencyInMicros) {
/* 649 */     return DF.format(currencyInMicros / 1000000.0D);
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructTransaction(Transaction trans)
/*     */   {
/* 657 */     Map params = new HashMap();
/*     */ 
/* 659 */     params.put("transactionId", trans.getTransactionId());
/* 660 */     params.put("transactionAffiliation", trans.getAffiliation());
/* 661 */     params.put("transactionShipping", microsToCurrencyString(trans.getShippingCostInMicros()));
/*     */ 
/* 663 */     params.put("transactionTax", microsToCurrencyString(trans.getTotalTaxInMicros()));
/* 664 */     params.put("transactionTotal", microsToCurrencyString(trans.getTotalCostInMicros()));
/* 665 */     params.put("currencyCode", trans.getCurrencyCode());
/* 666 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_TRANSACTION);
/* 667 */     return params;
/*     */   }
/*     */ 
/*     */   private Map<String, String> constructItem(Transaction.Item item, Transaction trans) {
/* 671 */     Map params = new HashMap();
/*     */ 
/* 673 */     params.put("transactionId", trans.getTransactionId());
/* 674 */     params.put("currencyCode", trans.getCurrencyCode());
/* 675 */     params.put("itemCode", item.getSKU());
/* 676 */     params.put("itemName", item.getName());
/* 677 */     params.put("itemCategory", item.getCategory());
/* 678 */     params.put("itemPrice", microsToCurrencyString(item.getPriceInMicros()));
/* 679 */     params.put("itemQuantity", Long.toString(item.getQuantity()));
/* 680 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_ITEM);
/* 681 */     return params;
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructException(String exceptionDescription, boolean fatal)
/*     */   {
/* 689 */     Map params = new HashMap();
/*     */ 
/* 691 */     params.put("exDescription", exceptionDescription);
/* 692 */     params.put("exFatal", Boolean.toString(fatal));
/* 693 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_EXCEPTION);
/* 694 */     return params;
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructRawException(String threadName, Throwable exception, boolean fatal)
/*     */     throws IOException
/*     */   {
/* 703 */     Map params = new HashMap();
/* 704 */     ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
/* 705 */     ObjectOutputStream stream = new ObjectOutputStream(byteStream);
/* 706 */     stream.writeObject(exception);
/* 707 */     stream.close();
/* 708 */     params.put("rawException", Utils.hexEncode(byteStream.toByteArray()));
/*     */ 
/* 710 */     if (threadName != null) {
/* 711 */       params.put("exceptionThreadName", threadName);
/*     */     }
/* 713 */     params.put("exFatal", Boolean.toString(fatal));
/* 714 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_RAW_EXCEPTION);
/* 715 */     return params;
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructTiming(String category, long intervalInMilliseconds, String name, String label)
/*     */   {
/* 723 */     Map params = new HashMap();
/*     */ 
/* 725 */     params.put("timingCategory", category);
/* 726 */     params.put("timingValue", Long.toString(intervalInMilliseconds));
/* 727 */     params.put("timingVar", name);
/* 728 */     params.put("timingLabel", label);
/* 729 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_TIMING);
/* 730 */     return params;
/*     */   }
/*     */ 
/*     */   public Map<String, String> constructSocial(String network, String action, String target)
/*     */   {
/* 737 */     Map params = new HashMap();
/*     */ 
/* 739 */     params.put("socialNetwork", network);
/* 740 */     params.put("socialAction", action);
/* 741 */     params.put("socialTarget", target);
/* 742 */     GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_SOCIAL);
/* 743 */     return params;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setLastTrackTime(long lastTrackTime) {
/* 748 */     this.mLastTrackTime = lastTrackTime;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setTokens(long tokens) {
/* 753 */     this.mTokens = tokens;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   synchronized boolean tokensAvailable()
/*     */   {
/* 766 */     if (!this.mIsThrottlingEnabled) {
/* 767 */       return true;
/*     */     }
/* 769 */     long timeNow = System.currentTimeMillis();
/* 770 */     if (this.mTokens < 120000L) {
/* 771 */       long timeElapsed = timeNow - this.mLastTrackTime;
/* 772 */       if (timeElapsed > 0L) {
/* 773 */         this.mTokens = Math.min(120000L, this.mTokens + timeElapsed);
/*     */       }
/*     */     }
/* 776 */     this.mLastTrackTime = timeNow;
/* 777 */     if (this.mTokens >= 2000L) {
/* 778 */       this.mTokens -= 2000L;
/* 779 */       return true;
/*     */     }
/* 781 */     Log.wDebug("Excessive tracking detected.  Tracking call ignored.");
/* 782 */     return false;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   public void setThrottlingEnabled(boolean throttlingEnabled) {
/* 787 */     this.mIsThrottlingEnabled = throttlingEnabled;
/*     */   }
/*     */ 
/*     */   private static class SimpleModel {
/* 791 */     private Map<String, String> temporaryMap = new HashMap();
/* 792 */     private Map<String, String> permanentMap = new HashMap();
/*     */ 
/*     */     public synchronized void setForNextHit(String key, String value) {
/* 795 */       this.temporaryMap.put(key, value);
/*     */     }
/*     */ 
/*     */     public synchronized void set(String key, String value) {
/* 799 */       this.permanentMap.put(key, value);
/*     */     }
/*     */ 
/*     */     public synchronized void clearTemporaryValues() {
/* 803 */       this.temporaryMap.clear();
/*     */     }
/*     */ 
/*     */     public synchronized String get(String key) {
/* 807 */       String result = (String)this.temporaryMap.get(key);
/* 808 */       if (result != null) {
/* 809 */         return result;
/*     */       }
/* 811 */       return (String)this.permanentMap.get(key);
/*     */     }
/*     */ 
/*     */     public synchronized void setAll(Map<String, String> keysAndValues, Boolean isForNextHit) {
/* 815 */       if (isForNextHit.booleanValue())
/* 816 */         this.temporaryMap.putAll(keysAndValues);
/*     */       else
/* 818 */         this.permanentMap.putAll(keysAndValues);
/*     */     }
/*     */ 
/*     */     public synchronized Map<String, String> getKeysAndValues()
/*     */     {
/* 823 */       Map result = new HashMap(this.permanentMap);
/* 824 */       result.putAll(this.temporaryMap);
/* 825 */       return result;
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.Tracker
 * JD-Core Version:    0.6.2
 */