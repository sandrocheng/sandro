/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.res.Resources;
/*     */ import android.util.DisplayMetrics;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.util.Collection;
/*     */ import java.util.HashMap;
/*     */ import java.util.Locale;
/*     */ import java.util.Map;
/*     */ 
/*     */ public class GoogleAnalytics
/*     */   implements TrackerHandler
/*     */ {
/*     */   private boolean mDebug;
/*     */   private AnalyticsThread mThread;
/*     */   private Context mContext;
/*     */   private Tracker mDefaultTracker;
/*     */   private AdHitIdGenerator mAdHitIdGenerator;
/*     */   private volatile String mClientId;
/*     */   private volatile Boolean mAppOptOut;
/*  47 */   private final Map<String, Tracker> mTrackers = new HashMap();
/*     */   private String mLastTrackingId;
/*     */   private static GoogleAnalytics sInstance;
/*     */ 
/*     */   @VisibleForTesting
/*     */   GoogleAnalytics()
/*     */   {
/*     */   }
/*     */ 
/*     */   private GoogleAnalytics(Context context)
/*     */   {
/*  56 */     this(context, GAThread.getInstance(context));
/*     */   }
/*     */ 
/*     */   private GoogleAnalytics(Context context, AnalyticsThread thread) {
/*  60 */     if (context == null) {
/*  61 */       throw new IllegalArgumentException("context cannot be null");
/*     */     }
/*  63 */     this.mContext = context.getApplicationContext();
/*  64 */     this.mThread = thread;
/*  65 */     this.mAdHitIdGenerator = new AdHitIdGenerator();
/*  66 */     this.mThread.requestAppOptOut(new AppOptOutCallback()
/*     */     {
/*     */       public void reportAppOptOut(boolean optOut)
/*     */       {
/*  70 */         GoogleAnalytics.this.mAppOptOut = Boolean.valueOf(optOut);
/*     */       }
/*     */     });
/*  74 */     this.mThread.requestClientId(new AnalyticsThread.ClientIdCallback()
/*     */     {
/*     */       public void reportClientId(String clientId)
/*     */       {
/*  78 */         GoogleAnalytics.this.mClientId = clientId;
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   public static GoogleAnalytics getInstance(Context context)
/*     */   {
/*  90 */     synchronized (GoogleAnalytics.class) {
/*  91 */       if (sInstance == null) {
/*  92 */         sInstance = new GoogleAnalytics(context);
/*     */       }
/*  94 */       return sInstance;
/*     */     }
/*     */   }
/*     */ 
/*     */   static GoogleAnalytics getInstance()
/*     */   {
/* 105 */     synchronized (GoogleAnalytics.class) {
/* 106 */       return sInstance;
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   static GoogleAnalytics getNewInstance(Context context, AnalyticsThread thread)
/*     */   {
/* 119 */     synchronized (GoogleAnalytics.class) {
/* 120 */       if (sInstance != null) {
/* 121 */         sInstance.close();
/*     */       }
/* 123 */       sInstance = new GoogleAnalytics(context, thread);
/* 124 */       return sInstance;
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   static void clearInstance()
/*     */   {
/* 133 */     synchronized (GoogleAnalytics.class) {
/* 134 */       sInstance = null;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void setDebug(boolean debug)
/*     */   {
/* 145 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEBUG);
/* 146 */     this.mDebug = debug;
/* 147 */     Log.setDebug(debug);
/*     */   }
/*     */ 
/*     */   public boolean isDebugEnabled()
/*     */   {
/* 154 */     GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEBUG);
/* 155 */     return this.mDebug;
/*     */   }
/*     */ 
/*     */   public Tracker getTracker(String trackingId)
/*     */   {
/* 166 */     synchronized (this) {
/* 167 */       if (trackingId == null) {
/* 168 */         throw new IllegalArgumentException("trackingId cannot be null");
/*     */       }
/* 170 */       Tracker tracker = (Tracker)this.mTrackers.get(trackingId);
/*     */ 
/* 172 */       if (tracker == null) {
/* 173 */         tracker = new Tracker(trackingId, this);
/* 174 */         this.mTrackers.put(trackingId, tracker);
/* 175 */         if (this.mDefaultTracker == null) {
/* 176 */           this.mDefaultTracker = tracker;
/*     */         }
/*     */       }
/* 179 */       GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKER);
/* 180 */       return tracker;
/*     */     }
/*     */   }
/*     */ 
/*     */   public Tracker getDefaultTracker()
/*     */   {
/* 189 */     synchronized (this) {
/* 190 */       GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEFAULT_TRACKER);
/* 191 */       return this.mDefaultTracker;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void setDefaultTracker(Tracker tracker)
/*     */   {
/* 199 */     synchronized (this) {
/* 200 */       GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEFAULT_TRACKER);
/* 201 */       this.mDefaultTracker = tracker;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void closeTracker(Tracker tracker)
/*     */   {
/* 207 */     synchronized (this) {
/* 208 */       this.mTrackers.values().remove(tracker);
/* 209 */       if (tracker == this.mDefaultTracker)
/* 210 */         this.mDefaultTracker = null;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void sendHit(Map<String, String> hit)
/*     */   {
/* 217 */     synchronized (this) {
/* 218 */       if (hit == null) {
/* 219 */         throw new IllegalArgumentException("hit cannot be null");
/*     */       }
/* 221 */       hit.put("language", Utils.getLanguage(Locale.getDefault()));
/* 222 */       hit.put("adSenseAdMobHitId", Integer.toString(this.mAdHitIdGenerator.getAdHitId()));
/* 223 */       hit.put("screenResolution", this.mContext.getResources().getDisplayMetrics().widthPixels + "x" + this.mContext.getResources().getDisplayMetrics().heightPixels);
/*     */ 
/* 225 */       hit.put("usage", GAUsage.getInstance().getAndClearSequence());
/*     */ 
/* 228 */       GAUsage.getInstance().getAndClearUsage();
/*     */ 
/* 230 */       this.mThread.sendHit(hit);
/*     */ 
/* 232 */       this.mLastTrackingId = ((String)hit.get("trackingId"));
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void close()
/*     */   {
/*     */   }
/*     */ 
/*     */   String getTrackingIdForAds()
/*     */   {
/* 246 */     return this.mLastTrackingId;
/*     */   }
/*     */ 
/*     */   String getClientIdForAds()
/*     */   {
/* 253 */     if (this.mClientId == null) {
/* 254 */       return null;
/*     */     }
/* 256 */     return this.mClientId.toString();
/*     */   }
/*     */ 
/*     */   public void setAppOptOut(boolean optOut)
/*     */   {
/* 276 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_OPT_OUT);
/* 277 */     this.mAppOptOut = Boolean.valueOf(optOut);
/* 278 */     this.mThread.setAppOptOut(optOut);
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   Boolean getAppOptOut() {
/* 283 */     return this.mAppOptOut;
/*     */   }
/*     */ 
/*     */   public void requestAppOptOut(AppOptOutCallback callback)
/*     */   {
/* 297 */     GAUsage.getInstance().setUsage(GAUsage.Field.REQUEST_APP_OPT_OUT);
/* 298 */     if (this.mAppOptOut != null)
/* 299 */       callback.reportAppOptOut(this.mAppOptOut.booleanValue());
/*     */     else
/* 301 */       this.mThread.requestAppOptOut(callback);
/*     */   }
/*     */ 
/*     */   public static abstract interface AppOptOutCallback
/*     */   {
/*     */     public abstract void reportAppOptOut(boolean paramBoolean);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GoogleAnalytics
 * JD-Core Version:    0.6.2
 */