package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new v();
  final String a;
  final int b;
  final boolean c;
  final int d;
  final int e;
  final String f;
  final boolean g;
  final boolean h;
  final Bundle i;
  Bundle j;
  Fragment k;

  public FragmentState(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    boolean bool2;
    boolean bool3;
    if (paramParcel.readInt() != 0)
    {
      bool2 = bool1;
      this.c = bool2;
      this.d = paramParcel.readInt();
      this.e = paramParcel.readInt();
      this.f = paramParcel.readString();
      if (paramParcel.readInt() == 0)
        break label110;
      bool3 = bool1;
      label70: this.g = bool3;
      if (paramParcel.readInt() == 0)
        break label116;
    }
    while (true)
    {
      this.h = bool1;
      this.i = paramParcel.readBundle();
      this.j = paramParcel.readBundle();
      return;
      bool2 = false;
      break;
      label110: bool3 = false;
      break label70;
      label116: bool1 = false;
    }
  }

  public FragmentState(Fragment paramFragment)
  {
    this.a = paramFragment.getClass().getName();
    this.b = paramFragment.o;
    this.c = paramFragment.x;
    this.d = paramFragment.F;
    this.e = paramFragment.G;
    this.f = paramFragment.H;
    this.g = paramFragment.K;
    this.h = paramFragment.J;
    this.i = paramFragment.q;
  }

  public Fragment a(i parami, Fragment paramFragment)
  {
    if (this.k != null);
    for (Fragment localFragment = this.k; ; localFragment = this.k)
    {
      return localFragment;
      if (this.i != null)
        this.i.setClassLoader(parami.getClassLoader());
      this.k = Fragment.a(parami, this.a, this.i);
      if (this.j != null)
      {
        this.j.setClassLoader(parami.getClassLoader());
        this.k.m = this.j;
      }
      this.k.a(this.b, paramFragment);
      this.k.x = this.c;
      this.k.z = true;
      this.k.F = this.d;
      this.k.G = this.e;
      this.k.H = this.f;
      this.k.K = this.g;
      this.k.J = this.h;
      this.k.B = parami.b;
      if (q.a)
        Log.v("FragmentManager", "Instantiated fragment " + this.k);
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    int n;
    int i1;
    if (this.c)
    {
      n = m;
      paramParcel.writeInt(n);
      paramParcel.writeInt(this.d);
      paramParcel.writeInt(this.e);
      paramParcel.writeString(this.f);
      if (!this.g)
        break label109;
      i1 = m;
      label68: paramParcel.writeInt(i1);
      if (!this.h)
        break label115;
    }
    while (true)
    {
      paramParcel.writeInt(m);
      paramParcel.writeBundle(this.i);
      paramParcel.writeBundle(this.j);
      return;
      n = 0;
      break;
      label109: i1 = 0;
      break label68;
      label115: m = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.6.2
 */