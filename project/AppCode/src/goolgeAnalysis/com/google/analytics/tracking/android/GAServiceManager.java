/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.IntentFilter;
/*     */ import android.os.Handler;
/*     */ import android.os.Handler.Callback;
/*     */ import android.os.Message;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ 
/*     */ public class GAServiceManager
/*     */   implements ServiceManager
/*     */ {
/*     */   private static final int MSG_KEY = 1;
/*  39 */   private static final Object MSG_OBJECT = new Object();
/*     */   private Context ctx;
/*     */   private AnalyticsStore store;
/*     */   private volatile AnalyticsThread thread;
/*  44 */   private int dispatchPeriodInSeconds = 1800;
/*  45 */   private boolean pendingDispatch = true;
/*     */ 
/*  48 */   private boolean connected = true;
/*     */ 
/*  52 */   private boolean listenForNetwork = true;
/*     */ 
/*  54 */   private AnalyticsStoreStateListener listener = new AnalyticsStoreStateListener()
/*     */   {
/*     */     public void reportStoreIsEmpty(boolean isEmpty) {
/*  57 */       GAServiceManager.this.updatePowerSaveMode(isEmpty, GAServiceManager.this.connected);
/*     */     }
/*  54 */   };
/*     */   private Handler handler;
/*     */   private GANetworkReceiver networkReceiver;
/*  68 */   private boolean storeIsEmpty = false;
/*     */   private static GAServiceManager instance;
/*     */ 
/*     */   public static GAServiceManager getInstance()
/*     */   {
/*  73 */     if (instance == null) {
/*  74 */       instance = new GAServiceManager();
/*     */     }
/*  76 */     return instance;
/*     */   }
/*     */ 
/*     */   private GAServiceManager()
/*     */   {
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   GAServiceManager(Context ctx, AnalyticsThread thread, AnalyticsStore store, boolean listenForNetwork) {
/*  85 */     this.store = store;
/*  86 */     this.thread = thread;
/*  87 */     this.listenForNetwork = listenForNetwork;
/*  88 */     initialize(ctx, thread);
/*     */   }
/*     */ 
/*     */   private void initializeNetworkReceiver() {
/*  92 */     this.networkReceiver = new GANetworkReceiver(this);
/*  93 */     IntentFilter filter = new IntentFilter();
/*  94 */     filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
/*  95 */     this.ctx.registerReceiver(this.networkReceiver, filter);
/*     */   }
/*     */ 
/*     */   private void initializeHandler() {
/*  99 */     this.handler = new Handler(this.ctx.getMainLooper(), new Handler.Callback()
/*     */     {
/*     */       public boolean handleMessage(Message msg)
/*     */       {
/* 103 */         if ((1 == msg.what) && (GAServiceManager.MSG_OBJECT.equals(msg.obj))) {
/* 104 */           GAUsage.getInstance().setDisableUsage(true);
/* 105 */           GAServiceManager.this.dispatch();
/* 106 */           GAUsage.getInstance().setDisableUsage(false);
/* 107 */           if ((GAServiceManager.this.dispatchPeriodInSeconds > 0) && (!GAServiceManager.this.storeIsEmpty))
/*     */           {
/* 109 */             GAServiceManager.this.handler.sendMessageDelayed(GAServiceManager.this.handler.obtainMessage(1, GAServiceManager.MSG_OBJECT), GAServiceManager.this.dispatchPeriodInSeconds * 1000);
/*     */           }
/*     */         }
/*     */ 
/* 113 */         return true;
/*     */       }
/*     */     });
/* 117 */     if (this.dispatchPeriodInSeconds > 0)
/* 118 */       this.handler.sendMessageDelayed(this.handler.obtainMessage(1, MSG_OBJECT), this.dispatchPeriodInSeconds * 1000);
/*     */   }
/*     */ 
/*     */   synchronized void initialize(Context ctx, AnalyticsThread thread)
/*     */   {
/* 132 */     if (this.ctx != null) {
/* 133 */       return;
/*     */     }
/* 135 */     this.ctx = ctx.getApplicationContext();
/*     */ 
/* 137 */     if (this.thread == null) {
/* 138 */       this.thread = thread;
/* 139 */       if (this.pendingDispatch)
/* 140 */         thread.dispatch();
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   AnalyticsStoreStateListener getListener()
/*     */   {
/* 147 */     return this.listener;
/*     */   }
/*     */ 
/*     */   synchronized AnalyticsStore getStore()
/*     */   {
/* 155 */     if (this.store == null) {
/* 156 */       if (this.ctx == null)
/*     */       {
/* 159 */         throw new IllegalStateException("Cant get a store unless we have a context");
/*     */       }
/* 161 */       this.store = new PersistentAnalyticsStore(this.listener, this.ctx);
/*     */     }
/* 163 */     if (this.handler == null)
/*     */     {
/* 165 */       initializeHandler();
/*     */     }
/* 167 */     if ((this.networkReceiver == null) && (this.listenForNetwork)) {
/* 168 */       initializeNetworkReceiver();
/*     */     }
/* 170 */     return this.store;
/*     */   }
/*     */ 
/*     */   public synchronized void dispatch()
/*     */   {
/* 177 */     if (this.thread == null) {
/* 178 */       Log.w("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
/* 179 */       this.pendingDispatch = true;
/* 180 */       return;
/*     */     }
/*     */ 
/* 183 */     GAUsage.getInstance().setUsage(GAUsage.Field.DISPATCH);
/* 184 */     this.thread.dispatch();
/*     */   }
/*     */ 
/*     */   public synchronized void setDispatchPeriod(int dispatchPeriodInSeconds)
/*     */   {
/* 189 */     if (this.handler == null) {
/* 190 */       Log.w("Need to call initialize() and be in fallback mode to start dispatch.");
/* 191 */       this.dispatchPeriodInSeconds = dispatchPeriodInSeconds;
/* 192 */       return;
/*     */     }
/*     */ 
/* 195 */     GAUsage.getInstance().setUsage(GAUsage.Field.SET_DISPATCH_PERIOD);
/*     */ 
/* 197 */     if ((!this.storeIsEmpty) && (this.connected) && (this.dispatchPeriodInSeconds > 0)) {
/* 198 */       this.handler.removeMessages(1, MSG_OBJECT);
/*     */     }
/* 200 */     this.dispatchPeriodInSeconds = dispatchPeriodInSeconds;
/* 201 */     if ((dispatchPeriodInSeconds > 0) && (!this.storeIsEmpty) && (this.connected))
/* 202 */       this.handler.sendMessageDelayed(this.handler.obtainMessage(1, MSG_OBJECT), dispatchPeriodInSeconds * 1000);
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   synchronized void updatePowerSaveMode(boolean storeIsEmpty, boolean connected)
/*     */   {
/* 209 */     if ((this.storeIsEmpty == storeIsEmpty) && (this.connected == connected)) {
/* 210 */       return;
/*     */     }
/* 212 */     if (((storeIsEmpty) || (!connected)) && (this.dispatchPeriodInSeconds > 0)) {
/* 213 */       this.handler.removeMessages(1, MSG_OBJECT);
/*     */     }
/* 215 */     if ((!storeIsEmpty) && (connected) && (this.dispatchPeriodInSeconds > 0)) {
/* 216 */       this.handler.sendMessageDelayed(this.handler.obtainMessage(1, MSG_OBJECT), this.dispatchPeriodInSeconds * 1000);
/*     */     }
/*     */ 
/* 219 */     Log.iDebug(new StringBuilder().append("PowerSaveMode ").append((storeIsEmpty) || (!connected) ? "initiated." : "terminated.").toString());
/*     */ 
/* 221 */     this.storeIsEmpty = storeIsEmpty;
/* 222 */     this.connected = connected;
/*     */   }
/*     */ 
/*     */   public synchronized void updateConnectivityStatus(boolean connected)
/*     */   {
/* 227 */     updatePowerSaveMode(this.storeIsEmpty, connected);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceManager
 * JD-Core Version:    0.6.2
 */