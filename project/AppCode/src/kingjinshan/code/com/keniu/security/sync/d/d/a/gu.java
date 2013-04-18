package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.m;

public final class gu extends dn
  implements gv
{
  private int a;
  private long b;
  private long c;
  private long d;
  private long e;
  private long f;
  private long g;
  private long h;
  private long i;

  private gu()
  {
    gt.A();
  }

  private gu(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gt.A();
  }

  private static cj D()
  {
    return gc.n();
  }

  private static void E()
  {
    gt.A();
  }

  private static gu N()
  {
    return new gu();
  }

  private gu U()
  {
    super.F();
    this.b = 0L;
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0L;
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0L;
    this.a = (0xFFFFFFEF & this.a);
    this.g = 0L;
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0L;
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0L;
    this.a = (0xFFFFFF7F & this.a);
    return this;
  }

  private gu V()
  {
    return new gu().a(z());
  }

  private static gt W()
  {
    return gt.h();
  }

  private gt X()
  {
    gt localgt = z();
    if (!localgt.a())
      throw b(localgt).a();
    return localgt;
  }

  private gu Y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = 0L;
    af_();
    return this;
  }

  private gu Z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0L;
    af_();
    return this;
  }

  private gu a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    af_();
    return this;
  }

  private gu aa()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private gu ab()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private gu ac()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private gu ad()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = 0L;
    af_();
    return this;
  }

  private gu ae()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0L;
    af_();
    return this;
  }

  private gu af()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0L;
    af_();
    return this;
  }

  private gu b(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    af_();
    return this;
  }

  private gu c(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  private gu d(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private gu d(ev paramev)
  {
    if ((paramev instanceof gt));
    for (gu localgu = a((gt)paramev); ; localgu = this)
    {
      return localgu;
      super.a(paramev);
    }
  }

  private gu e(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private gu f(long paramLong)
  {
    this.a = (0x20 | this.a);
    this.g = paramLong;
    af_();
    return this;
  }

  private gu g(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    af_();
    return this;
  }

  private gu h(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.i = paramLong;
    af_();
    return this;
  }

  protected final dv B()
  {
    return gc.o();
  }

  public final cj C()
  {
    return gt.i();
  }

  public final gu a(gt paramgt)
  {
    if (paramgt == gt.h());
    for (gu localgu = this; ; localgu = this)
    {
      return localgu;
      if (paramgt.j())
      {
        long l8 = paramgt.k();
        this.a = (0x1 | this.a);
        this.b = l8;
        af_();
      }
      if (paramgt.l())
      {
        long l7 = paramgt.m();
        this.a = (0x2 | this.a);
        this.c = l7;
        af_();
      }
      if (paramgt.n())
      {
        long l6 = paramgt.o();
        this.a = (0x4 | this.a);
        this.d = l6;
        af_();
      }
      if (paramgt.p())
      {
        long l5 = paramgt.q();
        this.a = (0x8 | this.a);
        this.e = l5;
        af_();
      }
      if (paramgt.r())
      {
        long l4 = paramgt.s();
        this.a = (0x10 | this.a);
        this.f = l4;
        af_();
      }
      if (paramgt.t())
      {
        long l3 = paramgt.u();
        this.a = (0x20 | this.a);
        this.g = l3;
        af_();
      }
      if (paramgt.v())
      {
        long l2 = paramgt.w();
        this.a = (0x40 | this.a);
        this.h = l2;
        af_();
      }
      if (paramgt.x())
      {
        long l1 = paramgt.y();
        this.a = (0x80 | this.a);
        this.i = l1;
        af_();
      }
      e(paramgt.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final gu e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int j = paramm.a();
      switch (j)
      {
      default:
        if (!a(paramm, localgi, paramdf, j))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (gu localgu = this; ; localgu = this)
        {
          return localgu;
          d(localgi.b());
          af_();
        }
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramm.e();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.e();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.e();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.e();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramm.e();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.g = paramm.e();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramm.e();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramm.e();
      }
    }
  }

  public final gt i()
  {
    gt localgt = z();
    if (!localgt.a())
      throw b(localgt);
    return localgt;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long k()
  {
    return this.b;
  }

  public final boolean l()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long m()
  {
    return this.c;
  }

  public final boolean n()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long o()
  {
    return this.d;
  }

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.e;
  }

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
  {
    return this.f;
  }

  public final boolean t()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long u()
  {
    return this.g;
  }

  public final boolean v()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long w()
  {
    return this.h;
  }

  public final boolean x()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long y()
  {
    return this.i;
  }

  public final gt z()
  {
    gt localgt = new gt(this);
    int j = this.a;
    int k = j & 0x1;
    int m = 0;
    if (k == 1)
      m = 1;
    gt.a(localgt, this.b);
    if ((j & 0x2) == 2)
      m |= 2;
    gt.b(localgt, this.c);
    if ((j & 0x4) == 4)
      m |= 4;
    gt.c(localgt, this.d);
    if ((j & 0x8) == 8)
      m |= 8;
    gt.d(localgt, this.e);
    if ((j & 0x10) == 16)
      m |= 16;
    gt.e(localgt, this.f);
    if ((j & 0x20) == 32)
      m |= 32;
    gt.f(localgt, this.g);
    if ((j & 0x40) == 64)
      m |= 64;
    gt.g(localgt, this.h);
    if ((j & 0x80) == 128);
    for (int n = m | 0x80; ; n = m)
    {
      gt.h(localgt, this.i);
      gt.a(localgt, n);
      ab_();
      return localgt;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gu
 * JD-Core Version:    0.6.2
 */