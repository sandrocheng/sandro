package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.m;

public final class ic extends dn
  implements id
{
  private int a;
  private gn b = gn.h();
  private fp c;
  private long d;
  private long e;

  private ic()
  {
    s();
  }

  private ic(dp paramdp, byte paramByte)
  {
    super(paramdp);
    s();
  }

  private go A()
  {
    this.a = (0x1 | this.a);
    af_();
    return (go)D().e();
  }

  private fp D()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private ic E()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private ic N()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private ic a(go paramgo)
  {
    if (this.c == null)
    {
      this.b = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgo.i());
    }
  }

  private ic b(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private ic b(gn paramgn)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != gn.h()))
      {
        this.b = gn.a(this.b).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramgn;
      break;
      this.c.b(paramgn);
    }
  }

  private ic d(ev paramev)
  {
    if ((paramev instanceof ib));
    for (ic localic = a((ib)paramev); ; localic = this)
    {
      return localic;
      super.a(paramev);
    }
  }

  private static cj r()
  {
    return hh.f();
  }

  private void s()
  {
    if (ib.r())
      D();
  }

  private static ic t()
  {
    return new ic();
  }

  private ic u()
  {
    super.F();
    if (this.c == null)
      this.b = gn.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = 0L;
      this.a = (0xFFFFFFFD & this.a);
      this.e = 0L;
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
    }
  }

  private ic v()
  {
    return new ic().a(y());
  }

  private static ib w()
  {
    return ib.h();
  }

  private ib x()
  {
    ib localib = y();
    if (!localib.a())
      throw b(localib).a();
    return localib;
  }

  private ib y()
  {
    ib localib = new ib(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        ib.a(localib, this.b);
        if ((i & 0x2) != 2)
          break label113;
      }
      label113: for (int k = j | 0x2; ; k = j)
      {
        ib.a(localib, this.d);
        if ((i & 0x4) == 4)
          k |= 4;
        ib.b(localib, this.e);
        ib.a(localib, k);
        ab_();
        return localib;
        ib.a(localib, (gn)this.c.d());
        break;
      }
    }
  }

  private ic z()
  {
    if (this.c == null)
    {
      this.b = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  protected final dv B()
  {
    return hh.g();
  }

  public final cj C()
  {
    return ib.i();
  }

  public final ic a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  public final ic a(gn paramgn)
  {
    if (this.c == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.b = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgn);
    }
  }

  public final ic a(ib paramib)
  {
    ic localic;
    if (paramib == ib.h())
    {
      localic = this;
      return localic;
    }
    gn localgn;
    if (paramib.j())
    {
      localgn = paramib.k();
      if (this.c != null)
        break label156;
      if (((0x1 & this.a) != 1) || (this.b == gn.h()))
        break label147;
      this.b = gn.a(this.b).a(localgn).D();
      label70: af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      if (paramib.m())
        a(paramib.n());
      if (paramib.o())
      {
        long l = paramib.p();
        this.a = (0x4 | this.a);
        this.e = l;
        af_();
      }
      e(paramib.b_());
      localic = this;
      break;
      label147: this.b = localgn;
      break label70;
      label156: this.c.b(localgn);
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!k().a())
        bool = false;
      else
        bool = true;
    }
  }

  public final ic e(m paramm, df paramdf)
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
        for (ic localic = this; ; localic = this)
        {
          return localic;
          d(localgi.b());
          af_();
        }
      case 10:
        go localgo = gn.Z();
        if (j())
          localgo.a(k());
        paramm.a(localgo, paramdf);
        a(localgo.D());
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.d = paramm.e();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.e = paramm.e();
      }
    }
  }

  public final ib i()
  {
    ib localib = y();
    if (!localib.a())
      throw b(localib);
    return localib;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    if (this.c == null);
    for (gn localgn = this.b; ; localgn = (gn)this.c.c())
      return localgn;
  }

  public final gp l()
  {
    if (this.c != null);
    for (Object localObject = (gp)this.c.f(); ; localObject = this.b)
      return localObject;
  }

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.d;
  }

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ic
 * JD-Core Version:    0.6.2
 */