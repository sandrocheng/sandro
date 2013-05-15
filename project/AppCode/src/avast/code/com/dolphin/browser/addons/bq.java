package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bq extends Binder
  implements bp
{
  public static bp a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.TabManager");
      if ((localIInterface != null) && ((localIInterface instanceof bp)))
        localObject = (bp)localIInterface;
      else
        localObject = new br(paramIBinder);
    }
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool1 = true;
    switch (paramInt1)
    {
    default:
      bool1 = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
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
    }
    while (true)
    {
      return bool1;
      paramParcel2.writeString("com.dolphin.browser.addons.TabManager");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      String str = paramParcel1.readString();
      boolean bool2;
      label142: aw localaw5;
      if (paramParcel1.readInt() != 0)
      {
        bool2 = bool1;
        localaw5 = a(str, bool2);
        paramParcel2.writeNoException();
        if (localaw5 == null)
          break label185;
      }
      label185: for (IBinder localIBinder6 = localaw5.asBinder(); ; localIBinder6 = null)
      {
        paramParcel2.writeStrongBinder(localIBinder6);
        break;
        bool2 = false;
        break label142;
      }
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      aw localaw4 = a();
      paramParcel2.writeNoException();
      IBinder localIBinder5 = null;
      if (localaw4 != null)
        localIBinder5 = localaw4.asBinder();
      paramParcel2.writeStrongBinder(localIBinder5);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      aw localaw3 = c(paramParcel1.readInt());
      paramParcel2.writeNoException();
      IBinder localIBinder4 = null;
      if (localaw3 != null)
        localIBinder4 = localaw3.asBinder();
      paramParcel2.writeStrongBinder(localIBinder4);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      int[] arrayOfInt = b();
      paramParcel2.writeNoException();
      paramParcel2.writeIntArray(arrayOfInt);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      aw localaw2 = a(bi.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      IBinder localIBinder3 = null;
      if (localaw2 != null)
        localIBinder3 = localaw2.asBinder();
      paramParcel2.writeStrongBinder(localIBinder3);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      bh localbh = d(paramParcel1.readInt());
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (localbh != null)
        localIBinder2 = localbh.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.TabManager");
      aw localaw1 = e(paramParcel1.readInt());
      paramParcel2.writeNoException();
      IBinder localIBinder1 = null;
      if (localaw1 != null)
        localIBinder1 = localaw1.asBinder();
      paramParcel2.writeStrongBinder(localIBinder1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bq
 * JD-Core Version:    0.6.2
 */