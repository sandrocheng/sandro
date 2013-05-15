package com.dolphin.browser.addons;

import android.os.IBinder;
import android.os.Parcel;

class ay
  implements aw
{
  private IBinder a;

  ay(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public boolean a()
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.ITab");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        return bool;
      bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public IBinder asBinder()
  {
    return this.a;
  }

  public aw b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.ITab");
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      aw localaw = ax.a(localParcel2.readStrongBinder());
      return localaw;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public bh c()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.ITab");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      bh localbh = bi.a(localParcel2.readStrongBinder());
      return localbh;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public int d()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.ITab");
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ay
 * JD-Core Version:    0.6.2
 */