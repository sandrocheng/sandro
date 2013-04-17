/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.pm.PackageInfo;
/*     */ import android.content.pm.PackageManager;
/*     */ import android.content.pm.PackageManager.NameNotFoundException;
/*     */ import android.text.TextUtils;
/*     */ import com.google.android.gms.analytics.internal.Command;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.io.ByteArrayInputStream;
/*     */ import java.io.ByteArrayOutputStream;
/*     */ import java.io.File;
/*     */ import java.io.FileInputStream;
/*     */ import java.io.FileNotFoundException;
/*     */ import java.io.FileOutputStream;
/*     */ import java.io.IOException;
/*     */ import java.io.ObjectInputStream;
/*     */ import java.io.PrintStream;
/*     */ import java.util.ArrayList;
/*     */ import java.util.HashMap;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ import java.util.UUID;
/*     */ import java.util.concurrent.LinkedBlockingQueue;
/*     */ 
/*     */ class GAThread extends Thread
/*     */   implements AnalyticsThread
/*     */ {
/*     */   private static final String CLIENT_VERSION = "ma1b4";
/*     */   private static final int MAX_SAMPLE_RATE = 100;
/*     */   private static final int SAMPLE_RATE_MULTIPLIER = 100;
/*     */   private static final int SAMPLE_RATE_MODULO = 10000;
/*     */   static final String API_VERSION = "1";
/*  49 */   private final LinkedBlockingQueue<Runnable> queue = new LinkedBlockingQueue();
/*     */ 
/*  52 */   private volatile boolean mDisabled = false;
/*  53 */   private volatile boolean mClosed = false;
/*     */   private volatile boolean mAppOptOut;
/*     */   private volatile List<Command> mCommands;
/*     */   private volatile MetaModel mMetaModel;
/*     */   private volatile String mInstallCampaign;
/*     */   private volatile String mClientId;
/*     */   private static GAThread sInstance;
/*     */   private volatile ServiceProxy mServiceProxy;
/*     */   private final Context mContext;
/*     */ 
/*     */   static GAThread getInstance(Context ctx)
/*     */   {
/*  65 */     if (sInstance == null) {
/*  66 */       sInstance = new GAThread(ctx);
/*     */     }
/*  68 */     return sInstance;
/*     */   }
/*     */ 
/*     */   private GAThread(Context ctx)
/*     */   {
/*  73 */     super("GAThread");
/*  74 */     if (ctx != null)
/*  75 */       this.mContext = ctx.getApplicationContext();
/*     */     else {
/*  77 */       this.mContext = ctx;
/*     */     }
/*  79 */     start();
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   GAThread(Context ctx, ServiceProxy proxy) {
/*  84 */     super("GAThread");
/*  85 */     if (ctx != null)
/*  86 */       this.mContext = ctx.getApplicationContext();
/*     */     else {
/*  88 */       this.mContext = ctx;
/*     */     }
/*  90 */     this.mServiceProxy = proxy;
/*  91 */     start();
/*     */   }
/*     */ 
/*     */   private void init() {
/*  95 */     this.mServiceProxy.createService();
/*  96 */     this.mCommands = new ArrayList();
/*  97 */     this.mCommands.add(new Command("appendVersion", "_v", "ma1b4"));
/*  98 */     this.mCommands.add(new Command("appendQueueTime", "qt", null));
/*  99 */     this.mCommands.add(new Command("appendCacheBuster", "z", null));
/* 100 */     this.mMetaModel = new MetaModel();
/* 101 */     MetaModelInitializer.set(this.mMetaModel);
/*     */   }
/*     */ 
/*     */   public void sendHit(Map<String, String> hit)
/*     */   {
/* 106 */     final Map hitCopy = new HashMap(hit);
/* 107 */     final long hitTime = System.currentTimeMillis();
/* 108 */     hitCopy.put("hitTime", Long.toString(hitTime));
/* 109 */     queueToThread(new Runnable()
/*     */     {
/*     */       public void run()
/*     */       {
/* 114 */         hitCopy.put("clientId", GAThread.this.mClientId);
/*     */ 
/* 121 */         if ((GAThread.this.mAppOptOut) || (GAThread.this.isSampledOut(hitCopy))) {
/* 122 */           return;
/*     */         }
/* 124 */         if (!TextUtils.isEmpty(GAThread.this.mInstallCampaign)) {
/* 125 */           hitCopy.put("campaign", GAThread.this.mInstallCampaign);
/* 126 */           GAThread.this.mInstallCampaign = null;
/*     */         }
/* 128 */         GAThread.this.fillAppParameters(hitCopy);
/* 129 */         GAThread.this.fillCampaignParameters(hitCopy);
/* 130 */         GAThread.this.fillExceptionParameters(hitCopy);
/* 131 */         Map wireFormatParams = HitBuilder.generateHitParams(GAThread.this.mMetaModel, hitCopy);
/* 132 */         GAThread.this.mServiceProxy.putHit(wireFormatParams, hitTime, GAThread.this.getHostUrl(hitCopy), GAThread.this.mCommands);
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   private String getHostUrl(Map<String, String> hit)
/*     */   {
/* 139 */     String hitUrl = (String)hit.get("internalHitUrl");
/* 140 */     if (hitUrl == null) {
/* 141 */       if (hit.containsKey("useSecure")) {
/* 142 */         hitUrl = Utils.safeParseBoolean((String)hit.get("useSecure")) ? "https://ssl.google-analytics.com/collect" : "http://www.google-analytics.com/collect";
/*     */       }
/*     */       else
/*     */       {
/* 147 */         hitUrl = "https://ssl.google-analytics.com/collect";
/*     */       }
/*     */     }
/* 150 */     return hitUrl;
/*     */   }
/*     */ 
/*     */   private void fillExceptionParameters(Map<String, String> hit)
/*     */   {
/* 157 */     String rawExceptionString = (String)hit.get("rawException");
/* 158 */     if (rawExceptionString == null) {
/* 159 */       return; } hit.remove("rawException");
/* 162 */     byte[] rawExceptionStringBytes = Utils.hexDecode(rawExceptionString);
/* 163 */     ByteArrayInputStream byteStream = new ByteArrayInputStream(rawExceptionStringBytes);
/*     */     Throwable exception;
/*     */     try { ObjectInputStream objectInputStream = new ObjectInputStream(byteStream);
/* 167 */       Object readObject = objectInputStream.readObject();
/* 168 */       objectInputStream.close();
/*     */       Throwable exception;
/* 169 */       if ((readObject instanceof Throwable))
/* 170 */         exception = (Throwable)readObject;
/*     */       else
/* 172 */         return;
/*     */     } catch (IOException e)
/*     */     {
/* 175 */       Log.w("IOException reading exception");
/* 176 */       return;
/*     */     } catch (ClassNotFoundException e) {
/* 178 */       Log.w("ClassNotFoundException reading exception");
/* 179 */       return;
/*     */     }
/*     */ 
/* 183 */     ArrayList additionalPackages = new ArrayList();
/* 184 */     ExceptionParser exceptionParser = new StandardExceptionParser(this.mContext, additionalPackages);
/* 185 */     hit.put("exDescription", exceptionParser.getDescription((String)hit.get("exceptionThreadName"), exception));
/*     */   }
/*     */ 
/*     */   private boolean isSampledOut(Map<String, String> hit)
/*     */   {
/* 192 */     if (hit.get("sampleRate") != null) {
/* 193 */       double sampleRate = Utils.safeParseDouble((String)hit.get("sampleRate"));
/* 194 */       if (sampleRate <= 0.0D) {
/* 195 */         return true;
/*     */       }
/* 197 */       if (sampleRate < 100.0D) {
/* 198 */         String clientId = (String)hit.get("clientId");
/* 199 */         if ((clientId != null) && (Math.abs(clientId.hashCode()) % 10000 >= sampleRate * 100.0D))
/*     */         {
/* 201 */           return true;
/*     */         }
/*     */       }
/*     */     }
/* 205 */     return false;
/*     */   }
/*     */ 
/*     */   private void fillAppParameters(Map<String, String> hit)
/*     */   {
/* 210 */     PackageManager pm = this.mContext.getPackageManager();
/* 211 */     String appId = this.mContext.getPackageName();
/* 212 */     String appInstallerId = pm.getInstallerPackageName(appId);
/*     */ 
/* 214 */     String appName = appId;
/* 215 */     String appVersion = null;
/*     */     try {
/* 217 */       PackageInfo packageInfo = pm.getPackageInfo(this.mContext.getPackageName(), 0);
/* 218 */       if (packageInfo != null) {
/* 219 */         appName = pm.getApplicationLabel(packageInfo.applicationInfo).toString();
/* 220 */         appVersion = packageInfo.versionName;
/*     */       }
/*     */     } catch (PackageManager.NameNotFoundException exception) {
/* 223 */       Log.e("Error retrieving package info: appName set to " + appName);
/*     */     }
/* 225 */     putIfAbsent(hit, "appName", appName);
/* 226 */     putIfAbsent(hit, "appVersion", appVersion);
/* 227 */     putIfAbsent(hit, "appId", appId);
/* 228 */     putIfAbsent(hit, "appInstallerId", appInstallerId);
/* 229 */     hit.put("apiVersion", "1");
/*     */   }
/*     */ 
/*     */   private void putIfAbsent(Map<String, String> hit, String key, String value) {
/* 233 */     if (!hit.containsKey(key))
/* 234 */       hit.put(key, value);
/*     */   }
/*     */ 
/*     */   private void fillCampaignParameters(Map<String, String> hit)
/*     */   {
/* 239 */     String campaign = Utils.filterCampaign((String)hit.get("campaign"));
/* 240 */     if (TextUtils.isEmpty(campaign)) {
/* 241 */       return;
/*     */     }
/*     */ 
/* 245 */     Map paramsMap = Utils.parseURLParameters(campaign);
/*     */ 
/* 251 */     hit.put("campaignContent", paramsMap.get("utm_content"));
/* 252 */     hit.put("campaignMedium", paramsMap.get("utm_medium"));
/* 253 */     hit.put("campaignName", paramsMap.get("utm_campaign"));
/* 254 */     hit.put("campaignSource", paramsMap.get("utm_source"));
/* 255 */     hit.put("campaignKeyword", paramsMap.get("utm_term"));
/* 256 */     hit.put("campaignId", paramsMap.get("utm_id"));
/* 257 */     hit.put("gclid", paramsMap.get("gclid"));
/* 258 */     hit.put("dclid", paramsMap.get("dclid"));
/* 259 */     hit.put("gmob_t", paramsMap.get("gmob_t"));
/*     */   }
/*     */ 
/*     */   public void dispatch()
/*     */   {
/* 264 */     queueToThread(new Runnable()
/*     */     {
/*     */       public void run()
/*     */       {
/* 268 */         GAThread.this.mServiceProxy.dispatch();
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   public void setAppOptOut(final boolean appOptOut)
/*     */   {
/* 275 */     queueToThread(new Runnable()
/*     */     {
/*     */       public void run()
/*     */       {
/* 279 */         if (GAThread.this.mAppOptOut == appOptOut) {
/* 280 */           return;
/*     */         }
/* 282 */         if (appOptOut) {
/* 283 */           File f = GAThread.this.mContext.getFileStreamPath("gaOptOut");
/*     */           try
/*     */           {
/* 286 */             f.createNewFile();
/*     */           } catch (IOException e) {
/* 288 */             Log.w("Error creating optOut file.");
/*     */           }
/*     */ 
/* 291 */           GAThread.this.mServiceProxy.clearHits();
/*     */         } else {
/* 293 */           GAThread.this.mContext.deleteFile("gaOptOut");
/*     */         }
/* 295 */         GAThread.this.mAppOptOut = appOptOut;
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   public void requestAppOptOut(final GoogleAnalytics.AppOptOutCallback callback)
/*     */   {
/* 304 */     queueToThread(new Runnable()
/*     */     {
/*     */       public void run()
/*     */       {
/* 308 */         callback.reportAppOptOut(GAThread.this.mAppOptOut);
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   public void requestClientId(final AnalyticsThread.ClientIdCallback callback)
/*     */   {
/* 316 */     queueToThread(new Runnable()
/*     */     {
/*     */       public void run()
/*     */       {
/* 320 */         callback.reportClientId(GAThread.this.mClientId);
/*     */       }
/*     */     });
/*     */   }
/*     */ 
/*     */   private void queueToThread(Runnable r)
/*     */   {
/* 327 */     this.queue.add(r);
/*     */   }
/*     */ 
/*     */   private boolean loadAppOptOut()
/*     */   {
/* 335 */     return this.mContext.getFileStreamPath("gaOptOut").exists();
/*     */   }
/*     */ 
/*     */   private boolean storeClientId(String clientId)
/*     */   {
/*     */     try
/*     */     {
/* 346 */       FileOutputStream fos = this.mContext.openFileOutput("gaClientId", 0);
/*     */ 
/* 348 */       fos.write(clientId.getBytes());
/* 349 */       fos.close();
/* 350 */       return true;
/*     */     } catch (FileNotFoundException e) {
/* 352 */       Log.e("Error creating clientId file.");
/* 353 */       return false;
/*     */     } catch (IOException e) {
/* 355 */       Log.e("Error writing to clientId file.");
/* 356 */     }return false;
/*     */   }
/*     */ 
/*     */   private String generateClientId()
/*     */   {
/* 366 */     String result = UUID.randomUUID().toString().toLowerCase();
/* 367 */     if (!storeClientId(result)) {
/* 368 */       result = "0";
/*     */     }
/* 370 */     return result;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   String initializeClientId()
/*     */   {
/* 382 */     String rslt = null;
/*     */     try {
/* 384 */       FileInputStream input = this.mContext.openFileInput("gaClientId");
/* 385 */       byte[] bytes = new byte[''];
/* 386 */       int readLen = input.read(bytes, 0, 128);
/* 387 */       if (input.available() > 0)
/*     */       {
/* 390 */         Log.e("clientId file seems corrupted, deleting it.");
/* 391 */         input.close();
/* 392 */         this.mContext.deleteFile("gaInstallData");
/*     */       }
/* 394 */       if (readLen <= 0) {
/* 395 */         Log.e("clientId file seems empty, deleting it.");
/* 396 */         input.close();
/* 397 */         this.mContext.deleteFile("gaInstallData");
/*     */       } else {
/* 399 */         rslt = new String(bytes, 0, readLen);
/* 400 */         input.close();
/*     */       }
/*     */     } catch (FileNotFoundException e) {
/*     */     }
/*     */     catch (IOException e) {
/* 405 */       Log.e("Error reading clientId file, deleting it.");
/* 406 */       this.mContext.deleteFile("gaInstallData");
/*     */     } catch (NumberFormatException e) {
/* 408 */       Log.e("cliendId file doesn't have long value, deleting it.");
/* 409 */       this.mContext.deleteFile("gaInstallData");
/*     */     }
/*     */ 
/* 412 */     if (rslt == null) {
/* 413 */       rslt = generateClientId();
/*     */     }
/* 415 */     return rslt;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   static String getAndClearCampaign(Context context)
/*     */   {
/*     */     try
/*     */     {
/* 427 */       FileInputStream input = context.openFileInput("gaInstallData");
/*     */ 
/* 432 */       byte[] inputBytes = new byte[8192];
/* 433 */       int readLen = input.read(inputBytes, 0, 8192);
/* 434 */       if (input.available() > 0)
/*     */       {
/* 437 */         Log.e("Too much campaign data, ignoring it.");
/* 438 */         input.close();
/* 439 */         context.deleteFile("gaInstallData");
/* 440 */         return null;
/*     */       }
/* 442 */       input.close();
/* 443 */       context.deleteFile("gaInstallData");
/* 444 */       if (readLen <= 0) {
/* 445 */         Log.w("Campaign file is empty.");
/* 446 */         return null;
/*     */       }
/* 448 */       String campaignString = new String(inputBytes, 0, readLen);
/* 449 */       Log.i("Campaign found: " + campaignString);
/* 450 */       return campaignString;
/*     */     }
/*     */     catch (FileNotFoundException e)
/*     */     {
/* 454 */       Log.i("No campaign data found.");
/* 455 */       return null;
/*     */     }
/*     */     catch (IOException e)
/*     */     {
/* 459 */       Log.e("Error reading campaign data.");
/* 460 */       context.deleteFile("gaInstallData");
/* 461 */     }return null;
/*     */   }
/*     */ 
/*     */   private String printStackTrace(Throwable t)
/*     */   {
/* 466 */     ByteArrayOutputStream baos = new ByteArrayOutputStream();
/* 467 */     PrintStream stream = new PrintStream(baos);
/* 468 */     t.printStackTrace(stream);
/* 469 */     stream.flush();
/* 470 */     return new String(baos.toByteArray());
/*     */   }
/*     */ 
/*     */   public void run()
/*     */   {
/*     */     try
/*     */     {
/* 482 */       Thread.sleep(5000L);
/*     */     }
/*     */     catch (InterruptedException e) {
/* 485 */       Log.w("sleep interrupted in GAThread initialize");
/*     */     }
/*     */ 
/* 490 */     if (this.mServiceProxy == null) {
/* 491 */       this.mServiceProxy = new GAServiceProxy(this.mContext, this);
/*     */     }
/* 493 */     init();
/*     */     try
/*     */     {
/* 502 */       this.mAppOptOut = loadAppOptOut();
/* 503 */       this.mClientId = initializeClientId();
/* 504 */       this.mInstallCampaign = getAndClearCampaign(this.mContext);
/*     */     } catch (Throwable t) {
/* 506 */       Log.e("Error initializing the GAThread: " + printStackTrace(t));
/*     */ 
/* 509 */       Log.e("Google Analytics will not start up.");
/* 510 */       this.mDisabled = true;
/*     */     }
/* 512 */     while (!this.mClosed)
/*     */     {
/*     */       try
/*     */       {
/*     */         try
/*     */         {
/* 518 */           Runnable r = (Runnable)this.queue.take();
/* 519 */           if (!this.mDisabled)
/* 520 */             r.run();
/*     */         }
/*     */         catch (InterruptedException e) {
/* 523 */           Log.i(e.toString());
/*     */         }
/*     */       } catch (Throwable t) {
/* 526 */         Log.e("Error on GAThread: " + printStackTrace(t));
/*     */ 
/* 529 */         Log.e("Google Analytics is shutting down.");
/* 530 */         this.mDisabled = true;
/*     */       }
/*     */     }
/*     */   }
/*     */ 
/*     */   public LinkedBlockingQueue<Runnable> getQueue()
/*     */   {
/* 537 */     return this.queue;
/*     */   }
/*     */ 
/*     */   public Thread getThread()
/*     */   {
/* 542 */     return this;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void close() {
/* 547 */     this.mClosed = true;
/* 548 */     interrupt();
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   boolean isDisabled() {
/* 553 */     return this.mDisabled;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GAThread
 * JD-Core Version:    0.6.2
 */