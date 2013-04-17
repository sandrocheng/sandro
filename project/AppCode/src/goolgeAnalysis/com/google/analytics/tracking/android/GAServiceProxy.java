/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.Intent;
/*     */ import com.google.android.gms.analytics.internal.Command;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ import java.util.Queue;
/*     */ import java.util.Timer;
/*     */ import java.util.TimerTask;
/*     */ import java.util.concurrent.ConcurrentLinkedQueue;
/*     */ import java.util.concurrent.LinkedBlockingQueue;
/*     */ 
/*     */ class GAServiceProxy
/*     */   implements ServiceProxy, AnalyticsGmsCoreClient.OnConnectedListener, AnalyticsGmsCoreClient.OnConnectionFailedListener
/*     */ {
/*     */   private static final int MAX_TRIES = 2;
/*     */   private static final long SERVICE_CONNECTION_TIMEOUT = 300000L;
/*     */   private static final long RECONNECT_WAIT_TIME = 5000L;
/*     */   private static final long FAILED_CONNECT_WAIT_TIME = 3000L;
/*     */   private volatile long lastRequestTime;
/*     */   private volatile ConnectState state;
/*     */   private volatile AnalyticsClient client;
/*     */   private AnalyticsStore store;
/*     */   private AnalyticsStore testStore;
/*     */   private final AnalyticsThread thread;
/*     */   private final Context ctx;
/*  53 */   private final Queue<HitParams> queue = new ConcurrentLinkedQueue();
/*     */   private volatile int connectTries;
/*     */   private volatile Timer reConnectTimer;
/*     */   private volatile Timer failedConnectTimer;
/*     */   private volatile Timer disconnectCheckTimer;
/*     */   private boolean pendingDispatch;
/*     */   private boolean pendingClearHits;
/*     */   private Clock clock;
/*  64 */   private long idleTimeout = 300000L;
/*     */ 
/*     */   GAServiceProxy(Context ctx, AnalyticsThread thread, AnalyticsStore store)
/*     */   {
/*  68 */     this.testStore = store;
/*  69 */     this.ctx = ctx;
/*  70 */     this.thread = thread;
/*  71 */     this.clock = new Clock()
/*     */     {
/*     */       public long currentTimeMillis() {
/*  74 */         return System.currentTimeMillis();
/*     */       }
/*     */     };
/*  77 */     this.connectTries = 0;
/*  78 */     this.state = ConnectState.DISCONNECTED;
/*     */   }
/*     */ 
/*     */   GAServiceProxy(Context ctx, AnalyticsThread thread) {
/*  82 */     this(ctx, thread, null);
/*     */   }
/*     */ 
/*     */   void setClock(Clock clock)
/*     */   {
/*  89 */     this.clock = clock;
/*     */   }
/*     */ 
/*     */   public void putHit(Map<String, String> wireFormatParams, long hitTimeInMilliseconds, String path, List<Command> commands)
/*     */   {
/*  95 */     Log.iDebug("putHit called");
/*     */ 
/*  97 */     this.queue.add(new HitParams(wireFormatParams, hitTimeInMilliseconds, path, commands));
/*  98 */     sendQueue();
/*     */   }
/*     */ 
/*     */   public void dispatch()
/*     */   {
/* 103 */     switch (3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[this.state.ordinal()]) {
/*     */     case 1:
/* 105 */       dispatchToStore();
/* 106 */       break;
/*     */     case 2:
/* 108 */       break;
/*     */     default:
/* 110 */       this.pendingDispatch = true;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void clearHits()
/*     */   {
/* 117 */     Log.iDebug("clearHits called");
/* 118 */     this.queue.clear();
/* 119 */     switch (3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[this.state.ordinal()]) {
/*     */     case 1:
/* 121 */       this.store.clearHits(0L);
/* 122 */       this.pendingClearHits = false;
/* 123 */       break;
/*     */     case 2:
/* 125 */       this.client.clearHits();
/* 126 */       this.pendingClearHits = false;
/* 127 */       break;
/*     */     default:
/* 129 */       this.pendingClearHits = true;
/*     */     }
/*     */   }
/*     */ 
/*     */   private Timer cancelTimer(Timer timer)
/*     */   {
/* 141 */     if (timer != null) {
/* 142 */       timer.cancel();
/*     */     }
/* 144 */     return null;
/*     */   }
/*     */ 
/*     */   private void clearAllTimers() {
/* 148 */     this.reConnectTimer = cancelTimer(this.reConnectTimer);
/* 149 */     this.failedConnectTimer = cancelTimer(this.failedConnectTimer);
/* 150 */     this.disconnectCheckTimer = cancelTimer(this.disconnectCheckTimer);
/*     */   }
/*     */ 
/*     */   public void createService()
/*     */   {
/* 159 */     if (this.client != null) {
/* 160 */       return;
/*     */     }
/* 162 */     this.client = new AnalyticsGmsCoreClient(this.ctx, this, this);
/* 163 */     connectToService();
/*     */   }
/*     */ 
/*     */   void createService(AnalyticsClient client)
/*     */   {
/* 170 */     if (this.client != null) {
/* 171 */       return;
/*     */     }
/* 173 */     this.client = client;
/* 174 */     connectToService();
/*     */   }
/*     */ 
/*     */   public void setIdleTimeout(long idleTimeout)
/*     */   {
/* 182 */     this.idleTimeout = idleTimeout;
/*     */   }
/*     */ 
/*     */   private synchronized void sendQueue()
/*     */   {
/* 194 */     if (!Thread.currentThread().equals(this.thread.getThread())) {
/* 195 */       this.thread.getQueue().add(new Runnable()
/*     */       {
/*     */         public void run() {
/* 198 */           GAServiceProxy.this.sendQueue();
/*     */         }
/*     */       });
/* 201 */       return;
/*     */     }
/* 203 */     if (this.pendingClearHits) {
/* 204 */       clearHits();
/*     */     }
/* 206 */     switch (3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[this.state.ordinal()]) {
/*     */     case 1:
/* 208 */       while (!this.queue.isEmpty()) {
/* 209 */         HitParams hitParams = (HitParams)this.queue.poll();
/* 210 */         Log.iDebug("Sending hit to store");
/* 211 */         this.store.putHit(hitParams.getWireFormatParams(), hitParams.getHitTimeInMilliseconds(), hitParams.getPath(), hitParams.getCommands());
/*     */       }
/*     */ 
/* 215 */       if (this.pendingDispatch)
/* 216 */         dispatchToStore(); break;
/*     */     case 2:
/* 220 */       while (!this.queue.isEmpty()) {
/* 221 */         HitParams hitParams = (HitParams)this.queue.peek();
/* 222 */         Log.iDebug("Sending hit to service");
/* 223 */         this.client.sendHit(hitParams.getWireFormatParams(), hitParams.getHitTimeInMilliseconds(), hitParams.getPath(), hitParams.getCommands());
/*     */ 
/* 225 */         this.queue.poll();
/*     */       }
/* 227 */       this.lastRequestTime = this.clock.currentTimeMillis();
/* 228 */       break;
/*     */     case 3:
/* 230 */       Log.iDebug("Need to reconnect");
/* 231 */       if (!this.queue.isEmpty())
/* 232 */         connectToService(); break;
/*     */     }
/*     */   }
/*     */ 
/*     */   private void dispatchToStore()
/*     */   {
/* 245 */     this.store.dispatch();
/* 246 */     this.pendingDispatch = false;
/*     */   }
/*     */ 
/*     */   private synchronized void useStore()
/*     */   {
/* 253 */     if (this.state == ConnectState.CONNECTED_LOCAL) {
/* 254 */       return;
/*     */     }
/*     */ 
/* 257 */     clearAllTimers();
/* 258 */     Log.iDebug("falling back to local store");
/* 259 */     if (this.testStore != null) {
/* 260 */       this.store = this.testStore;
/*     */     } else {
/* 262 */       GAServiceManager instance = GAServiceManager.getInstance();
/* 263 */       instance.initialize(this.ctx, this.thread);
/* 264 */       this.store = instance.getStore();
/*     */     }
/* 266 */     this.state = ConnectState.CONNECTED_LOCAL;
/* 267 */     sendQueue();
/*     */   }
/*     */ 
/*     */   private synchronized void connectToService() {
/* 271 */     if ((this.client != null) && (this.state != ConnectState.CONNECTED_LOCAL)) {
/*     */       try {
/* 273 */         this.connectTries += 1;
/* 274 */         cancelTimer(this.failedConnectTimer);
/* 275 */         this.state = ConnectState.CONNECTING;
/* 276 */         this.failedConnectTimer = new Timer("Failed Connect");
/* 277 */         this.failedConnectTimer.schedule(new FailedConnectTask(null), 3000L);
/* 278 */         Log.iDebug("connecting to Analytics service");
/* 279 */         this.client.connect();
/*     */       } catch (SecurityException e) {
/* 281 */         Log.w("security exception on connectToService");
/* 282 */         useStore();
/*     */       }
/*     */     } else {
/* 285 */       Log.w("client not initialized.");
/* 286 */       useStore();
/*     */     }
/*     */   }
/*     */ 
/*     */   private synchronized void disconnectFromService() {
/* 291 */     if ((this.client != null) && (this.state == ConnectState.CONNECTED_SERVICE)) {
/* 292 */       this.state = ConnectState.PENDING_DISCONNECT;
/* 293 */       this.client.disconnect();
/*     */     }
/*     */   }
/*     */ 
/*     */   public synchronized void onConnected()
/*     */   {
/* 299 */     this.failedConnectTimer = cancelTimer(this.failedConnectTimer);
/* 300 */     this.connectTries = 0;
/* 301 */     Log.iDebug("Connected to service");
/* 302 */     this.state = ConnectState.CONNECTED_SERVICE;
/* 303 */     sendQueue();
/* 304 */     this.disconnectCheckTimer = cancelTimer(this.disconnectCheckTimer);
/* 305 */     this.disconnectCheckTimer = new Timer("disconnect check");
/* 306 */     this.disconnectCheckTimer.schedule(new DisconnectCheckTask(null), this.idleTimeout);
/*     */   }
/*     */ 
/*     */   public synchronized void onDisconnected()
/*     */   {
/* 311 */     if (this.state == ConnectState.PENDING_DISCONNECT) {
/* 312 */       Log.iDebug("Disconnected from service");
/* 313 */       clearAllTimers();
/* 314 */       this.state = ConnectState.DISCONNECTED;
/*     */     } else {
/* 316 */       Log.iDebug("Unexpected disconnect.");
/* 317 */       this.state = ConnectState.PENDING_CONNECTION;
/* 318 */       if (this.connectTries < 2)
/* 319 */         fireReconnectAttempt();
/*     */       else
/* 321 */         useStore();
/*     */     }
/*     */   }
/*     */ 
/*     */   public synchronized void onConnectionFailed(int errorCode, Intent resolution)
/*     */   {
/* 328 */     this.state = ConnectState.PENDING_CONNECTION;
/* 329 */     if (this.connectTries < 2) {
/* 330 */       Log.w("Service unavailable (code=" + errorCode + "), will retry.");
/* 331 */       fireReconnectAttempt();
/*     */     } else {
/* 333 */       Log.w("Service unavailable (code=" + errorCode + "), using local store.");
/* 334 */       useStore();
/*     */     }
/*     */   }
/*     */ 
/*     */   private void fireReconnectAttempt() {
/* 339 */     this.reConnectTimer = cancelTimer(this.reConnectTimer);
/* 340 */     this.reConnectTimer = new Timer("Service Reconnect");
/* 341 */     this.reConnectTimer.schedule(new ReconnectTask(null), 5000L);
/*     */   }
/*     */ 
/*     */   private static class HitParams
/*     */   {
/*     */     private final Map<String, String> wireFormatParams;
/*     */     private final long hitTimeInMilliseconds;
/*     */     private final String path;
/*     */     private final List<Command> commands;
/*     */ 
/*     */     public HitParams(Map<String, String> wireFormatParams, long hitTimeInMilliseconds, String path, List<Command> commands)
/*     */     {
/* 386 */       this.wireFormatParams = wireFormatParams;
/* 387 */       this.hitTimeInMilliseconds = hitTimeInMilliseconds;
/* 388 */       this.path = path;
/* 389 */       this.commands = commands;
/*     */     }
/*     */ 
/*     */     public Map<String, String> getWireFormatParams() {
/* 393 */       return this.wireFormatParams;
/*     */     }
/*     */ 
/*     */     public long getHitTimeInMilliseconds() {
/* 397 */       return this.hitTimeInMilliseconds;
/*     */     }
/*     */ 
/*     */     public String getPath() {
/* 401 */       return this.path;
/*     */     }
/*     */ 
/*     */     public List<Command> getCommands() {
/* 405 */       return this.commands;
/*     */     }
/*     */   }
/*     */ 
/*     */   private class DisconnectCheckTask extends TimerTask
/*     */   {
/*     */     private DisconnectCheckTask()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void run()
/*     */     {
/* 364 */       if ((GAServiceProxy.this.state == GAServiceProxy.ConnectState.CONNECTED_SERVICE) && (GAServiceProxy.this.queue.isEmpty()) && (GAServiceProxy.this.lastRequestTime + GAServiceProxy.this.idleTimeout < GAServiceProxy.this.clock.currentTimeMillis()))
/*     */       {
/* 367 */         Log.iDebug("Disconnecting due to inactivity");
/* 368 */         GAServiceProxy.this.disconnectFromService();
/*     */       } else {
/* 370 */         GAServiceProxy.this.disconnectCheckTimer.schedule(new DisconnectCheckTask(GAServiceProxy.this), GAServiceProxy.this.idleTimeout);
/*     */       }
/*     */     }
/*     */   }
/*     */ 
/*     */   private class ReconnectTask extends TimerTask
/*     */   {
/*     */     private ReconnectTask()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void run()
/*     */     {
/* 357 */       GAServiceProxy.this.connectToService();
/*     */     }
/*     */   }
/*     */ 
/*     */   private class FailedConnectTask extends TimerTask
/*     */   {
/*     */     private FailedConnectTask()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void run()
/*     */     {
/* 347 */       if (GAServiceProxy.this.state == GAServiceProxy.ConnectState.CONNECTING)
/* 348 */         GAServiceProxy.this.useStore();
/*     */     }
/*     */   }
/*     */ 
/*     */   private static enum ConnectState
/*     */   {
/*  30 */     CONNECTING, 
/*  31 */     CONNECTED_SERVICE, 
/*  32 */     CONNECTED_LOCAL, 
/*  33 */     BLOCKED, 
/*  34 */     PENDING_CONNECTION, 
/*  35 */     PENDING_DISCONNECT, 
/*  36 */     DISCONNECTED;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceProxy
 * JD-Core Version:    0.6.2
 */