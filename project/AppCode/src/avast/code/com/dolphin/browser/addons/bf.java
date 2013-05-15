package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bf extends Binder
  implements be
{
  public static be a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.IWebSettings");
      if ((localIInterface != null) && ((localIInterface instanceof be)))
        localObject = (be)localIInterface;
      else
        localObject = new bg(paramIBinder);
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
    }
    while (true)
    {
      return i;
      paramParcel2.writeString("com.dolphin.browser.addons.IWebSettings");
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i15 = paramParcel1.readInt();
      boolean bool18 = false;
      if (i15 != 0)
        bool18 = i;
      a(bool18);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool17 = a();
      paramParcel2.writeNoException();
      int i14 = 0;
      if (bool17)
        i14 = i;
      paramParcel2.writeInt(i14);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i13 = paramParcel1.readInt();
      boolean bool16 = false;
      if (i13 != 0)
        bool16 = i;
      b(bool16);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool15 = b();
      paramParcel2.writeNoException();
      int i12 = 0;
      if (bool15)
        i12 = i;
      paramParcel2.writeInt(i12);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i11 = paramParcel1.readInt();
      boolean bool14 = false;
      if (i11 != 0)
        bool14 = i;
      c(bool14);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool13 = c();
      paramParcel2.writeNoException();
      int i10 = 0;
      if (bool13)
        i10 = i;
      paramParcel2.writeInt(i10);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i9 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i9);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i8 = paramParcel1.readInt();
      boolean bool12 = false;
      if (i8 != 0)
        bool12 = i;
      d(bool12);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool11 = e();
      paramParcel2.writeNoException();
      int i7 = 0;
      if (bool11)
        i7 = i;
      paramParcel2.writeInt(i7);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i6 = paramParcel1.readInt();
      boolean bool10 = false;
      if (i6 != 0)
        bool10 = i;
      e(bool10);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool9 = f();
      paramParcel2.writeNoException();
      int i5 = 0;
      if (bool9)
        i5 = i;
      paramParcel2.writeInt(i5);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i4 = paramParcel1.readInt();
      boolean bool8 = false;
      if (i4 != 0)
        bool8 = i;
      f(bool8);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool7 = g();
      paramParcel2.writeNoException();
      int i3 = 0;
      if (bool7)
        i3 = i;
      paramParcel2.writeInt(i3);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int i2 = paramParcel1.readInt();
      boolean bool6 = false;
      if (i2 != 0)
        bool6 = i;
      g(bool6);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool5 = h();
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool5)
        i1 = i;
      paramParcel2.writeInt(i1);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int n = paramParcel1.readInt();
      boolean bool4 = false;
      if (n != 0)
        bool4 = i;
      h(bool4);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool3 = i();
      paramParcel2.writeNoException();
      int m = 0;
      if (bool3)
        m = i;
      paramParcel2.writeInt(m);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      int k = paramParcel1.readInt();
      boolean bool2 = false;
      if (k != 0)
        bool2 = i;
      i(bool2);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      boolean bool1 = j();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = i;
      paramParcel2.writeInt(j);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      String str2 = k();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      b(paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IWebSettings");
      String str1 = l();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.bf
 * JD-Core Version:    0.6.2
 */