package com.dolphin.browser.addons;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ag extends Binder
  implements af
{
  ag()
  {
    attachInterface(this, "com.dolphin.browser.addons.IAddonBarExtention");
  }

  public IBinder asBinder()
  {
    return this;
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
    case 5:
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.IAddonBarExtention");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonBarExtention");
      Bitmap localBitmap = e();
      paramParcel2.writeNoException();
      if (localBitmap != null)
      {
        paramParcel2.writeInt(i);
        localBitmap.writeToParcel(paramParcel2, i);
      }
      else
      {
        paramParcel2.writeInt(0);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonBarExtention");
        int k = d();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(k);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonBarExtention");
        b();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonBarExtention");
        boolean bool = a();
        paramParcel2.writeNoException();
        int j = 0;
        if (bool)
          j = i;
        paramParcel2.writeInt(j);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonBarExtention");
        String str = c();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ag
 * JD-Core Version:    0.6.2
 */