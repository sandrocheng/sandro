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

public final class aq extends dn
  implements ar
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gy d = gy.h();
  private fp e;
  private hc f = hc.h();
  private fp g;

  private aq()
  {
    t();
  }

  private aq(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private ap A()
  {
    ap localap = new ap(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        ap.a(localap, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label125;
        ap.a(localap, this.d);
        label66: if ((i & 0x4) != 4)
          break label161;
      }
      label161: for (int k = j | 0x4; ; k = j)
      {
        if (this.g == null)
          ap.a(localap, this.f);
        while (true)
        {
          ap.a(localap, k);
          ab_();
          return localap;
          ap.a(localap, (ge)this.c.d());
          break;
          label125: ap.a(localap, (gy)this.e.d());
          break label66;
          ap.a(localap, (hc)this.g.d());
        }
      }
    }
  }

  private aq D()
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

  private aq U()
  {
    if (this.e == null)
    {
      this.d = gy.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private gz V()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gz)W().e();
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

  private aq X()
  {
    if (this.g == null)
    {
      this.f = hc.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.g.g();
    }
  }

  private hd Y()
  {
    this.a = (0x4 | this.a);
    af_();
    return (hd)Z().e();
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

  private aq a(ge paramge)
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

  private aq a(gf paramgf)
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

  private aq a(gy paramgy)
  {
    if (this.e == null)
    {
      if (paramgy == null)
        throw new NullPointerException();
      this.d = paramgy;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgy);
    }
  }

  private aq a(gz paramgz)
  {
    if (this.e == null)
    {
      this.d = paramgz.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgz.i());
    }
  }

  private aq a(hc paramhc)
  {
    if (this.g == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      this.f = paramhc;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramhc);
    }
  }

  private aq a(hd paramhd)
  {
    if (this.g == null)
    {
      this.f = paramhd.i();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramhd.i());
    }
  }

  private aq b(ge paramge)
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

  private aq b(gy paramgy)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gy.h()))
      {
        this.d = gy.a(this.d).a(paramgy).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgy;
      break;
      this.e.b(paramgy);
    }
  }

  private aq b(hc paramhc)
  {
    if (this.g == null)
      if (((0x4 & this.a) == 4) && (this.f != hc.h()))
      {
        this.f = hc.a(this.f).a(paramhc).D();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f = paramhc;
      break;
      this.g.b(paramhc);
    }
  }

  private aq d(ev paramev)
  {
    if ((paramev instanceof ap));
    for (aq localaq = a((ap)paramev); ; localaq = this)
    {
      return localaq;
      super.a(paramev);
    }
  }

  private static cj s()
  {
    return a.aJ();
  }

  private void t()
  {
    if (ap.s())
    {
      N();
      W();
      Z();
    }
  }

  private static aq u()
  {
    return new aq();
  }

  private aq v()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label93;
      this.d = gy.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label104;
      this.f = hc.h();
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

  private aq w()
  {
    return new aq().a(A());
  }

  private static ap x()
  {
    return ap.h();
  }

  private ap y()
  {
    ap localap = A();
    if (!localap.a())
      throw b(localap);
    return localap;
  }

  private ap z()
  {
    ap localap = A();
    if (!localap.a())
      throw b(localap).a();
    return localap;
  }

  protected final dv B()
  {
    return a.aK();
  }

  public final cj C()
  {
    return ap.i();
  }

  public final aq a(ap paramap)
  {
    aq localaq;
    if (paramap == ap.h())
    {
      localaq = this;
      return localaq;
    }
    ge localge;
    label70: label74: gy localgy;
    label143: label147: hc localhc;
    if (paramap.j())
    {
      localge = paramap.k();
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
      if (paramap.m())
      {
        localgy = paramap.n();
        if (this.e != null)
          break label275;
        if (((0x2 & this.a) != 2) || (this.d == gy.h()))
          break label266;
        this.d = gy.a(this.d).a(localgy).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (paramap.p())
      {
        localhc = paramap.q();
        if (this.g != null)
          break label297;
        if (((0x4 & this.a) != 4) || (this.f == hc.h()))
          break label288;
        this.f = hc.a(this.f).a(localhc).D();
        label216: af_();
      }
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(paramap.b_());
      localaq = this;
      break;
      this.b = localge;
      break label70;
      label253: this.c.b(localge);
      break label74;
      label266: this.d = localgy;
      break label143;
      label275: this.e.b(localgy);
      break label147;
      label288: this.f = localhc;
      break label216;
      label297: this.g.b(localhc);
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

  public final aq e(m paramm, df paramdf)
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
    for (aq localaq = this; ; localaq = this)
    {
      return localaq;
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
    gz localgz = gy.N();
    if (m())
      localgz.a(n());
    paramm.a(localgz, paramdf);
    gy localgy = localgz.D();
    if (this.e == null)
    {
      if (localgy == null)
        throw new NullPointerException();
      this.d = localgy;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localgy);
    }
    hd localhd = hc.O();
    if (p())
      localhd.a(q());
    paramm.a(localhd, paramdf);
    hc localhc = localhd.D();
    if (this.g == null)
    {
      if (localhc == null)
        throw new NullPointerException();
      this.f = localhc;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.g.a(localhc);
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

  public final gy n()
  {
    if (this.e == null);
    for (gy localgy = this.d; ; localgy = (gy)this.e.c())
      return localgy;
  }

  public final ha o()
  {
    if (this.e != null);
    for (Object localObject = (ha)this.e.f(); ; localObject = this.d)
      return localObject;
  }

  public final boolean p()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hc q()
  {
    if (this.g == null);
    for (hc localhc = this.f; ; localhc = (hc)this.g.c())
      return localhc;
  }

  public final hg r()
  {
    if (this.g != null);
    for (Object localObject = (hg)this.g.f(); ; localObject = this.f)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.aq
 * JD-Core Version:    0.6.2
 */