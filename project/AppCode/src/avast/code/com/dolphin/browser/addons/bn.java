package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class bn extends Binder
  implements bm
{
  public bn()
  {
    attachInterface(this, "com.dolphin.browser.addons.IWebViewPageExtension");
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
      while (true)
      {
        return i;
        paramParcel2.writeString("com.dolphin.browser.addons.IWebViewPageExtension");
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebViewPageExtension");
        b(bi.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebViewPageExtension");
        a(bi.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebViewPageExtension");
        c(bi.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
      }
    case 4:
    }
    paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebViewPageExtension");
    boolean bool = a(bi.a(paramParcel1.readStrongBinder()), ar.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString());
    paramParcel2.writeNoException();
    if (bool);
    int k;
    for (int j = i; ; k = 0)
    {
      paramParcel2.writeInt(j);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bn
 * JD-Core Version:    0.6.2
 */