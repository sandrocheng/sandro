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

public final class gz extends dn
  implements ha
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
  private int j;
  private int k;
  private long l;

  private gz()
  {
    gy.O();
  }

  private gz(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gy.O();
  }

  private static cj N()
  {
    return gc.h();
  }

  private static void U()
  {
    gy.O();
  }

  private static gz V()
  {
    return new gz();
  }

  private gz W()
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
    this.j = 0;
    this.a = (0xFFFFFEFF & this.a);
    this.k = 0;
    this.a = (0xFFFFFDFF & this.a);
    this.l = 0L;
    this.a = (0xFFFFFBFF & this.a);
    return this;
  }

  private gz X()
  {
    return new gz().a(D());
  }

  private static gy Y()
  {
    return gy.h();
  }

  private gy Z()
  {
    gy localgy = D();
    if (!localgy.a())
      throw b(localgy).a();
    return localgy;
  }

  private gz a(int paramInt)
  {
    this.a = (0x100 | this.a);
    this.j = paramInt;
    af_();
    return this;
  }

  private gz a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    af_();
    return this;
  }

  private gz aa()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = 0L;
    af_();
    return this;
  }

  private gz ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0L;
    af_();
    return this;
  }

  private gz ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private gz ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private gz ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private gz af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = 0L;
    af_();
    return this;
  }

  private gz ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0L;
    af_();
    return this;
  }

  private gz ah()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0L;
    af_();
    return this;
  }

  private gz ai()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = 0;
    af_();
    return this;
  }

  private gz aj()
  {
    this.a = (0xFFFFFDFF & this.a);
    this.k = 0;
    af_();
    return this;
  }

  private gz ak()
  {
    this.a = (0xFFFFFBFF & this.a);
    this.l = 0L;
    af_();
    return this;
  }

  private gz b(int paramInt)
  {
    this.a = (0x200 | this.a);
    this.k = paramInt;
    af_();
    return this;
  }

  private gz b(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    af_();
    return this;
  }

  private gz c(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  private gz d(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private gz d(ev paramev)
  {
    if ((paramev instanceof gy));
    for (gz localgz = a((gy)paramev); ; localgz = this)
    {
      return localgz;
      super.a(paramev);
    }
  }

  private gz e(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private gz f(long paramLong)
  {
    this.a = (0x20 | this.a);
    this.g = paramLong;
    af_();
    return this;
  }

  private gz g(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    af_();
    return this;
  }

  private gz h(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.i = paramLong;
    af_();
    return this;
  }

  private gz i(long paramLong)
  {
    this.a = (0x400 | this.a);
    this.l = paramLong;
    af_();
    return this;
  }

  public final int A()
  {
    return this.j;
  }

  protected final dv B()
  {
    return gc.i();
  }

  public final cj C()
  {
    return gy.i();
  }

  public final gy D()
  {
    gy localgy = new gy(this);
    int m = this.a;
    int n = m & 0x1;
    int i1 = 0;
    if (n == 1)
      i1 = 1;
    gy.a(localgy, this.b);
    if ((m & 0x2) == 2)
      i1 |= 2;
    gy.b(localgy, this.c);
    if ((m & 0x4) == 4)
      i1 |= 4;
    gy.c(localgy, this.d);
    if ((m & 0x8) == 8)
      i1 |= 8;
    gy.d(localgy, this.e);
    if ((m & 0x10) == 16)
      i1 |= 16;
    gy.e(localgy, this.f);
    if ((m & 0x20) == 32)
      i1 |= 32;
    gy.f(localgy, this.g);
    if ((m & 0x40) == 64)
      i1 |= 64;
    gy.g(localgy, this.h);
    if ((m & 0x80) == 128)
      i1 |= 128;
    gy.h(localgy, this.i);
    if ((m & 0x100) == 256)
      i1 |= 256;
    gy.a(localgy, this.j);
    if ((m & 0x200) == 512)
      i1 |= 512;
    gy.b(localgy, this.k);
    if ((m & 0x400) == 1024);
    for (int i2 = i1 | 0x400; ; i2 = i1)
    {
      gy.i(localgy, this.l);
      gy.c(localgy, i2);
      ab_();
      return localgy;
    }
  }

  public final gz a(gy paramgy)
  {
    if (paramgy == gy.h());
    for (gz localgz = this; ; localgz = this)
    {
      return localgz;
      if (paramgy.j())
      {
        long l9 = paramgy.k();
        this.a = (0x1 | this.a);
        this.b = l9;
        af_();
      }
      if (paramgy.l())
      {
        long l8 = paramgy.m();
        this.a = (0x2 | this.a);
        this.c = l8;
        af_();
      }
      if (paramgy.n())
      {
        long l7 = paramgy.o();
        this.a = (0x4 | this.a);
        this.d = l7;
        af_();
      }
      if (paramgy.p())
      {
        long l6 = paramgy.q();
        this.a = (0x8 | this.a);
        this.e = l6;
        af_();
      }
      if (paramgy.r())
      {
        long l5 = paramgy.s();
        this.a = (0x10 | this.a);
        this.f = l5;
        af_();
      }
      if (paramgy.t())
      {
        long l4 = paramgy.u();
        this.a = (0x20 | this.a);
        this.g = l4;
        af_();
      }
      if (paramgy.v())
      {
        long l3 = paramgy.w();
        this.a = (0x40 | this.a);
        this.h = l3;
        af_();
      }
      if (paramgy.x())
      {
        long l2 = paramgy.y();
        this.a = (0x80 | this.a);
        this.i = l2;
        af_();
      }
      if (paramgy.z())
      {
        int n = paramgy.A();
        this.a = (0x100 | this.a);
        this.j = n;
        af_();
      }
      if (paramgy.ak_())
      {
        int m = paramgy.al_();
        this.a = (0x200 | this.a);
        this.k = m;
        af_();
      }
      if (paramgy.am_())
      {
        long l1 = paramgy.an_();
        this.a = (0x400 | this.a);
        this.l = l1;
        af_();
      }
      e(paramgy.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean ak_()
  {
    if ((0x200 & this.a) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int al_()
  {
    return this.k;
  }

  public final boolean am_()
  {
    if ((0x400 & this.a) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long an_()
  {
    return this.l;
  }

  public final gz e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int m = paramm.a();
      switch (m)
      {
      default:
        if (!a(paramm, localgi, paramdf, m))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (gz localgz = this; ; localgz = this)
        {
          return localgz;
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
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramm.f();
        break;
      case 80:
        this.a = (0x200 | this.a);
        this.k = paramm.f();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.l = paramm.e();
      }
    }
  }

  public final gy i()
  {
    gy localgy = D();
    if (!localgy.a())
      throw b(localgy);
    return localgy;
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

  public final boolean z()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gz
 * JD-Core Version:    0.6.2
 */