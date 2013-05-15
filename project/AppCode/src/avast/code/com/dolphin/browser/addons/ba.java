package com.dolphin.browser.addons;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ba extends Binder
  implements az
{
  public ba()
  {
    attachInterface(this, "com.dolphin.browser.addons.ITitleBarExtension");
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
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.ITitleBarExtension");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.ITitleBarExtension");
      Bitmap localBitmap = b();
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
        paramParcel1.enforceInterface("com.dolphin.browser.addons.ITitleBarExtension");
        a();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.ITitleBarExtension");
        a(paramParcel1.readString());
        paramParcel2.writeNoException();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ba
 * JD-Core Version:    0.6.2
 */