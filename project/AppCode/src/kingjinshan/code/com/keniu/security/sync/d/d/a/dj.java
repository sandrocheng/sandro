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

public final class dj extends dn
  implements dk
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gn d = gn.h();
  private fp e;
  private int f;

  private dj()
  {
    u();
  }

  private dj(dp paramdp, byte paramByte)
  {
    super(paramdp);
    u();
  }

  private dj A()
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

  private gf D()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)E().e();
  }

  private fp E()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private dj N()
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

  private go U()
  {
    this.a = (0x2 | this.a);
    af_();
    return (go)V().e();
  }

  private fp V()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private dj W()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private dj a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  private dj a(ge paramge)
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

  private dj a(gf paramgf)
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

  private dj a(gn paramgn)
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

  private dj a(go paramgo)
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

  private dj b(ge paramge)
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

  private dj b(gn paramgn)
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

  private dj d(ev paramev)
  {
    if ((paramev instanceof di));
    for (dj localdj = a((di)paramev); ; localdj = this)
    {
      return localdj;
      super.a(paramev);
    }
  }

  private static cj t()
  {
    return a.ad();
  }

  private void u()
  {
    if (di.s())
    {
      E();
      V();
    }
  }

  private static dj v()
  {
    return new dj();
  }

  private dj w()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label84;
      this.d = gn.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      this.f = 0;
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
      break;
      label84: this.e.g();
    }
  }

  private dj x()
  {
    return new dj().a(r());
  }

  private static di y()
  {
    return di.h();
  }

  private di z()
  {
    di localdi = r();
    if (!localdi.a())
      throw b(localdi).a();
    return localdi;
  }

  protected final dv B()
  {
    return a.ae();
  }

  public final cj C()
  {
    return di.i();
  }

  public final dj a(di paramdi)
  {
    dj localdj;
    if (paramdi == di.h())
    {
      localdj = this;
      return localdj;
    }
    ge localge;
    label70: label74: gn localgn;
    if (paramdi.j())
    {
      localge = paramdi.k();
      if (this.c != null)
        break label213;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else if (paramdi.m())
    {
      localgn = paramdi.n();
      if (this.e != null)
        break label235;
      if (((0x2 & this.a) != 2) || (this.d == gn.h()))
        break label226;
      this.d = gn.a(this.d).a(localgn).D();
      label143: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      if (paramdi.p())
      {
        int i = paramdi.q();
        this.a = (0x4 | this.a);
        this.f = i;
        af_();
      }
      e(paramdi.b_());
      localdj = this;
      break;
      this.b = localge;
      break label70;
      label213: this.c.b(localge);
      break label74;
      label226: this.d = localgn;
      break label143;
      label235: this.e.b(localgn);
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

  public final dj e(m paramm, df paramdf)
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
        for (dj localdj = this; ; localdj = this)
        {
          return localdj;
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
      case 18:
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
      case 24:
        this.a = (0x4 | this.a);
        this.f = paramm.f();
      }
    }
  }

  public final di i()
  {
    di localdi = r();
    if (!localdi.a())
      throw b(localdi);
    return localdi;
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

  public final boolean p()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.f;
  }

  public final di r()
  {
    di localdi = new di(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        di.a(localdi, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label118;
        di.a(localdi, this.d);
        label66: if ((i & 0x4) != 4)
          break label136;
      }
      label136: for (int k = j | 0x4; ; k = j)
      {
        di.a(localdi, this.f);
        di.b(localdi, k);
        ab_();
        return localdi;
        di.a(localdi, (ge)this.c.d());
        break;
        label118: di.a(localdi, (gn)this.e.d());
        break label66;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dj
 * JD-Core Version:    0.6.2
 */