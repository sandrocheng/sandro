package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.m;

public final class ew extends dn
  implements ex
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gj d = gj.h();
  private fp e;
  private gy f = gy.h();
  private fp g;

  private ew()
  {
    t();
  }

  private ew(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private ev A()
  {
    ev localev = new ev(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        ev.a(localev, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label125;
        ev.a(localev, this.d);
        label66: if ((i & 0x4) != 4)
          break label161;
      }
      label161: for (int k = j | 0x4; ; k = j)
      {
        if (this.g == null)
          ev.a(localev, this.f);
        while (true)
        {
          ev.a(localev, k);
          ab_();
          return localev;
          ev.a(localev, (ge)this.c.d());
          break;
          label125: ev.a(localev, (gj)this.e.d());
          break label66;
          ev.a(localev, (gy)this.g.d());
        }
      }
    }
  }

  private ew D()
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

  private gf E()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)N().e();
  }

  private fp N()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private ew U()
  {
    if (this.e == null)
    {
      this.d = gj.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private gk V()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gk)W().e();
  }

  private fp W()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private ew X()
  {
    if (this.g == null)
    {
      this.f = gy.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.g.g();
    }
  }

  private gz Y()
  {
    this.a = (0x4 | this.a);
    af_();
    return (gz)Z().e();
  }

  private fp Z()
  {
    if (this.g == null)
    {
      this.g = new fp(this.f, ae_(), ad_());
      this.f = null;
    }
    return this.g;
  }

  private ew a(ge paramge)
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

  private ew a(gf paramgf)
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

  private ew a(gj paramgj)
  {
    if (this.e == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      this.d = paramgj;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgj);
    }
  }

  private ew a(gk paramgk)
  {
    if (this.e == null)
    {
      this.d = paramgk.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgk.i());
    }
  }

  private ew a(gy paramgy)
  {
    if (this.g == null)
    {
      if (paramgy == null)
        throw new NullPointerException();
      this.f = paramgy;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramgy);
    }
  }

  private ew a(gz paramgz)
  {
    if (this.g == null)
    {
      this.f = paramgz.i();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramgz.i());
    }
  }

  private ew b(ge paramge)
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

  private ew b(gj paramgj)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gj.h()))
      {
        this.d = gj.a(this.d).a(paramgj).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgj;
      break;
      this.e.b(paramgj);
    }
  }

  private ew b(gy paramgy)
  {
    if (this.g == null)
      if (((0x4 & this.a) == 4) && (this.f != gy.h()))
      {
        this.f = gy.a(this.f).a(paramgy).D();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f = paramgy;
      break;
      this.g.b(paramgy);
    }
  }

  private ew d(com.b.a.ev paramev)
  {
    if ((paramev instanceof ev));
    for (ew localew = a((ev)paramev); ; localew = this)
    {
      return localew;
      super.a(paramev);
    }
  }

  private static cj s()
  {
    return a.p();
  }

  private void t()
  {
    if (ev.s())
    {
      N();
      W();
      Z();
    }
  }

  private static ew u()
  {
    return new ew();
  }

  private ew v()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label93;
      this.d = gj.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label104;
      this.f = gy.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
      break;
      label93: this.e.g();
      break label44;
      label104: this.g.g();
    }
  }

  private ew w()
  {
    return new ew().a(A());
  }

  private static ev x()
  {
    return ev.h();
  }

  private ev y()
  {
    ev localev = A();
    if (!localev.a())
      throw b(localev);
    return localev;
  }

  private ev z()
  {
    ev localev = A();
    if (!localev.a())
      throw b(localev).a();
    return localev;
  }

  protected final dv B()
  {
    return a.q();
  }

  public final cj C()
  {
    return ev.i();
  }

  public final ew a(ev paramev)
  {
    ew localew;
    if (paramev == ev.h())
    {
      localew = this;
      return localew;
    }
    ge localge;
    label70: label74: gj localgj;
    label143: label147: gy localgy;
    if (paramev.j())
    {
      localge = paramev.k();
      if (this.c != null)
        break label253;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramev.m())
      {
        localgj = paramev.n();
        if (this.e != null)
          break label275;
        if (((0x2 & this.a) != 2) || (this.d == gj.h()))
          break label266;
        this.d = gj.a(this.d).a(localgj).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (paramev.p())
      {
        localgy = paramev.q();
        if (this.g != null)
          break label297;
        if (((0x4 & this.a) != 4) || (this.f == gy.h()))
          break label288;
        this.f = gy.a(this.f).a(localgy).D();
        label216: af_();
      }
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(paramev.b_());
      localew = this;
      break;
      this.b = localge;
      break label70;
      label253: this.c.b(localge);
      break label74;
      label266: this.d = localgj;
      break label143;
      label275: this.e.b(localgj);
      break label147;
      label288: this.f = localgy;
      break label216;
      label297: this.g.b(localgy);
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

  public final ew e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    int i;
    do
    {
      i = paramm.a();
      switch (i)
      {
      default:
      case 0:
      case 10:
      case 18:
      case 26:
      }
    }
    while (a(paramm, localgi, paramdf, i));
    d(localgi.b());
    af_();
    for (ew localew = this; ; localew = this)
    {
      return localew;
      d(localgi.b());
      af_();
    }
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
    gk localgk = gj.P();
    if (m())
      localgk.a(n());
    paramm.a(localgk, paramdf);
    gj localgj = localgk.D();
    if (this.e == null)
    {
      if (localgj == null)
        throw new NullPointerException();
      this.d = localgj;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localgj);
    }
    gz localgz = gy.N();
    if (p())
      localgz.a(q());
    paramm.a(localgz, paramdf);
    gy localgy = localgz.D();
    if (this.g == null)
    {
      if (localgy == null)
        throw new NullPointerException();
      this.f = localgy;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.g.a(localgy);
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

  public final gj n()
  {
    if (this.e == null);
    for (gj localgj = this.d; ; localgj = (gj)this.e.c())
      return localgj;
  }

  public final gl o()
  {
    if (this.e != null);
    for (Object localObject = (gl)this.e.f(); ; localObject = this.d)
      return localObject;
  }

  public final boolean p()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    if (this.g == null);
    for (gy localgy = this.f; ; localgy = (gy)this.g.c())
      return localgy;
  }

  public final ha r()
  {
    if (this.g != null);
    for (Object localObject = (ha)this.g.f(); ; localObject = this.f)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ew
 * JD-Core Version:    0.6.2
 */