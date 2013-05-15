package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class bw extends Binder
  implements bv
{
  public static bv a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.UIUtil");
      if ((localIInterface != null) && ((localIInterface instanceof bv)))
        localObject = (bv)localIInterface;
      else
        localObject = new bx(paramIBinder);
    }
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool;
    switch (paramInt1)
    {
    default:
      bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    case 2:
      while (true)
      {
        return bool;
        paramParcel2.writeString("com.dolphin.browser.addons.UIUtil");
        bool = true;
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.UIUtil");
        a();
        paramParcel2.writeNoException();
        bool = true;
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.UIUtil");
        b();
        paramParcel2.writeNoException();
        bool = true;
      }
    case 3:
    }
    paramParcel1.enforceInterface("com.dolphin.browser.addons.UIUtil");
    if (paramParcel1.readInt() != 0);
    for (AlertDialogBuilder localAlertDialogBuilder = (AlertDialogBuilder)AlertDialogBuilder.CREATOR.createFromParcel(paramParcel1); ; localAlertDialogBuilder = null)
    {
      a(localAlertDialogBuilder);
      paramParcel2.writeNoException();
      bool = true;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bw
 * JD-Core Version:    0.6.2
 */