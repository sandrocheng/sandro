package com.tencent.tmsecure.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ISDKClient extends IInterface
{
  public abstract DataEntity sendMessage(DataEntity paramDataEntity)
    throws RemoteException;

  public static class Proxy
    implements ISDKClient
  {
    public IBinder asBinder()
    {
      return null;
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Proxy));
      for (boolean bool = true; ; bool = false)
        return bool;
    }

    public int hashCode()
    {
      return 0;
    }

    public DataEntity sendMessage(DataEntity paramDataEntity)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      localParcel1.writeInterfaceToken("com.tencent.tmsecure.common.ISDKClient");
      localParcel1.writeParcelable(paramDataEntity, 0);
      try
      {
        null.transact(20100405, localParcel1, localParcel2, 0);
        localParcel2.readException();
        DataEntity localDataEntity = (DataEntity)localParcel2.readParcelable(DataEntity.class.getClassLoader());
        return localDataEntity;
      }
      finally
      {
        localParcel1.recycle();
        localParcel2.recycle();
      }
    }
  }

  public static abstract class Stub extends Binder
    implements ISDKClient
  {
    public Stub()
    {
      attachInterface(this, "com.tencent.tmsecure.common.ISDKClient");
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Stub));
      for (boolean bool = super.equals((Stub)paramObject); ; bool = false)
        return bool;
    }

    public String getInterfaceDescriptor()
    {
      return "com.tencent.tmsecure.common.ISDKClient";
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if (paramInt1 == 20100405)
      {
        paramParcel1.enforceInterface("com.tencent.tmsecure.common.ISDKClient");
        DataEntity localDataEntity = sendMessage((DataEntity)paramParcel1.readParcelable(DataEntity.class.getClassLoader()));
        paramParcel2.writeNoException();
        paramParcel2.writeParcelable(localDataEntity, 0);
      }
      for (boolean bool = true; ; bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2))
        return bool;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.ISDKClient
 * JD-Core Version:    0.6.2
 */