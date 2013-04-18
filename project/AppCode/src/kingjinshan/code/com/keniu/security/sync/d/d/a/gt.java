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

public final class gt extends dk
  implements gv
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  private static final gt i;
  private static final long v;
  private int k;
  private long l;
  private long m;
  private long n;
  private long o;
  private long p;
  private long q;
  private long r;
  private long s;
  private byte t = -1;
  private int u = -1;

  static
  {
    gt localgt = new gt();
    i = localgt;
    localgt.l = 0L;
    localgt.m = 0L;
    localgt.n = 0L;
    localgt.o = 0L;
    localgt.p = 0L;
    localgt.q = 0L;
    localgt.r = 0L;
    localgt.s = 0L;
  }

  private gt()
  {
  }

  private gt(gu paramgu, byte paramByte)
  {
    super(paramgu);
  }

  private static gt J()
  {
    return i;
  }

  private void K()
  {
    this.l = 0L;
    this.m = 0L;
    this.n = 0L;
    this.o = 0L;
    this.p = 0L;
    this.q = 0L;
    this.r = 0L;
    this.s = 0L;
  }

  private static gu L()
  {
    return gu.A();
  }

  private gu M()
  {
    return gu.A().a(this);
  }

  private static gt a(i parami)
  {
    return gu.a((gu)gu.A().a(parami));
  }

  private static gt a(i parami, df paramdf)
  {
    return gu.a((gu)gu.A().a(parami, paramdf));
  }

  private static gt a(m paramm)
  {
    return gu.a((gu)gu.A().a(paramm));
  }

  private static gt a(m paramm, df paramdf)
  {
    return gu.a(gu.A().e(paramm, paramdf));
  }

  private static gt a(InputStream paramInputStream)
  {
    return gu.a((gu)gu.A().a(paramInputStream));
  }

  private static gt a(InputStream paramInputStream, df paramdf)
  {
    return gu.a((gu)gu.A().a(paramInputStream, paramdf));
  }

  private static gt a(byte[] paramArrayOfByte)
  {
    return gu.a((gu)gu.A().a(paramArrayOfByte));
  }

  private static gt a(byte[] paramArrayOfByte, df paramdf)
  {
    return gu.a((gu)gu.A().a(paramArrayOfByte, paramdf));
  }

  public static gu a(gt paramgt)
  {
    return gu.A().a(paramgt);
  }

  private static gt b(InputStream paramInputStream)
  {
    gu localgu = gu.A();
    if (localgu.b(paramInputStream));
    for (gt localgt = gu.a(localgu); ; localgt = null)
      return localgt;
  }

  private static gt b(InputStream paramInputStream, df paramdf)
  {
    gu localgu = gu.A();
    if (localgu.b(paramInputStream, paramdf));
    for (gt localgt = gu.a(localgu); ; localgt = null)
      return localgt;
  }

  private static gu b(dp paramdp)
  {
    return new gu(paramdp);
  }

  public static gt h()
  {
    return i;
  }

  public static final cj i()
  {
    return gc.n();
  }

  public static gu z()
  {
    return gu.A();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.k) == 1)
      paramn.b(1, this.l);
    if ((0x2 & this.k) == 2)
      paramn.b(2, this.m);
    if ((0x4 & this.k) == 4)
      paramn.b(3, this.n);
    if ((0x8 & this.k) == 8)
      paramn.b(4, this.o);
    if ((0x10 & this.k) == 16)
      paramn.b(5, this.p);
    if ((0x20 & this.k) == 32)
      paramn.b(6, this.q);
    if ((0x40 & this.k) == 64)
      paramn.b(7, this.r);
    if ((0x80 & this.k) == 128)
      paramn.b(8, this.s);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.t;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.t = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int j = this.u;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.k;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.e(1, this.l);
      if ((0x2 & this.k) == 2)
        i2 += n.e(2, this.m);
      if ((0x4 & this.k) == 4)
        i2 += n.e(3, this.n);
      if ((0x8 & this.k) == 8)
        i2 += n.e(4, this.o);
      if ((0x10 & this.k) == 16)
        i2 += n.e(5, this.p);
      if ((0x20 & this.k) == 32)
        i2 += n.e(6, this.q);
      if ((0x40 & this.k) == 64)
        i2 += n.e(7, this.r);
      if ((0x80 & this.k) == 128)
        i2 += n.e(8, this.s);
      j = i2 + b_().b();
      this.u = j;
    }
  }

  protected final dv g()
  {
    return gc.o();
  }

  public final boolean j()
  {
    if ((0x1 & this.k) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long k()
  {
    return this.l;
  }

  public final boolean l()
  {
    if ((0x2 & this.k) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long m()
  {
    return this.m;
  }

  public final boolean n()
  {
    if ((0x4 & this.k) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long o()
  {
    return this.n;
  }

  public final boolean p()
  {
    if ((0x8 & this.k) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.o;
  }

  public final boolean r()
  {
    if ((0x10 & this.k) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
  {
    return this.p;
  }

  public final boolean t()
  {
    if ((0x20 & this.k) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long u()
  {
    return this.q;
  }

  public final boolean v()
  {
    if ((0x40 & this.k) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long w()
  {
    return this.r;
  }

  public final boolean x()
  {
    if ((0x80 & this.k) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long y()
  {
    return this.s;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gt
 * JD-Core Version:    0.6.2
 */