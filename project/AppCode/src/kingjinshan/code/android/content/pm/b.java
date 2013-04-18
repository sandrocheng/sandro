package android.content.pm;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Parcel;

final class b
  implements IPackageManager
{
  private IBinder a;

  b(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  private static String a()
  {
    return "android.content.pm.IPackageManager";
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final int getApplicationEnabledSetting(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.content.pm.IPackageManager");
      localParcel1.writeString(paramString);
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final int getComponentEnabledSetting(ComponentName paramComponentName)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.content.pm.IPackageManager");
      if (paramComponentName != null)
      {
        localParcel1.writeInt(1);
        paramComponentName.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(2, localParcel1, localParcel2, 0);
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

  public final void setApplicationEnabledSetting(String paramString, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.content.pm.IPackageManager");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void setComponentEnabledSetting(ComponentName paramComponentName, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.content.pm.IPackageManager");
      if (paramComponentName != null)
      {
        localParcel1.writeInt(1);
        paramComponentName.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void setPackageStoppedState(String paramString, boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.content.pm.IPackageManager");
      localParcel1.writeString(paramString);
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(5, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.b
 * JD-Core Version:    0.6.2
 */