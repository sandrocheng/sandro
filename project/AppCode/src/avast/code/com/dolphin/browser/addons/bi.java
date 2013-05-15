package com.dolphin.browser.addons;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bi extends Binder
  implements bh
{
  public static bh a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.IWebView");
      if ((localIInterface != null) && ((localIInterface instanceof bh)))
        localObject = (bh)localIInterface;
      else
        localObject = new bj(paramIBinder);
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
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.IWebView");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      a();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      b();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      boolean bool7 = c();
      paramParcel2.writeNoException();
      int i9 = 0;
      if (bool7)
        i9 = i;
      paramParcel2.writeInt(i9);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      d();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      boolean bool6 = e();
      paramParcel2.writeNoException();
      int i8 = 0;
      if (bool6)
        i8 = i;
      paramParcel2.writeInt(i8);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      f();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      boolean bool5 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i7 = 0;
      if (bool5)
        i7 = i;
      paramParcel2.writeInt(i7);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      if (paramParcel1.readInt() != 0);
      int i5;
      for (int i4 = i; ; i5 = 0)
      {
        boolean bool4 = a(i4);
        paramParcel2.writeNoException();
        int i6 = 0;
        if (bool4)
          i6 = i;
        paramParcel2.writeInt(i6);
        break;
      }
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      if (paramParcel1.readInt() != 0);
      int i2;
      for (int i1 = i; ; i2 = 0)
      {
        boolean bool3 = b(i1);
        paramParcel2.writeNoException();
        int i3 = 0;
        if (bool3)
          i3 = i;
        paramParcel2.writeInt(i3);
        break;
      }
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      float f = g();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      String str3 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      String str2 = i();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      String str1 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
      Bitmap localBitmap = k();
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
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        int n = l();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(n);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        m();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        bb localbb = n();
        paramParcel2.writeNoException();
        if (localbb != null);
        for (IBinder localIBinder2 = localbb.asBinder(); ; localIBinder2 = null)
        {
          paramParcel2.writeStrongBinder(localIBinder2);
          break;
        }
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        a(au.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        b(paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        boolean bool2 = o();
        paramParcel2.writeNoException();
        int m = 0;
        if (bool2)
          m = i;
        paramParcel2.writeInt(m);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        boolean bool1 = p();
        paramParcel2.writeNoException();
        int k = 0;
        if (bool1)
          k = i;
        paramParcel2.writeInt(k);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        int j = q();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(j);
        continue;
        paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebView");
        be localbe = r();
        paramParcel2.writeNoException();
        IBinder localIBinder1 = null;
        if (localbe != null)
          localIBinder1 = localbe.asBinder();
        paramParcel2.writeStrongBinder(localIBinder1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bi
 * JD-Core Version:    0.6.2
 */