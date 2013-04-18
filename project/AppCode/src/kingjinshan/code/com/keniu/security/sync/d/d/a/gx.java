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

public final class gx extends dn
  implements hb
{
  private int a;
  private long b;
  private long c;

  private gx()
  {
    gw.n();
  }

  private gx(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gw.n();
  }

  private gx a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    af_();
    return this;
  }

  private gx b(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    af_();
    return this;
  }

  private gx d(ev paramev)
  {
    if ((paramev instanceof gw));
    for (gx localgx = a((gw)paramev); ; localgx = this)
    {
      return localgx;
      super.a(paramev);
    }
  }

  private static cj n()
  {
    return gc.j();
  }

  private static void o()
  {
    gw.n();
  }

  private static gx p()
  {
    return new gx();
  }

  private gx q()
  {
    super.F();
    this.b = 0L;
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0L;
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private gx r()
  {
    return new gx().a(v());
  }

  private static gw s()
  {
    return gw.h();
  }

  private gw t()
  {
    gw localgw = v();
    if (!localgw.a())
      throw b(localgw);
    return localgw;
  }

  private gw u()
  {
    gw localgw = v();
    if (!localgw.a())
      throw b(localgw).a();
    return localgw;
  }

  private gw v()
  {
    gw localgw = new gw(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    gw.a(localgw, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      gw.b(localgw, this.c);
      gw.a(localgw, m);
      ab_();
      return localgw;
    }
  }

  private gx w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = 0L;
    af_();
    return this;
  }

  private gx x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0L;
    af_();
    return this;
  }

  protected final dv B()
  {
    return gc.k();
  }

  public final cj C()
  {
    return gw.i();
  }

  public final gx a(gw paramgw)
  {
    if (paramgw == gw.h());
    for (gx localgx = this; ; localgx = this)
    {
      return localgx;
      if (paramgw.j())
      {
        long l2 = paramgw.k();
        this.a = (0x1 | this.a);
        this.b = l2;
        af_();
      }
      if (paramgw.l())
      {
        long l1 = paramgw.m();
        this.a = (0x2 | this.a);
        this.c = l1;
        af_();
      }
      e(paramgw.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final gx e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i = paramm.a();
      switch (i)
      {
      default:
        if (!a(paramm, localgi, paramdf, i))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (gx localgx = this; ; localgx = this)
        {
          return localgx;
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
      }
    }
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gx
 * JD-Core Version:    0.6.2
 */