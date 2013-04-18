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

public final class ht extends dn
  implements hu
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gn d = gn.h();
  private fp e;

  private ht()
  {
    q();
  }

  private ht(dp paramdp, byte paramByte)
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

  private ht D()
  {
    if (this.e == null)
    {
      this.d = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private go E()
  {
    this.a = (0x2 | this.a);
    af_();
    return (go)N().e();
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

  private ht a(ge paramge)
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

  private ht a(gf paramgf)
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

  private ht a(gn paramgn)
  {
    if (this.e == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.d = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgn);
    }
  }

  private ht a(go paramgo)
  {
    if (this.e == null)
    {
      this.d = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgo.i());
    }
  }

  private ht b(ge paramge)
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

  private ht b(gn paramgn)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gn.h()))
      {
        this.d = gn.a(this.d).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgn;
      break;
      this.e.b(paramgn);
    }
  }

  private ht d(ev paramev)
  {
    if ((paramev instanceof hs));
    for (ht localht = a((hs)paramev); ; localht = this)
    {
      return localht;
      super.a(paramev);
    }
  }

  private static cj p()
  {
    return hh.l();
  }

  private void q()
  {
    if (hs.p())
    {
      A();
      N();
    }
  }

  private static ht r()
  {
    return new ht();
  }

  private ht s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = gn.h();
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

  private ht t()
  {
    return new ht().a(x());
  }

  private static hs u()
  {
    return hs.h();
  }

  private hs v()
  {
    hs localhs = x();
    if (!localhs.a())
      throw b(localhs);
    return localhs;
  }

  private hs w()
  {
    hs localhs = x();
    if (!localhs.a())
      throw b(localhs).a();
    return localhs;
  }

  private hs x()
  {
    hs localhs = new hs(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        hs.a(localhs, this.b);
        if ((i & 0x2) != 2)
          break label116;
      }
      label116: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
          hs.a(localhs, this.d);
        while (true)
        {
          hs.a(localhs, k);
          ab_();
          return localhs;
          hs.a(localhs, (ge)this.c.d());
          break;
          hs.a(localhs, (gn)this.e.d());
        }
      }
    }
  }

  private ht y()
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
    return hh.m();
  }

  public final cj C()
  {
    return hs.i();
  }

  public final ht a(hs paramhs)
  {
    ht localht;
    if (paramhs == hs.h())
    {
      localht = this;
      return localht;
    }
    ge localge;
    label70: label74: gn localgn;
    if (paramhs.j())
    {
      localge = paramhs.k();
      if (this.c != null)
        break label180;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else if (paramhs.m())
    {
      localgn = paramhs.n();
      if (this.e != null)
        break label202;
      if (((0x2 & this.a) != 2) || (this.d == gn.h()))
        break label193;
      this.d = gn.a(this.d).a(localgn).D();
      label143: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      e(paramhs.b_());
      localht = this;
      break;
      this.b = localge;
      break label70;
      label180: this.c.b(localge);
      break label74;
      label193: this.d = localgn;
      break label143;
      label202: this.e.b(localgn);
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
      else if ((m()) && (!n().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final ht e(m paramm, df paramdf)
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
    for (ht localht = this; ; localht = this)
    {
      return localht;
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
    go localgo = gn.Z();
    if (m())
      localgo.a(n());
    paramm.a(localgo, paramdf);
    gn localgn = localgo.D();
    if (this.e == null)
    {
      if (localgn == null)
        throw new NullPointerException();
      this.d = localgn;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      break;
      this.e.a(localgn);
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

  public final gn n()
  {
    if (this.e == null);
    for (gn localgn = this.d; ; localgn = (gn)this.e.c())
      return localgn;
  }

  public final gp o()
  {
    if (this.e != null);
    for (Object localObject = (gp)this.e.f(); ; localObject = this.d)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ht
 * JD-Core Version:    0.6.2
 */