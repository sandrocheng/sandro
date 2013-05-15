package com.dolphin.browser.addons;

import android.os.IBinder;
import android.os.Parcel;

class an
  implements al
{
  private IBinder a;

  an(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public void a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.IContentObserver");
      this.a.transact(1, localParcel1, localParcel2, 0);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.an
 * JD-Core Version:    0.6.2
 */