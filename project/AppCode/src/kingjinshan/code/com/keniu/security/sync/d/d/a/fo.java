package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gi;
import com.b.a.m;

public final class fo extends dn
  implements fp
{
  private int a;
  private ge b = ge.h();
  private com.b.a.fp c;
  private gy d = gy.h();
  private com.b.a.fp e;

  private fo()
  {
    q();
  }

  private fo(dp paramdp, byte paramByte)
  {
    super(paramdp);
    q();
  }

  private com.b.a.fp A()
  {
    if (this.c == null)
    {
      this.c = new com.b.a.fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private fo D()
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

  private gz E()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gz)N().e();
  }

  private com.b.a.fp N()
  {
    if (this.e == null)
    {
      this.e = new com.b.a.fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private fo a(ge paramge)
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

  private fo a(gf paramgf)
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

  private fo a(gy paramgy)
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

  private fo a(gz paramgz)
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

  private fo b(ge paramge)
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

  private fo b(gy paramgy)
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

  private fo d(ev paramev)
  {
    if ((paramev instanceof fn));
    for (fo localfo = a((fn)paramev); ; localfo = this)
    {
      return localfo;
      super.a(paramev);
    }
  }

  private static cj p()
  {
    return a.bh();
  }

  private void q()
  {
    if (fn.p())
    {
      A();
      N();
    }
  }

  private static fo r()
  {
    return new fo();
  }

  private fo s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = gy.h();
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

  private fo t()
  {
    return new fo().a(x());
  }

  private static fn u()
  {
    return fn.h();
  }

  private fn v()
  {
    fn localfn = x();
    if (!localfn.a())
      throw b(localfn);
    return localfn;
  }

  private fn w()
  {
    fn localfn = x();
    if (!localfn.a())
      throw b(localfn).a();
    return localfn;
  }

  private fn x()
  {
    fn localfn = new fn(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        fn.a(localfn, this.b);
        if ((i & 0x2) != 2)
          break label116;
      }
      label116: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
          fn.a(localfn, this.d);
        while (true)
        {
          fn.a(localfn, k);
          ab_();
          return localfn;
          fn.a(localfn, (ge)this.c.d());
          break;
          fn.a(localfn, (gy)this.e.d());
        }
      }
    }
  }

  private fo y()
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
    return a.bi();
  }

  public final cj C()
  {
    return fn.i();
  }

  public final fo a(fn paramfn)
  {
    fo localfo;
    if (paramfn == fn.h())
    {
      localfo = this;
      return localfo;
    }
    ge localge;
    label70: label74: gy localgy;
    if (paramfn.j())
    {
      localge = paramfn.k();
      if (this.c != null)
        break label180;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else if (paramfn.m())
    {
      localgy = paramfn.n();
      if (this.e != null)
        break label202;
      if (((0x2 & this.a) != 2) || (this.d == gy.h()))
        break label193;
      this.d = gy.a(this.d).a(localgy).D();
      label143: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      e(paramfn.b_());
      localfo = this;
      break;
      this.b = localge;
      break label70;
      label180: this.c.b(localge);
      break label74;
      label193: this.d = localgy;
      break label143;
      label202: this.e.b(localgy);
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

  public final fo e(m paramm, df paramdf)
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
    for (fo localfo = this; ; localfo = this)
    {
      return localfo;
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fo
 * JD-Core Version:    0.6.2
 */