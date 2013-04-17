package com.tencent.tmsecure.module.permission;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

abstract interface IDummyServiceCallback extends IInterface
{
  public abstract int onRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IDummyServiceCallback
  {
    public Stub()
    {
      attachInterface(this, "com.tencent.tmsecure.service.manager.permission.IServiceControllerCallback");
    }

    public static IDummyServiceCallback asInterface(IBinder paramIBinder)
    {
      return new a(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      boolean bool;
      switch (paramInt1)
      {
      default:
      case 1598968902:
        for (bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2); ; bool = true)
        {
          return bool;
          paramParcel2.writeString("com.tencent.tmsecure.service.manager.permission.IServiceControllerCallback");
        }
      case 1:
      }
      paramParcel1.enforceInterface("com.tencent.tmsecure.service.manager.permission.IServiceControllerCallback");
      if (paramParcel1.readInt() != 0);
      for (PermissionRequestInfo localPermissionRequestInfo = PermissionRequestInfo.createFromParcel(paramParcel1); ; localPermissionRequestInfo = null)
      {
        int i = onRequest(localPermissionRequestInfo);
        paramParcel2.writeInt(0);
        paramParcel2.writeInt(i);
        bool = true;
        break;
      }
    }

    static final class a
      implements IDummyServiceCallback
    {
      private IBinder a;

      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }

      public final IBinder asBinder()
      {
        return this.a;
      }

      public final int onRequest(PermissionRequestInfo paramPermissionRequestInfo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.tencent.tmsecure.service.manager.permission.IServiceControllerCallback");
          if (paramPermissionRequestInfo != null)
          {
            localParcel1.writeInt(1);
            paramPermissionRequestInfo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.a.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int i = localParcel2.readInt();
            return i;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.IDummyServiceCallback
 * JD-Core Version:    0.6.2
 */