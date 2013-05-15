package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ax extends Binder
  implements aw
{
  public static aw a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.ITab");
      if ((localIInterface != null) && ((localIInterface instanceof aw)))
        localObject = (aw)localIInterface;
      else
        localObject = new ay(paramIBinder);
    }
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int i = 1;
    switch (paramInt1)
    {
    default:
      i = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.ITab");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.ITab");
      boolean bool = a();
      paramParcel2.writeNoException();
      if (bool);
      int m;
      for (int k = i; ; m = 0)
      {
        paramParcel2.writeInt(k);
        break;
      }
      paramParcel1.enforceInterface("com.dolphin.browser.addons.ITab");
      aw localaw = b();
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (localaw != null)
        localIBinder2 = localaw.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.ITab");
      bh localbh = c();
      paramParcel2.writeNoException();
      IBinder localIBinder1 = null;
      if (localbh != null)
        localIBinder1 = localbh.asBinder();
      paramParcel2.writeStrongBinder(localIBinder1);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.ITab");
      int j = d();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ax
 * JD-Core Version:    0.6.2
 */