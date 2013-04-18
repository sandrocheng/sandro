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

public final class y extends dn
  implements z
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gj d = gj.h();
  private fp e;
  private gy f = gy.h();
  private fp g;

  private y()
  {
    t();
  }

  private y(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private x A()
  {
    x localx = new x(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        x.a(localx, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label125;
        x.a(localx, this.d);
        label66: if ((i & 0x4) != 4)
          break label161;
      }
      label161: for (int k = j | 0x4; ; k = j)
      {
        if (this.g == null)
          x.a(localx, this.f);
        while (true)
        {
          x.a(localx, k);
          ab_();
          return localx;
          x.a(localx, (ge)this.c.d());
          break;
          label125: x.a(localx, (gj)this.e.d());
          break label66;
          x.a(localx, (gy)this.g.d());
        }
      }
    }
  }

  private y D()
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

  private y U()
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

  private y X()
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

  private y a(ge paramge)
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

  private y a(gf paramgf)
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

  private y a(gj paramgj)
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

  private y a(gk paramgk)
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

  private y a(gy paramgy)
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

  private y a(gz paramgz)
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

  private y b(ge paramge)
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

  private y b(gj paramgj)
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

  private y b(gy paramgy)
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

  private y d(ev paramev)
  {
    if ((paramev instanceof x));
    for (y localy = a((x)paramev); ; localy = this)
    {
      return localy;
      super.a(paramev);
    }
  }

  private static cj s()
  {
    return a.B();
  }

  private void t()
  {
    if (x.s())
    {
      N();
      W();
      Z();
    }
  }

  private static y u()
  {
    return new y();
  }

  private y v()
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

  private y w()
  {
    return new y().a(A());
  }

  private static x x()
  {
    return x.h();
  }

  private x y()
  {
    x localx = A();
    if (!localx.a())
      throw b(localx);
    return localx;
  }

  private x z()
  {
    x localx = A();
    if (!localx.a())
      throw b(localx).a();
    return localx;
  }

  protected final dv B()
  {
    return a.C();
  }

  public final cj C()
  {
    return x.i();
  }

  public final y a(x paramx)
  {
    y localy;
    if (paramx == x.h())
    {
      localy = this;
      return localy;
    }
    ge localge;
    label70: label74: gj localgj;
    label143: label147: gy localgy;
    if (paramx.j())
    {
      localge = paramx.k();
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
      if (paramx.m())
      {
        localgj = paramx.n();
        if (this.e != null)
          break label275;
        if (((0x2 & this.a) != 2) || (this.d == gj.h()))
          break label266;
        this.d = gj.a(this.d).a(localgj).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (paramx.p())
      {
        localgy = paramx.q();
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
      e(paramx.b_());
      localy = this;
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

  public final y e(m paramm, df paramdf)
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
    for (y localy = this; ; localy = this)
    {
      return localy;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.y
 * JD-Core Version:    0.6.2
 */