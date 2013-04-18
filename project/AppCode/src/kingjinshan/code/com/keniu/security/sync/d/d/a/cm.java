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

public final class cm extends dn
  implements cn
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gj d = gj.h();
  private fp e;
  private gy f = gy.h();
  private fp g;
  private gj h = gj.h();
  private fp i;

  private cm()
  {
    w();
  }

  private cm(dp paramdp, byte paramByte)
  {
    super(paramdp);
    w();
  }

  private static cl A()
  {
    return cl.h();
  }

  private cl D()
  {
    cl localcl = N();
    if (!localcl.a())
      throw b(localcl);
    return localcl;
  }

  private cl E()
  {
    cl localcl = N();
    if (!localcl.a())
      throw b(localcl).a();
    return localcl;
  }

  private cl N()
  {
    cl localcl = new cl(this);
    int j = this.a;
    if ((j & 0x1) == 1);
    for (int k = 1; ; k = 0)
    {
      if (this.c == null)
      {
        cl.a(localcl, this.b);
        if ((j & 0x2) == 2)
          k |= 2;
        if (this.e != null)
          break label155;
        cl.a(localcl, this.d);
        label66: if ((j & 0x4) == 4)
          k |= 4;
        if (this.g != null)
          break label173;
        cl.a(localcl, this.f);
        label93: if ((j & 0x8) != 8)
          break label209;
      }
      label155: label173: label209: for (int m = k | 0x8; ; m = k)
      {
        if (this.i == null)
          cl.b(localcl, this.h);
        while (true)
        {
          cl.a(localcl, m);
          ab_();
          return localcl;
          cl.a(localcl, (ge)this.c.d());
          break;
          cl.a(localcl, (gj)this.e.d());
          break label66;
          cl.a(localcl, (gy)this.g.d());
          break label93;
          cl.b(localcl, (gj)this.i.d());
        }
      }
    }
  }

  private cm U()
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

  private gf V()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)W().e();
  }

  private fp W()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private cm X()
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

  private gk Y()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gk)Z().e();
  }

  private fp Z()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private cm a(ge paramge)
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

  private cm a(gf paramgf)
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

  private cm a(gj paramgj)
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

  private cm a(gk paramgk)
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

  private cm a(gy paramgy)
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

  private cm a(gz paramgz)
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

  private cm aa()
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

  private gz ab()
  {
    this.a = (0x4 | this.a);
    af_();
    return (gz)ac().e();
  }

  private fp ac()
  {
    if (this.g == null)
    {
      this.g = new fp(this.f, ae_(), ad_());
      this.f = null;
    }
    return this.g;
  }

  private cm ad()
  {
    if (this.i == null)
    {
      this.h = gj.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.i.g();
    }
  }

  private gk ae()
  {
    this.a = (0x8 | this.a);
    af_();
    return (gk)af().e();
  }

  private fp af()
  {
    if (this.i == null)
    {
      this.i = new fp(this.h, ae_(), ad_());
      this.h = null;
    }
    return this.i;
  }

  private cm b(ge paramge)
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

  private cm b(gj paramgj)
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

  private cm b(gk paramgk)
  {
    if (this.i == null)
    {
      this.h = paramgk.i();
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramgk.i());
    }
  }

  private cm b(gy paramgy)
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

  private cm c(gj paramgj)
  {
    if (this.i == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      this.h = paramgj;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramgj);
    }
  }

  private cm d(ev paramev)
  {
    if ((paramev instanceof cl));
    for (cm localcm = a((cl)paramev); ; localcm = this)
    {
      return localcm;
      super.a(paramev);
    }
  }

  private cm d(gj paramgj)
  {
    if (this.i == null)
      if (((0x8 & this.a) == 8) && (this.h != gj.h()))
      {
        this.h = gj.a(this.h).a(paramgj).D();
        af_();
      }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.h = paramgj;
      break;
      this.i.b(paramgj);
    }
  }

  private static cj v()
  {
    return a.t();
  }

  private void w()
  {
    if (cl.v())
    {
      W();
      Z();
      ac();
      af();
    }
  }

  private static cm x()
  {
    return new cm();
  }

  private cm y()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label118;
      this.d = gj.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label129;
      this.f = gy.h();
      label69: this.a = (0xFFFFFFFB & this.a);
      if (this.i != null)
        break label140;
      this.h = gj.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.c.g();
      break;
      label118: this.e.g();
      break label44;
      label129: this.g.g();
      break label69;
      label140: this.i.g();
    }
  }

  private cm z()
  {
    return new cm().a(N());
  }

  protected final dv B()
  {
    return a.u();
  }

  public final cj C()
  {
    return cl.i();
  }

  public final cm a(cl paramcl)
  {
    cm localcm;
    if (paramcl == cl.h())
    {
      localcm = this;
      return localcm;
    }
    ge localge;
    label70: label74: gj localgj2;
    label143: label147: gy localgy;
    label216: label220: gj localgj1;
    if (paramcl.j())
    {
      localge = paramcl.k();
      if (this.c != null)
        break label329;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramcl.m())
      {
        localgj2 = paramcl.n();
        if (this.e != null)
          break label351;
        if (((0x2 & this.a) != 2) || (this.d == gj.h()))
          break label342;
        this.d = gj.a(this.d).a(localgj2).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (paramcl.p())
      {
        localgy = paramcl.q();
        if (this.g != null)
          break label373;
        if (((0x4 & this.a) != 4) || (this.f == gy.h()))
          break label364;
        this.f = gy.a(this.f).a(localgy).D();
        af_();
        this.a = (0x4 | this.a);
      }
      if (paramcl.s())
      {
        localgj1 = paramcl.t();
        if (this.i != null)
          break label395;
        if (((0x8 & this.a) != 8) || (this.h == gj.h()))
          break label386;
        this.h = gj.a(this.h).a(localgj1).D();
        label291: af_();
      }
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      e(paramcl.b_());
      localcm = this;
      break;
      this.b = localge;
      break label70;
      label329: this.c.b(localge);
      break label74;
      label342: this.d = localgj2;
      break label143;
      label351: this.e.b(localgj2);
      break label147;
      label364: this.f = localgy;
      break label216;
      label373: this.g.b(localgy);
      break label220;
      label386: this.h = localgj1;
      break label291;
      label395: this.i.b(localgj1);
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

  public final cm e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    int j;
    do
    {
      j = paramm.a();
      switch (j)
      {
      default:
      case 0:
      case 10:
      case 18:
      case 26:
      case 34:
      }
    }
    while (a(paramm, localgi, paramdf, j));
    d(localgi.b());
    af_();
    for (cm localcm = this; ; localcm = this)
    {
      return localcm;
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
    gk localgk2 = gj.P();
    if (m())
      localgk2.a(n());
    paramm.a(localgk2, paramdf);
    gj localgj2 = localgk2.D();
    if (this.e == null)
    {
      if (localgj2 == null)
        throw new NullPointerException();
      this.d = localgj2;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localgj2);
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
    gk localgk1 = gj.P();
    if (s())
      localgk1.a(t());
    paramm.a(localgk1, paramdf);
    gj localgj1 = localgk1.D();
    if (this.i == null)
    {
      if (localgj1 == null)
        throw new NullPointerException();
      this.h = localgj1;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      break;
      this.i.a(localgj1);
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

  public final boolean s()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj t()
  {
    if (this.i == null);
    for (gj localgj = this.h; ; localgj = (gj)this.i.c())
      return localgj;
  }

  public final gl u()
  {
    if (this.i != null);
    for (Object localObject = (gl)this.i.f(); ; localObject = this.h)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cm
 * JD-Core Version:    0.6.2
 */