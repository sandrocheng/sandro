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

public final class bu extends dn
  implements bv
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gy d = gy.h();
  private fp e;
  private hc f = hc.h();
  private fp g;

  private bu()
  {
    t();
  }

  private bu(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private bt A()
  {
    bt localbt = new bt(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        bt.a(localbt, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label125;
        bt.a(localbt, this.d);
        label66: if ((i & 0x4) != 4)
          break label161;
      }
      label161: for (int k = j | 0x4; ; k = j)
      {
        if (this.g == null)
          bt.a(localbt, this.f);
        while (true)
        {
          bt.a(localbt, k);
          ab_();
          return localbt;
          bt.a(localbt, (ge)this.c.d());
          break;
          label125: bt.a(localbt, (gy)this.e.d());
          break label66;
          bt.a(localbt, (hc)this.g.d());
        }
      }
    }
  }

  private bu D()
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

  private bu U()
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

  private bu X()
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

  private bu a(ge paramge)
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

  private bu a(gf paramgf)
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

  private bu a(gy paramgy)
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

  private bu a(gz paramgz)
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

  private bu a(hc paramhc)
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

  private bu a(hd paramhd)
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

  private bu b(ge paramge)
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

  private bu b(gy paramgy)
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

  private bu b(hc paramhc)
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

  private bu d(ev paramev)
  {
    if ((paramev instanceof bt));
    for (bu localbu = a((bt)paramev); ; localbu = this)
    {
      return localbu;
      super.a(paramev);
    }
  }

  private static cj s()
  {
    return a.at();
  }

  private void t()
  {
    if (bt.s())
    {
      N();
      W();
      Z();
    }
  }

  private static bu u()
  {
    return new bu();
  }

  private bu v()
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

  private bu w()
  {
    return new bu().a(A());
  }

  private static bt x()
  {
    return bt.h();
  }

  private bt y()
  {
    bt localbt = A();
    if (!localbt.a())
      throw b(localbt);
    return localbt;
  }

  private bt z()
  {
    bt localbt = A();
    if (!localbt.a())
      throw b(localbt).a();
    return localbt;
  }

  protected final dv B()
  {
    return a.au();
  }

  public final cj C()
  {
    return bt.i();
  }

  public final bu a(bt parambt)
  {
    bu localbu;
    if (parambt == bt.h())
    {
      localbu = this;
      return localbu;
    }
    ge localge;
    label70: label74: gy localgy;
    label143: label147: hc localhc;
    if (parambt.j())
    {
      localge = parambt.k();
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
      if (parambt.m())
      {
        localgy = parambt.n();
        if (this.e != null)
          break label275;
        if (((0x2 & this.a) != 2) || (this.d == gy.h()))
          break label266;
        this.d = gy.a(this.d).a(localgy).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (parambt.p())
      {
        localhc = parambt.q();
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
      e(parambt.b_());
      localbu = this;
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

  public final bu e(m paramm, df paramdf)
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
    for (bu localbu = this; ; localbu = this)
    {
      return localbu;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.bu
 * JD-Core Version:    0.6.2
 */