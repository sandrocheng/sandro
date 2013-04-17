/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.app.Activity;
/*     */ import android.content.Context;
/*     */ import android.text.TextUtils;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ import java.util.Timer;
/*     */ import java.util.TimerTask;
/*     */ 
/*     */ public class EasyTracker
/*     */ {
/*     */   private static EasyTracker sInstance;
/*     */   static final int NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY = 1000;
/* 135 */   private boolean mIsEnabled = false;
/*     */   private String mTrackingId;
/*     */   private String mAppName;
/*     */   private String mAppVersion;
/* 149 */   private int mDispatchPeriod = 1800;
/*     */   private boolean mDebug;
/*     */   private Double mSampleRate;
/*     */   private boolean mIsAnonymizeIpEnabled;
/*     */   private boolean mIsReportUncaughtExceptionsEnabled;
/*     */   private Thread.UncaughtExceptionHandler mExceptionHandler;
/* 176 */   private boolean mIsAutoActivityTracking = false;
/*     */ 
/* 181 */   private int mActivitiesActive = 0;
/*     */   private long mSessionTimeout;
/*     */   private long mLastOnStopTime;
/*     */   private Context mContext;
/* 194 */   private final Map<String, String> mActivityNameMap = new HashMap();
/*     */ 
/* 198 */   private Tracker mTracker = null;
/*     */   private ParameterLoader mParameterFetcher;
/*     */   private GoogleAnalytics mAnalyticsInstance;
/*     */   private ServiceManager mServiceManager;
/*     */   private Clock mClock;
/*     */   private Timer mTimer;
/*     */   private TimerTask mTimerTask;
/* 217 */   private boolean mIsInForeground = false;
/*     */ 
/*     */   private EasyTracker()
/*     */   {
/*  96 */     this.mClock = new Clock()
/*     */     {
/*     */       public long currentTimeMillis() {
/*  99 */         return System.currentTimeMillis();
/*     */       }
/*     */     };
/*     */   }
/*     */ 
/*     */   public static EasyTracker getInstance()
/*     */   {
/* 110 */     if (sInstance == null) {
/* 111 */       sInstance = new EasyTracker();
/*     */     }
/* 113 */     return sInstance;
/*     */   }
/*     */ 
/*     */   public static Tracker getTracker()
/*     */   {
/* 125 */     if (getInstance().mContext == null) {
/* 126 */       throw new IllegalStateException("You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()");
/*     */     }
/*     */ 
/* 129 */     return getInstance().mTracker;
/*     */   }
/*     */ 
/*     */   boolean checkForNewSession()
/*     */   {
/* 223 */     return (this.mSessionTimeout == 0L) || ((this.mSessionTimeout > 0L) && (this.mClock.currentTimeMillis() > this.mLastOnStopTime + this.mSessionTimeout));
/*     */   }
/*     */ 
/*     */   private void loadParameters()
/*     */   {
/* 232 */     this.mTrackingId = this.mParameterFetcher.getString("ga_trackingId");
/* 233 */     if (TextUtils.isEmpty(this.mTrackingId))
/*     */     {
/* 236 */       this.mTrackingId = this.mParameterFetcher.getString("ga_api_key");
/* 237 */       if (TextUtils.isEmpty(this.mTrackingId)) {
/* 238 */         Log.e("EasyTracker requested, but missing required ga_trackingId");
/* 239 */         this.mTracker = new NoopTracker();
/* 240 */         return;
/*     */       }
/*     */     }
/* 243 */     this.mIsEnabled = true;
/* 244 */     this.mAppName = this.mParameterFetcher.getString("ga_appName");
/* 245 */     this.mAppVersion = this.mParameterFetcher.getString("ga_appVersion");
/* 246 */     this.mDebug = this.mParameterFetcher.getBoolean("ga_debug");
/*     */ 
/* 248 */     this.mSampleRate = this.mParameterFetcher.getDoubleFromString("ga_sampleFrequency");
/* 249 */     if (this.mSampleRate == null) {
/* 250 */       this.mSampleRate = new Double(this.mParameterFetcher.getInt("ga_sampleRate", 100));
/*     */     }
/* 252 */     this.mDispatchPeriod = this.mParameterFetcher.getInt("ga_dispatchPeriod", 1800);
/* 253 */     this.mSessionTimeout = (this.mParameterFetcher.getInt("ga_sessionTimeout", 30) * 1000);
/* 254 */     this.mIsAutoActivityTracking = ((this.mParameterFetcher.getBoolean("ga_autoActivityTracking")) || (this.mParameterFetcher.getBoolean("ga_auto_activity_tracking")));
/*     */ 
/* 257 */     this.mIsAnonymizeIpEnabled = this.mParameterFetcher.getBoolean("ga_anonymizeIp");
/* 258 */     this.mIsReportUncaughtExceptionsEnabled = this.mParameterFetcher.getBoolean("ga_reportUncaughtExceptions");
/*     */ 
/* 260 */     this.mTracker = this.mAnalyticsInstance.getTracker(this.mTrackingId);
/* 261 */     if (!TextUtils.isEmpty(this.mAppName)) {
/* 262 */       Log.i("setting appName to " + this.mAppName);
/* 263 */       this.mTracker.setAppName(this.mAppName);
/*     */     }
/*     */ 
/* 269 */     if (this.mAppVersion != null) {
/* 270 */       this.mTracker.setAppVersion(this.mAppVersion);
/*     */     }
/* 272 */     this.mTracker.setAnonymizeIp(this.mIsAnonymizeIpEnabled);
/* 273 */     this.mTracker.setSampleRate(this.mSampleRate.doubleValue());
/* 274 */     this.mAnalyticsInstance.setDebug(this.mDebug);
/* 275 */     this.mServiceManager.setDispatchPeriod(this.mDispatchPeriod);
/*     */ 
/* 277 */     if (this.mIsReportUncaughtExceptionsEnabled) {
/* 278 */       Thread.UncaughtExceptionHandler newHandler = this.mExceptionHandler;
/* 279 */       if (newHandler == null) {
/* 280 */         ExceptionReporter reporter = new ExceptionReporter(this.mTracker, this.mServiceManager, Thread.getDefaultUncaughtExceptionHandler());
/*     */ 
/* 282 */         newHandler = reporter;
/*     */       }
/* 284 */       Thread.setDefaultUncaughtExceptionHandler(newHandler);
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler handler)
/*     */   {
/* 291 */     this.mExceptionHandler = handler;
/*     */   }
/*     */ 
/*     */   public void setContext(Context ctx)
/*     */   {
/* 304 */     if (ctx == null) {
/* 305 */       Log.e("Context cannot be null");
/*     */     } else {
/* 307 */       ServiceManager sm = GAServiceManager.getInstance();
/* 308 */       setContext(ctx, new ParameterLoaderImpl(ctx.getApplicationContext()), GoogleAnalytics.getInstance(ctx.getApplicationContext()), sm);
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setContext(Context ctx, ParameterLoader parameterLoader, GoogleAnalytics ga, ServiceManager serviceManager)
/*     */   {
/* 322 */     if (ctx == null) {
/* 323 */       Log.e("Context cannot be null");
/*     */     }
/* 325 */     if (this.mContext == null) {
/* 326 */       this.mContext = ctx.getApplicationContext();
/* 327 */       this.mAnalyticsInstance = ga;
/* 328 */       this.mServiceManager = serviceManager;
/* 329 */       this.mParameterFetcher = parameterLoader;
/* 330 */       loadParameters();
/*     */     }
/*     */   }
/*     */ 
/*     */   public void activityStart(Activity activity)
/*     */   {
/* 344 */     setContext(activity);
/* 345 */     if (!this.mIsEnabled) {
/* 346 */       return;
/*     */     }
/*     */ 
/* 351 */     clearExistingTimer();
/*     */ 
/* 353 */     if ((!this.mIsInForeground) && (this.mActivitiesActive == 0) && (checkForNewSession()))
/*     */     {
/* 354 */       this.mTracker.setStartSession(true);
/* 355 */       if (this.mIsAutoActivityTracking);
/*     */     }
/*     */ 
/* 360 */     this.mIsInForeground = true;
/* 361 */     this.mActivitiesActive += 1;
/* 362 */     if (this.mIsAutoActivityTracking)
/* 363 */       this.mTracker.sendView(getActivityName(activity));
/*     */   }
/*     */ 
/*     */   public void activityStop(Activity activity)
/*     */   {
/* 375 */     setContext(activity);
/* 376 */     if (!this.mIsEnabled) {
/* 377 */       return;
/*     */     }
/* 379 */     this.mActivitiesActive -= 1;
/*     */ 
/* 382 */     this.mActivitiesActive = Math.max(0, this.mActivitiesActive);
/*     */ 
/* 384 */     this.mLastOnStopTime = this.mClock.currentTimeMillis();
/*     */ 
/* 386 */     if (this.mActivitiesActive == 0) {
/* 387 */       clearExistingTimer();
/*     */ 
/* 390 */       this.mTimerTask = new NotInForegroundTimerTask(null);
/* 391 */       this.mTimer = new Timer("waitForActivityStart");
/* 392 */       this.mTimer.schedule(this.mTimerTask, 1000L);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void dispatch()
/*     */   {
/* 400 */     if (this.mIsEnabled)
/* 401 */       this.mServiceManager.dispatch();
/*     */   }
/*     */ 
/*     */   private synchronized void clearExistingTimer()
/*     */   {
/* 406 */     if (this.mTimer != null) {
/* 407 */       this.mTimer.cancel();
/* 408 */       this.mTimer = null;
/*     */     }
/*     */   }
/*     */ 
/*     */   private String getActivityName(Activity activity)
/*     */   {
/* 422 */     String canonicalName = activity.getClass().getCanonicalName();
/* 423 */     if (this.mActivityNameMap.containsKey(canonicalName)) {
/* 424 */       return (String)this.mActivityNameMap.get(canonicalName);
/*     */     }
/* 426 */     String name = this.mParameterFetcher.getString(canonicalName);
/* 427 */     if (name == null) {
/* 428 */       name = canonicalName;
/*     */     }
/* 430 */     this.mActivityNameMap.put(canonicalName, name);
/* 431 */     return name;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   static void clearTracker()
/*     */   {
/* 437 */     sInstance = null;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setClock(Clock clock) {
/* 442 */     this.mClock = clock;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   int getActivitiesActive() {
/* 447 */     return this.mActivitiesActive;
/*     */   }
/*     */ 
/*     */   private class NotInForegroundTimerTask extends TimerTask
/*     */   {
/*     */     private NotInForegroundTimerTask()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void run()
/*     */     {
/* 654 */       EasyTracker.this.mIsInForeground = false;
/*     */     }
/*     */   }
/*     */ 
/*     */   class NoopTracker extends Tracker
/*     */   {
/*     */     private String mAppId;
/*     */     private String mAppInstallerId;
/* 458 */     private double mSampleRate = 100.0D;
/*     */     private boolean mIsAnonymizeIp;
/*     */     private boolean mIsUseSecure;
/*     */     private ExceptionParser mExceptionParser;
/*     */ 
/*     */     NoopTracker()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setStartSession(boolean startSession)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setAppName(String appName)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setAppVersion(String appVersion)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setAppScreen(String appScreen)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendView()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendView(String appScreen)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendEvent(String category, String action, String label, Long value)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendTransaction(Transaction transaction)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendException(String description, boolean fatal)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendException(String threadName, Throwable exception, boolean fatal)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendTiming(String category, long intervalInMilliseconds, String name, String label)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void sendSocial(String network, String action, String target)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void close()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void send(String hitType, Map<String, String> params)
/*     */     {
/*     */     }
/*     */ 
/*     */     public String get(String key)
/*     */     {
/* 523 */       return "";
/*     */     }
/*     */ 
/*     */     public void set(String key, String value)
/*     */     {
/*     */     }
/*     */ 
/*     */     public String getTrackingId()
/*     */     {
/* 532 */       return "";
/*     */     }
/*     */ 
/*     */     public void setAnonymizeIp(boolean anonymizeIp)
/*     */     {
/* 537 */       this.mIsAnonymizeIp = anonymizeIp;
/*     */     }
/*     */ 
/*     */     public boolean isAnonymizeIpEnabled()
/*     */     {
/* 542 */       return this.mIsAnonymizeIp;
/*     */     }
/*     */ 
/*     */     public void setSampleRate(double sampleRate)
/*     */     {
/* 547 */       this.mSampleRate = sampleRate;
/*     */     }
/*     */ 
/*     */     public double getSampleRate()
/*     */     {
/* 552 */       return this.mSampleRate;
/*     */     }
/*     */ 
/*     */     public void setUseSecure(boolean useSecure)
/*     */     {
/* 557 */       this.mIsUseSecure = useSecure;
/*     */     }
/*     */ 
/*     */     public boolean isUseSecure()
/*     */     {
/* 562 */       return this.mIsUseSecure;
/*     */     }
/*     */ 
/*     */     public void setReferrer(String referrer)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setCampaign(String campaign)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setAppId(String appId)
/*     */     {
/* 575 */       this.mAppId = appId;
/*     */     }
/*     */ 
/*     */     public String getAppId()
/*     */     {
/* 580 */       return this.mAppId;
/*     */     }
/*     */ 
/*     */     public void setAppInstallerId(String appInstallerId)
/*     */     {
/* 585 */       this.mAppInstallerId = appInstallerId;
/*     */     }
/*     */ 
/*     */     public String getAppInstallerId()
/*     */     {
/* 590 */       return this.mAppInstallerId;
/*     */     }
/*     */ 
/*     */     public void setExceptionParser(ExceptionParser exceptionParser)
/*     */     {
/* 595 */       this.mExceptionParser = exceptionParser;
/*     */     }
/*     */ 
/*     */     public ExceptionParser getExceptionParser()
/*     */     {
/* 600 */       return this.mExceptionParser;
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructEvent(String category, String action, String label, Long value)
/*     */     {
/* 606 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructTransaction(Transaction trans)
/*     */     {
/* 611 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructException(String exceptionDescription, boolean fatal)
/*     */     {
/* 617 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructRawException(String threadName, Throwable exception, boolean fatal)
/*     */     {
/* 623 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructTiming(String category, long intervalInMilliseconds, String name, String label)
/*     */     {
/* 629 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public Map<String, String> constructSocial(String network, String action, String target)
/*     */     {
/* 634 */       return new HashMap();
/*     */     }
/*     */ 
/*     */     public void setCustomDimension(int slot, String value)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setCustomMetric(int slot, Long value)
/*     */     {
/*     */     }
/*     */ 
/*     */     public void setCustomDimensionsAndMetrics(Map<Integer, String> dimensions, Map<Integer, Long> metrics)
/*     */     {
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.EasyTracker
 * JD-Core Version:    0.6.2
 */