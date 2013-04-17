/*     */ package com.google.android.gms.analytics.internal;
/*     */ 
/*     */ import android.os.Binder;
/*     */ import android.os.IBinder;
/*     */ import android.os.IInterface;
/*     */ import android.os.Parcel;
/*     */ import android.os.RemoteException;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ 
/*     */ public abstract interface IAnalyticsService extends IInterface
/*     */ {
/*     */   public abstract void sendHit(Map paramMap, long paramLong, String paramString, List<Command> paramList)
/*     */     throws RemoteException;
/*     */ 
/*     */   public abstract void clearHits()
/*     */     throws RemoteException;
/*     */ 
/*     */   public static abstract class Stub extends Binder
/*     */     implements IAnalyticsService
/*     */   {
/*     */     private static final String DESCRIPTOR = "com.google.android.gms.analytics.internal.IAnalyticsService";
/*     */     static final int TRANSACTION_sendHit = 1;
/*     */     static final int TRANSACTION_clearHits = 2;
/*     */ 
/*     */     public Stub()
/*     */     {
/*  18 */       attachInterface(this, "com.google.android.gms.analytics.internal.IAnalyticsService");
/*     */     }
/*     */ 
/*     */     public static IAnalyticsService asInterface(IBinder obj)
/*     */     {
/*  26 */       if (obj == null) {
/*  27 */         return null;
/*     */       }
/*  29 */       IInterface iin = obj.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
/*  30 */       if ((iin != null) && ((iin instanceof IAnalyticsService))) {
/*  31 */         return (IAnalyticsService)iin;
/*     */       }
/*  33 */       return new Proxy(obj);
/*     */     }
/*     */ 
/*     */     public IBinder asBinder() {
/*  37 */       return this;
/*     */     }
/*     */ 
/*     */     public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
/*  41 */       switch (code)
/*     */       {
/*     */       case 1598968902:
/*  45 */         reply.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
/*  46 */         return true;
/*     */       case 1:
/*  50 */         data.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
/*     */ 
/*  52 */         ClassLoader cl = getClass().getClassLoader();
/*  53 */         Map _arg0 = data.readHashMap(cl);
/*     */ 
/*  55 */         long _arg1 = data.readLong();
/*     */ 
/*  57 */         String _arg2 = data.readString();
/*     */ 
/*  59 */         List _arg3 = data.createTypedArrayList(Command.CREATOR);
/*  60 */         sendHit(_arg0, _arg1, _arg2, _arg3);
/*  61 */         reply.writeNoException();
/*  62 */         return true;
/*     */       case 2:
/*  66 */         data.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
/*  67 */         clearHits();
/*  68 */         reply.writeNoException();
/*  69 */         return true;
/*     */       }
/*     */ 
/*  72 */       return super.onTransact(code, data, reply, flags);
/*     */     }
/*     */ 
/*     */     private static class Proxy implements IAnalyticsService {
/*     */       private IBinder mRemote;
/*     */ 
/*     */       Proxy(IBinder remote) {
/*  79 */         this.mRemote = remote;
/*     */       }
/*     */ 
/*     */       public IBinder asBinder() {
/*  83 */         return this.mRemote;
/*     */       }
/*     */ 
/*     */       public String getInterfaceDescriptor() {
/*  87 */         return "com.google.android.gms.analytics.internal.IAnalyticsService";
/*     */       }
/*     */ 
/*     */       public void sendHit(Map wireParams, long hitTimeInMilliseconds, String path, List<Command> commands)
/*     */         throws RemoteException
/*     */       {
/* 102 */         Parcel _data = Parcel.obtain();
/* 103 */         Parcel _reply = Parcel.obtain();
/*     */         try {
/* 105 */           _data.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
/* 106 */           _data.writeMap(wireParams);
/* 107 */           _data.writeLong(hitTimeInMilliseconds);
/* 108 */           _data.writeString(path);
/* 109 */           _data.writeTypedList(commands);
/* 110 */           this.mRemote.transact(1, _data, _reply, 0);
/* 111 */           _reply.readException();
/*     */         }
/*     */         finally {
/* 114 */           _reply.recycle();
/* 115 */           _data.recycle();
/*     */         }
/*     */       }
/*     */ 
/*     */       public void clearHits()
/*     */         throws RemoteException
/*     */       {
/* 123 */         Parcel _data = Parcel.obtain();
/* 124 */         Parcel _reply = Parcel.obtain();
/*     */         try {
/* 126 */           _data.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
/* 127 */           this.mRemote.transact(2, _data, _reply, 0);
/* 128 */           _reply.readException();
/*     */         }
/*     */         finally {
/* 131 */           _reply.recycle();
/* 132 */           _data.recycle();
/*     */         }
/*     */       }
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.android.gms.analytics.internal.IAnalyticsService
 * JD-Core Version:    0.6.2
 */