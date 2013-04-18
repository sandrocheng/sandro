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

public final class iw extends dn
  implements ix
{
  private int a;
  private ge b = ge.h();
  private fp c;

  private iw()
  {
    n();
  }

  private iw(dp paramdp, byte paramByte)
  {
    super(paramdp);
    n();
  }

  private iw a(ge paramge)
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

  private iw a(gf paramgf)
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

  private iw b(ge paramge)
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

  private iw d(ev paramev)
  {
    if ((paramev instanceof iv));
    for (iw localiw = a((iv)paramev); ; localiw = this)
    {
      return localiw;
      super.a(paramev);
    }
  }

  private static cj m()
  {
    return ih.H();
  }

  private void n()
  {
    if (iv.m())
      x();
  }

  private static iw o()
  {
    return new iw();
  }

  private iw p()
  {
    super.F();
    if (this.c == null)
      this.b = ge.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private iw q()
  {
    return new iw().a(u());
  }

  private static iv r()
  {
    return iv.h();
  }

  private iv s()
  {
    iv localiv = u();
    if (!localiv.a())
      throw b(localiv);
    return localiv;
  }

  private iv t()
  {
    iv localiv = u();
    if (!localiv.a())
      throw b(localiv).a();
    return localiv;
  }

  private iv u()
  {
    iv localiv = new iv(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
      iv.a(localiv, this.b);
    while (true)
    {
      iv.a(localiv, j);
      ab_();
      return localiv;
      iv.a(localiv, (ge)this.c.d());
    }
  }

  private iw v()
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

  private gf w()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)x().e();
  }

  private fp x()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  protected final dv B()
  {
    return ih.I();
  }

  public final cj C()
  {
    return iv.i();
  }

  public final iw a(iv paramiv)
  {
    iw localiw;
    if (paramiv == iv.h())
    {
      localiw = this;
      return localiw;
    }
    ge localge;
    if (paramiv.j())
    {
      localge = paramiv.k();
      if (this.c != null)
        break label107;
      if (((0x1 & this.a) != 1) || (this.b == ge.h()))
        break label98;
      this.b = ge.a(this.b).a(localge).n();
      label70: af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      e(paramiv.b_());
      localiw = this;
      break;
      label98: this.b = localge;
      break label70;
      label107: this.c.b(localge);
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

  public final iw e(m paramm, df paramdf)
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
      }
    }
    while (a(paramm, localgi, paramdf, i));
    d(localgi.b());
    af_();
    for (iw localiw = this; ; localiw = this)
    {
      return localiw;
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.iw
 * JD-Core Version:    0.6.2
 */