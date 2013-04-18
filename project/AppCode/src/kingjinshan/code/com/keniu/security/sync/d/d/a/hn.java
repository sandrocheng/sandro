package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.m;

public final class hn extends dn
  implements ho
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private long d;
  private int e;

  private hn()
  {
    r();
  }

  private hn(dp paramdp, byte paramByte)
  {
    super(paramdp);
    r();
  }

  private gf A()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)D().e();
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

  private hn E()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private hn N()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private hn a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private hn a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  private hn a(ge paramge)
  {
    if (this.c == null)
    {
      if (paramge == null)
        throw new NullPointerException();
      this.b = paramge;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramge);
    }
  }

  private hn a(gf paramgf)
  {
    if (this.c == null)
    {
      this.b = paramgf.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgf.i());
    }
  }

  private hn b(ge paramge)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(paramge).n();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramge;
      break;
      this.c.b(paramge);
    }
  }

  private hn d(ev paramev)
  {
    if ((paramev instanceof hm));
    for (hn localhn = a((hm)paramev); ; localhn = this)
    {
      return localhn;
      super.a(paramev);
    }
  }

  private static cj q()
  {
    return hh.d();
  }

  private void r()
  {
    if (hm.q())
      D();
  }

  private static hn s()
  {
    return new hn();
  }

  private hn t()
  {
    super.F();
    if (this.c == null)
      this.b = ge.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = 0L;
      this.a = (0xFFFFFFFD & this.a);
      this.e = 0;
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
    }
  }

  private hn u()
  {
    return new hn().a(y());
  }

  private static hm v()
  {
    return hm.h();
  }

  private hm w()
  {
    hm localhm = y();
    if (!localhm.a())
      throw b(localhm);
    return localhm;
  }

  private hm x()
  {
    hm localhm = y();
    if (!localhm.a())
      throw b(localhm).a();
    return localhm;
  }

  private hm y()
  {
    hm localhm = new hm(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        hm.a(localhm, this.b);
        if ((i & 0x2) != 2)
          break label113;
      }
      label113: for (int k = j | 0x2; ; k = j)
      {
        hm.a(localhm, this.d);
        if ((i & 0x4) == 4)
          k |= 4;
        hm.a(localhm, this.e);
        hm.b(localhm, k);
        ab_();
        return localhm;
        hm.a(localhm, (ge)this.c.d());
        break;
      }
    }
  }

  private hn z()
  {
    if (this.c == null)
    {
      this.b = ge.h();
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
    return hh.e();
  }

  public final cj C()
  {
    return hm.i();
  }

  public final hn a(hm paramhm)
  {
    hn localhn;
    if (paramhm == hm.h())
    {
      localhn = this;
      return localhn;
    }
    ge localge;
    if (paramhm.j())
    {
      localge = paramhm.k();
      if (this.c != null)
        break label173;
      if (((0x1 & this.a) != 1) || (this.b == ge.h()))
        break label164;
      this.b = ge.a(this.b).a(localge).n();
      label70: af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      if (paramhm.m())
      {
        long l = paramhm.n();
        this.a = (0x2 | this.a);
        this.d = l;
        af_();
      }
      if (paramhm.o())
      {
        int i = paramhm.p();
        this.a = (0x4 | this.a);
        this.e = i;
        af_();
      }
      e(paramhm.b_());
      localhn = this;
      break;
      label164: this.b = localge;
      break label70;
      label173: this.c.b(localge);
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

  public final hn e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
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
        for (hn localhn = this; ; localhn = this)
        {
          return localhn;
          d(localgi.b());
          af_();
        }
      case 10:
        gf localgf = ge.n();
        if (j())
          localgf.a(k());
        paramm.a(localgf, paramdf);
        ge localge = localgf.n();
        if (this.c == null)
        {
          if (localge == null)
            throw new NullPointerException();
          this.b = localge;
          af_();
        }
        while (true)
        {
          this.a = (0x1 | this.a);
          break;
          this.c.a(localge);
        }
      case 16:
        this.a = (0x2 | this.a);
        this.d = paramm.e();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.e = paramm.f();
      }
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    if (this.c == null);
    for (ge localge = this.b; ; localge = (ge)this.c.c())
      return localge;
  }

  public final gg l()
  {
    if (this.c != null);
    for (Object localObject = (gg)this.c.f(); ; localObject = this.b)
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

  public final int p()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hn
 * JD-Core Version:    0.6.2
 */