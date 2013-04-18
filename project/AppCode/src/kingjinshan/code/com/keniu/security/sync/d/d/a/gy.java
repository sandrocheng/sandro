package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class gy extends dk
  implements ha
{
  private static final long B = 0L;
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  public static final int k = 10;
  public static final int l = 11;
  private static final gy m;
  private int A = -1;
  private int n;
  private long o;
  private long p;
  private long q;
  private long r;
  private long s;
  private long t;
  private long u;
  private long v;
  private int w;
  private int x;
  private long y;
  private byte z = -1;

  static
  {
    gy localgy = new gy();
    m = localgy;
    localgy.o = 0L;
    localgy.p = 0L;
    localgy.q = 0L;
    localgy.r = 0L;
    localgy.s = 0L;
    localgy.t = 0L;
    localgy.u = 0L;
    localgy.v = 0L;
    localgy.w = 0;
    localgy.x = 0;
    localgy.y = 0L;
  }

  private gy()
  {
  }

  private gy(gz paramgz, byte paramByte)
  {
    super(paramgz);
  }

  public static gz N()
  {
    return gz.E();
  }

  private static gy P()
  {
    return m;
  }

  private void Q()
  {
    this.o = 0L;
    this.p = 0L;
    this.q = 0L;
    this.r = 0L;
    this.s = 0L;
    this.t = 0L;
    this.u = 0L;
    this.v = 0L;
    this.w = 0;
    this.x = 0;
    this.y = 0L;
  }

  private static gz R()
  {
    return gz.E();
  }

  private gz S()
  {
    return gz.E().a(this);
  }

  private static gy a(i parami)
  {
    return gz.a((gz)gz.E().a(parami));
  }

  private static gy a(i parami, df paramdf)
  {
    return gz.a((gz)gz.E().a(parami, paramdf));
  }

  private static gy a(m paramm)
  {
    return gz.a((gz)gz.E().a(paramm));
  }

  private static gy a(m paramm, df paramdf)
  {
    return gz.a(gz.E().e(paramm, paramdf));
  }

  private static gy a(InputStream paramInputStream)
  {
    return gz.a((gz)gz.E().a(paramInputStream));
  }

  private static gy a(InputStream paramInputStream, df paramdf)
  {
    return gz.a((gz)gz.E().a(paramInputStream, paramdf));
  }

  private static gy a(byte[] paramArrayOfByte)
  {
    return gz.a((gz)gz.E().a(paramArrayOfByte));
  }

  private static gy a(byte[] paramArrayOfByte, df paramdf)
  {
    return gz.a((gz)gz.E().a(paramArrayOfByte, paramdf));
  }

  public static gz a(gy paramgy)
  {
    return gz.E().a(paramgy);
  }

  private static gy b(InputStream paramInputStream)
  {
    gz localgz = gz.E();
    if (localgz.b(paramInputStream));
    for (gy localgy = gz.a(localgz); ; localgy = null)
      return localgy;
  }

  private static gy b(InputStream paramInputStream, df paramdf)
  {
    gz localgz = gz.E();
    if (localgz.b(paramInputStream, paramdf));
    for (gy localgy = gz.a(localgz); ; localgy = null)
      return localgy;
  }

  private static gz b(dp paramdp)
  {
    return new gz(paramdp);
  }

  public static gy h()
  {
    return m;
  }

  public static final cj i()
  {
    return gc.h();
  }

  public final int A()
  {
    return this.w;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.n) == 1)
      paramn.b(1, this.o);
    if ((0x2 & this.n) == 2)
      paramn.b(2, this.p);
    if ((0x4 & this.n) == 4)
      paramn.b(3, this.q);
    if ((0x8 & this.n) == 8)
      paramn.b(4, this.r);
    if ((0x10 & this.n) == 16)
      paramn.b(5, this.s);
    if ((0x20 & this.n) == 32)
      paramn.b(6, this.t);
    if ((0x40 & this.n) == 64)
      paramn.b(7, this.u);
    if ((0x80 & this.n) == 128)
      paramn.b(8, this.v);
    if ((0x100 & this.n) == 256)
      paramn.a(9, this.w);
    if ((0x200 & this.n) == 512)
      paramn.a(10, this.x);
    if ((0x400 & this.n) == 1024)
      paramn.b(11, this.y);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.z;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.z = 1;
      bool = true;
    }
  }

  public final boolean ak_()
  {
    if ((0x200 & this.n) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int al_()
  {
    return this.x;
  }

  public final boolean am_()
  {
    if ((0x400 & this.n) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long an_()
  {
    return this.y;
  }

  public final int b()
  {
    int j = this.A;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.n;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.e(1, this.o);
      if ((0x2 & this.n) == 2)
        i2 += n.e(2, this.p);
      if ((0x4 & this.n) == 4)
        i2 += n.e(3, this.q);
      if ((0x8 & this.n) == 8)
        i2 += n.e(4, this.r);
      if ((0x10 & this.n) == 16)
        i2 += n.e(5, this.s);
      if ((0x20 & this.n) == 32)
        i2 += n.e(6, this.t);
      if ((0x40 & this.n) == 64)
        i2 += n.e(7, this.u);
      if ((0x80 & this.n) == 128)
        i2 += n.e(8, this.v);
      if ((0x100 & this.n) == 256)
        i2 += n.d(9, this.w);
      if ((0x200 & this.n) == 512)
        i2 += n.d(10, this.x);
      if ((0x400 & this.n) == 1024)
        i2 += n.e(11, this.y);
      j = i2 + b_().b();
      this.A = j;
    }
  }

  protected final dv g()
  {
    return gc.i();
  }

  public final boolean j()
  {
    if ((0x1 & this.n) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long k()
  {
    return this.o;
  }

  public final boolean l()
  {
    if ((0x2 & this.n) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long m()
  {
    return this.p;
  }

  public final boolean n()
  {
    if ((0x4 & this.n) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long o()
  {
    return this.q;
  }

  public final boolean p()
  {
    if ((0x8 & this.n) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.r;
  }

  public final boolean r()
  {
    if ((0x10 & this.n) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
  {
    return this.s;
  }

  public final boolean t()
  {
    if ((0x20 & this.n) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long u()
  {
    return this.t;
  }

  public final boolean v()
  {
    if ((0x40 & this.n) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long w()
  {
    return this.u;
  }

  public final boolean x()
  {
    if ((0x80 & this.n) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long y()
  {
    return this.v;
  }

  public final boolean z()
  {
    if ((0x100 & this.n) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gy
 * JD-Core Version:    0.6.2
 */