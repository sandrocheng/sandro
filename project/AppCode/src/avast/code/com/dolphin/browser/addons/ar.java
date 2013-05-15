package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ar extends Binder
  implements aq
{
  public static aq a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.IHttpAuthHandler");
      if ((localIInterface != null) && ((localIInterface instanceof aq)))
        localObject = (aq)localIInterface;
      else
        localObject = new as(paramIBinder);
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
      while (true)
      {
        return i;
        paramParcel2.writeString("com.dolphin.browser.addons.IHttpAuthHandler");
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IHttpAuthHandler");
        a(paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IHttpAuthHandler");
        a();
        paramParcel2.writeNoException();
      }
    case 3:
    }
    paramParcel1.enforceInterface("com.dolphin.browser.addons.IHttpAuthHandler");
    boolean bool = b();
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
 * Qualified Name:     com.dolphin.browser.addons.ar
 * JD-Core Version:    0.6.2
 */