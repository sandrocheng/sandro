package com.dolphin.browser.addons;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bc extends Binder
  implements bb
{
  public static bb a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.IWebBackForwardList");
      if ((localIInterface != null) && ((localIInterface instanceof bb)))
        localObject = (bb)localIInterface;
      else
        localObject = new bd(paramIBinder);
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
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.IWebBackForwardList");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      int m = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(m);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      int k = b();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      int j = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      String str3 = b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      String str2 = c(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      String str1 = d(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebBackForwardList");
      Bitmap localBitmap = e(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (localBitmap != null)
      {
        paramParcel2.writeInt(i);
        localBitmap.writeToParcel(paramParcel2, i);
      }
      else
      {
        paramParcel2.writeInt(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bc
 * JD-Core Version:    0.6.2
 */