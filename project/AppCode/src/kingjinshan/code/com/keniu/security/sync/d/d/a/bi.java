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

public final class bi extends dn
  implements bj
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private hc d = hc.h();
  private fp e;

  private bi()
  {
    q();
  }

  private bi(dp paramdp, byte paramByte)
  {
    super(paramdp);
    q();
  }

  private fp A()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private bi D()
  {
    if (this.e == null)
    {
      this.d = hc.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private hd E()
  {
    this.a = (0x2 | this.a);
    af_();
    return (hd)N().e();
  }

  private fp N()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private bi a(ge paramge)
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

  private bi a(gf paramgf)
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

  private bi a(hc paramhc)
  {
    if (this.e == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      this.d = paramhc;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramhc);
    }
  }

  private bi a(hd paramhd)
  {
    if (this.e == null)
    {
      this.d = paramhd.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramhd.i());
    }
  }

  private bi b(ge paramge)
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

  private bi b(hc paramhc)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != hc.h()))
      {
        this.d = hc.a(this.d).a(paramhc).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramhc;
      break;
      this.e.b(paramhc);
    }
  }

  private bi d(ev paramev)
  {
    if ((paramev instanceof bh));
    for (bi localbi = a((bh)paramev); ; localbi = this)
    {
      return localbi;
      super.a(paramev);
    }
  }

  private static cj p()
  {
    return a.aR();
  }

  private void q()
  {
    if (bh.p())
    {
      A();
      N();
    }
  }

  private static bi r()
  {
    return new bi();
  }

  private bi s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = hc.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.c.g();
      break;
      label68: this.e.g();
    }
  }

  private bi t()
  {
    return new bi().a(x());
  }

  private static bh u()
  {
    return bh.h();
  }

  private bh v()
  {
    bh localbh = x();
    if (!localbh.a())
      throw b(localbh);
    return localbh;
  }

  private bh w()
  {
    bh localbh = x();
    if (!localbh.a())
      throw b(localbh).a();
    return localbh;
  }

  private bh x()
  {
    bh localbh = new bh(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        bh.a(localbh, this.b);
        if ((i & 0x2) != 2)
          break label116;
      }
      label116: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
          bh.a(localbh, this.d);
        while (true)
        {
          bh.a(localbh, k);
          ab_();
          return localbh;
          bh.a(localbh, (ge)this.c.d());
          break;
          bh.a(localbh, (hc)this.e.d());
        }
      }
    }
  }

  private bi y()
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

  private gf z()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)A().e();
  }

  protected final dv B()
  {
    return a.aS();
  }

  public final cj C()
  {
    return bh.i();
  }

  public final bi a(bh parambh)
  {
    bi localbi;
    if (parambh == bh.h())
    {
      localbi = this;
      return localbi;
    }
    ge localge;
    label70: label74: hc localhc;
    if (parambh.j())
    {
      localge = parambh.k();
      if (this.c != null)
        break label180;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else if (parambh.m())
    {
      localhc = parambh.n();
      if (this.e != null)
        break label202;
      if (((0x2 & this.a) != 2) || (this.d == hc.h()))
        break label193;
      this.d = hc.a(this.d).a(localhc).D();
      label143: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      e(parambh.b_());
      localbi = this;
      break;
      this.b = localge;
      break label70;
      label180: this.c.b(localge);
      break label74;
      label193: this.d = localhc;
      break label143;
      label202: this.e.b(localhc);
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

  public final bi e(m paramm, df paramdf)
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
      }
    }
    while (a(paramm, localgi, paramdf, i));
    d(localgi.b());
    af_();
    for (bi localbi = this; ; localbi = this)
    {
      return localbi;
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
    hd localhd = hc.O();
    if (m())
      localhd.a(n());
    paramm.a(localhd, paramdf);
    hc localhc = localhd.D();
    if (this.e == null)
    {
      if (localhc == null)
        throw new NullPointerException();
      this.d = localhc;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localhc);
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

  public final hc n()
  {
    if (this.e == null);
    for (hc localhc = this.d; ; localhc = (hc)this.e.c())
      return localhc;
  }

  public final hg o()
  {
    if (this.e != null);
    for (Object localObject = (hg)this.e.f(); ; localObject = this.d)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bi
 * JD-Core Version:    0.6.2
 */