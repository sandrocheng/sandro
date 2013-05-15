package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class am extends Binder
  implements al
{
  public am()
  {
    attachInterface(this, "com.dolphin.browser.addons.IContentObserver");
  }

  public static al a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.IContentObserver");
      if ((localIInterface != null) && ((localIInterface instanceof al)))
        localObject = (al)localIInterface;
      else
        localObject = new an(paramIBinder);
    }
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
    }
    while (true)
    {
      return bool;
      paramParcel2.writeString("com.dolphin.browser.addons.IContentObserver");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IContentObserver");
      a();
      paramParcel2.writeNoException();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.am
 * JD-Core Version:    0.6.2
 */