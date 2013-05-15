package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ak extends Binder
  implements aj
{
  ak()
  {
    attachInterface(this, "com.dolphin.browser.addons.IBrowserExtension");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool = true;
    switch (paramInt1)
    {
    default:
      bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    case 2:
    }
    while (true)
    {
      return bool;
      paramParcel2.writeString("com.dolphin.browser.addons.IBrowserExtension");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IBrowserExtension");
      b();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IBrowserExtension");
      a();
      paramParcel2.writeNoException();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ak
 * JD-Core Version:    0.6.2
 */