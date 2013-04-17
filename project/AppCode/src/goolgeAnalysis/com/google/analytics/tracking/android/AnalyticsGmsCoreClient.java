/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.ComponentName;
/*     */ import android.content.Context;
/*     */ import android.content.Intent;
/*     */ import android.content.ServiceConnection;
/*     */ import android.os.IBinder;
/*     */ import android.os.RemoteException;
/*     */ import com.google.android.gms.analytics.internal.Command;
/*     */ import com.google.android.gms.analytics.internal.IAnalyticsService;
/*     */ import com.google.android.gms.analytics.internal.IAnalyticsService.Stub;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ 
/*     */ class AnalyticsGmsCoreClient
/*     */   implements AnalyticsClient
/*     */ {
/*     */   public static final int BIND_FAILED = 1;
/*     */   public static final int REMOTE_EXECUTION_FAILED = 2;
/*     */   private static final String SERVICE_DESCRIPTOR = "com.google.android.gms.analytics.internal.IAnalyticsService";
/*     */   static final String SERVICE_ACTION = "com.google.android.gms.analytics.service.START";
/*     */   private static final int BIND_ADJUST_WITH_ACTIVITY = 128;
/*     */   public static final String KEY_APP_PACKAGE_NAME = "app_package_name";
/*     */   private ServiceConnection mConnection;
/*     */   private OnConnectedListener mOnConnectedListener;
/*     */   private OnConnectionFailedListener mOnConnectionFailedListener;
/*     */   private Context mContext;
/*     */   private IAnalyticsService mService;
/*     */ 
/*     */   public AnalyticsGmsCoreClient(Context context, OnConnectedListener onConnectedListener, OnConnectionFailedListener onConnectionFailedListener)
/*     */   {
/*  58 */     this.mContext = context;
/*  59 */     if (onConnectedListener == null) {
/*  60 */       throw new IllegalArgumentException("onConnectedListener cannot be null");
/*     */     }
/*  62 */     this.mOnConnectedListener = onConnectedListener;
/*  63 */     if (onConnectionFailedListener == null) {
/*  64 */       throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
/*     */     }
/*  66 */     this.mOnConnectionFailedListener = onConnectionFailedListener;
/*     */   }
/*     */ 
/*     */   public void connect()
/*     */   {
/*  75 */     Intent intent = new Intent("com.google.android.gms.analytics.service.START");
/*  76 */     intent.putExtra("app_package_name", this.mContext.getPackageName());
/*  77 */     if (this.mConnection != null) {
/*  78 */       Log.e("Calling connect() while still connected, missing disconnect().");
/*  79 */       return;
/*     */     }
/*  81 */     this.mConnection = new AnalyticsServiceConnection();
/*  82 */     boolean result = this.mContext.bindService(intent, this.mConnection, 129);
/*     */ 
/*  84 */     Log.iDebug("connect: bindService returned " + result + " for " + intent);
/*  85 */     if (!result) {
/*  86 */       this.mConnection = null;
/*  87 */       this.mOnConnectionFailedListener.onConnectionFailed(1, null);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void disconnect()
/*     */   {
/* 100 */     this.mService = null;
/* 101 */     if (this.mConnection != null)
/*     */     {
/*     */       try
/*     */       {
/* 110 */         this.mContext.unbindService(this.mConnection);
/*     */       }
/*     */       catch (IllegalStateException e)
/*     */       {
/*     */       }
/*     */       catch (IllegalArgumentException e)
/*     */       {
/*     */       }
/*     */ 
/* 119 */       this.mConnection = null;
/* 120 */       this.mOnConnectedListener.onDisconnected();
/*     */     }
/*     */   }
/*     */ 
/*     */   public void sendHit(Map<String, String> wireParams, long hitTimeInMilliseconds, String path, List<Command> commands)
/*     */   {
/*     */     try
/*     */     {
/* 128 */       getService().sendHit(wireParams, hitTimeInMilliseconds, path, commands);
/*     */     } catch (RemoteException e) {
/* 130 */       Log.e("sendHit failed: " + e);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void clearHits()
/*     */   {
/*     */     try {
/* 137 */       getService().clearHits();
/*     */     } catch (RemoteException e) {
/* 139 */       Log.e("clear hits failed: " + e);
/*     */     }
/*     */   }
/*     */ 
/* 143 */   private IAnalyticsService getService() { checkConnected();
/* 144 */     return this.mService;
/*     */   }
/*     */ 
/*     */   protected void checkConnected()
/*     */   {
/* 152 */     if (!isConnected())
/* 153 */       throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
/*     */   }
/*     */ 
/*     */   public boolean isConnected()
/*     */   {
/* 162 */     return this.mService != null;
/*     */   }
/*     */ 
/*     */   private void onServiceBound()
/*     */   {
/* 204 */     onConnectionSuccess();
/*     */   }
/*     */ 
/*     */   private void onConnectionSuccess()
/*     */   {
/* 212 */     this.mOnConnectedListener.onConnected();
/*     */   }
/*     */ 
/*     */   public static abstract interface OnConnectionFailedListener
/*     */   {
/*     */     public abstract void onConnectionFailed(int paramInt, Intent paramIntent);
/*     */   }
/*     */ 
/*     */   public static abstract interface OnConnectedListener
/*     */   {
/*     */     public abstract void onConnected();
/*     */ 
/*     */     public abstract void onDisconnected();
/*     */   }
/*     */ 
/*     */   final class AnalyticsServiceConnection
/*     */     implements ServiceConnection
/*     */   {
/*     */     AnalyticsServiceConnection()
/*     */     {
/*     */     }
/*     */ 
/*     */     public void onServiceConnected(ComponentName component, IBinder binder)
/*     */     {
/* 169 */       Log.dDebug("service connected, binder: " + binder);
/*     */ 
/* 171 */       String descriptor = null;
/*     */       try {
/* 173 */         descriptor = binder.getInterfaceDescriptor();
/* 174 */         if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(descriptor))
/*     */         {
/* 176 */           Log.dDebug("bound to service");
/* 177 */           AnalyticsGmsCoreClient.this.mService = IAnalyticsService.Stub.asInterface(binder);
/* 178 */           AnalyticsGmsCoreClient.this.onServiceBound();
/* 179 */           return;
/*     */         }
/*     */       }
/*     */       catch (RemoteException e)
/*     */       {
/*     */       }
/*     */ 
/* 186 */       AnalyticsGmsCoreClient.this.mContext.unbindService(this);
/* 187 */       AnalyticsGmsCoreClient.this.mConnection = null;
/* 188 */       AnalyticsGmsCoreClient.this.mOnConnectionFailedListener.onConnectionFailed(2, null);
/*     */     }
/*     */ 
/*     */     public void onServiceDisconnected(ComponentName component)
/*     */     {
/* 193 */       Log.dDebug("service disconnected: " + component);
/* 194 */       AnalyticsGmsCoreClient.this.mConnection = null;
/* 195 */       AnalyticsGmsCoreClient.this.mOnConnectedListener.onDisconnected();
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsGmsCoreClient
 * JD-Core Version:    0.6.2
 */