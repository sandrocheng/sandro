package com.avast.android.mobilesecurity.app.locking.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public App a(Parcel paramParcel)
  {
    int i = 1;
    App localApp = new App();
    localApp.e = paramParcel.readString();
    localApp.f = paramParcel.readString();
    localApp.g = paramParcel.readString();
    localApp.h = paramParcel.readString();
    int j;
    int k;
    label70: int m;
    if (paramParcel.readInt() == i)
    {
      j = i;
      localApp.i = j;
      if (paramParcel.readInt() != i)
        break label146;
      k = i;
      localApp.j = k;
      if (paramParcel.readInt() != i)
        break label152;
      m = i;
      label87: localApp.k = m;
      localApp.m = paramParcel.readString();
      localApp.o = paramParcel.readInt();
      localApp.p = paramParcel.readInt();
      localApp.q = paramParcel.readInt();
      if (paramParcel.readInt() != i)
        break label158;
    }
    while (true)
    {
      localApp.l = i;
      return localApp;
      j = 0;
      break;
      label146: k = 0;
      break label70;
      label152: m = 0;
      break label87;
      label158: i = 0;
    }
  }

  public App[] a(int paramInt)
  {
    return new App[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.a
 * JD-Core Version:    0.6.2
 */