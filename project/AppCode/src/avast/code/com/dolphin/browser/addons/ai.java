package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ai extends Binder
  implements ah
{
  ai()
  {
    attachInterface(this, "com.dolphin.browser.addons.IAddonConfig");
  }

  public IBinder asBinder()
  {
    return this;
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
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    }
    while (true)
    {
      return bool;
      paramParcel2.writeString("com.dolphin.browser.addons.IAddonConfig");
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      int i = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      af localaf = b();
      paramParcel2.writeNoException();
      IBinder localIBinder6 = null;
      if (localaf != null)
        localIBinder6 = localaf.asBinder();
      paramParcel2.writeStrongBinder(localIBinder6);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      bm localbm = c();
      paramParcel2.writeNoException();
      IBinder localIBinder5 = null;
      if (localbm != null)
        localIBinder5 = localbm.asBinder();
      paramParcel2.writeStrongBinder(localIBinder5);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      bk localbk = d();
      paramParcel2.writeNoException();
      IBinder localIBinder4 = null;
      if (localbk != null)
        localIBinder4 = localbk.asBinder();
      paramParcel2.writeStrongBinder(localIBinder4);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      aj localaj = e();
      paramParcel2.writeNoException();
      IBinder localIBinder3 = null;
      if (localaj != null)
        localIBinder3 = localaj.asBinder();
      paramParcel2.writeStrongBinder(localIBinder3);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      az localaz = f();
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (localaz != null)
        localIBinder2 = localaz.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      ao localao = g();
      paramParcel2.writeNoException();
      IBinder localIBinder1 = null;
      if (localao != null)
        localIBinder1 = localao.asBinder();
      paramParcel2.writeStrongBinder(localIBinder1);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      a(bw.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      a(bq.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      a(y.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IAddonConfig");
      h();
      paramParcel2.writeNoException();
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ai
 * JD-Core Version:    0.6.2
 */