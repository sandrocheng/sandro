package com.jxphone.mosecurity.c;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class h
  implements Serializable, Comparable
{
  public static final int a = 6;
  public static final int b = 5;
  public static final int c = 4;
  public static final int d = 3;
  public static final int e = 2;
  public static final int f = 1;
  public static final int g = 0;
  public static final int h = -1;
  public static final int i = -2;
  public static final int j = 0;
  public static final int k = 1;
  public static final int l = 2;
  public static final int m = 3;
  public static final int p = 0;
  public static final int q = 1;
  public static final int r = 2;
  private static final long s = -6521294496372341237L;
  public int n;
  public List o;
  private PackageInfo t;
  private Drawable u;
  private int v;
  private String w;

  public h()
  {
    b();
    this.o = new ArrayList();
  }

  private h(Parcel paramParcel)
  {
    b();
    this.t = ((PackageInfo)paramParcel.readParcelable(null));
    this.n = paramParcel.readInt();
    paramParcel.readStringList(this.o);
  }

  private int a(h paramh)
  {
    return this.w.compareTo(paramh.w);
  }

  private PackageInfo a()
  {
    return this.t;
  }

  private void a(PackageInfo paramPackageInfo)
  {
    this.t = paramPackageInfo;
  }

  private void a(PackageInfo paramPackageInfo, PackageManager paramPackageManager)
  {
    this.t = paramPackageInfo;
    if ((paramPackageInfo == null) || (paramPackageInfo.applicationInfo == null))
      b();
    while (true)
    {
      return;
      this.u = paramPackageInfo.applicationInfo.loadIcon(paramPackageManager);
      this.v = paramPackageInfo.applicationInfo.flags;
      this.w = paramPackageInfo.applicationInfo.loadLabel(paramPackageManager).toString();
    }
  }

  private void b()
  {
    this.u = null;
    this.v = -1;
    this.w = null;
  }

  private String c()
  {
    return this.w;
  }

  private Drawable d()
  {
    return this.u;
  }

  private int e()
  {
    return this.v;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.h
 * JD-Core Version:    0.6.2
 */