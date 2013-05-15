package com.dolphin.browser.addons;

import android.os.IBinder;
import android.os.Parcel;

class br
  implements bp
{
  private IBinder a;

  br(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public aw a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      this.a.transact(3, localParcel1, localParcel2, 0);
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

  public aw a(bh parambh)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      if (parambh != null)
      {
        localIBinder = parambh.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        aw localaw = ax.a(localParcel2.readStrongBinder());
        return localaw;
      }
      IBinder localIBinder = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public aw a(String paramString, boolean paramBoolean)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeString(paramString);
      if (paramBoolean)
      {
        localParcel1.writeInt(i);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        aw localaw = ax.a(localParcel2.readStrongBinder());
        return localaw;
      }
      i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void a(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeInt(paramInt);
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
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

  public void b(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeInt(paramInt);
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public int[] b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      this.a.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int[] arrayOfInt = localParcel2.createIntArray();
      return arrayOfInt;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public aw c(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeInt(paramInt);
      this.a.transact(5, localParcel1, localParcel2, 0);
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

  public bh d(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeInt(paramInt);
      this.a.transact(8, localParcel1, localParcel2, 0);
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

  public aw e(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.TabManager");
      localParcel1.writeInt(paramInt);
      this.a.transact(9, localParcel1, localParcel2, 0);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.br
 * JD-Core Version:    0.6.2
 */