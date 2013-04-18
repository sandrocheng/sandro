package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.m;

public final class hk extends dn
  implements hl
{
  private int a;
  private gn b = gn.h();
  private fp c;

  private hk()
  {
    o();
  }

  private hk(dp paramdp, byte paramByte)
  {
    super(paramdp);
    o();
  }

  private hk a(go paramgo)
  {
    if (this.c == null)
    {
      this.b = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgo.i());
    }
  }

  private hk b(gn paramgn)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != gn.h()))
      {
        this.b = gn.a(this.b).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramgn;
      break;
      this.c.b(paramgn);
    }
  }

  private hk d(ev paramev)
  {
    if ((paramev instanceof hj));
    for (hk localhk = a((hj)paramev); ; localhk = this)
    {
      return localhk;
      super.a(paramev);
    }
  }

  private static cj n()
  {
    return hh.b();
  }

  private void o()
  {
    if (hj.n())
      x();
  }

  private static hk p()
  {
    return new hk();
  }

  private hk q()
  {
    super.F();
    if (this.c == null)
      this.b = gn.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private hk r()
  {
    return new hk().a(u());
  }

  private static hj s()
  {
    return hj.h();
  }

  private hj t()
  {
    hj localhj = u();
    if (!localhj.a())
      throw b(localhj).a();
    return localhj;
  }

  private hj u()
  {
    hj localhj = new hj(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
      hj.a(localhj, this.b);
    while (true)
    {
      hj.a(localhj, j);
      ab_();
      return localhj;
      hj.a(localhj, (gn)this.c.d());
    }
  }

  private hk v()
  {
    if (this.c == null)
    {
      this.b = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private go w()
  {
    this.a = (0x1 | this.a);
    af_();
    return (go)x().e();
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
    return hh.c();
  }

  public final cj C()
  {
    return hj.i();
  }

  public final hk a(gn paramgn)
  {
    if (this.c == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.b = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgn);
    }
  }

  public final hk a(hj paramhj)
  {
    hk localhk;
    if (paramhj == hj.h())
    {
      localhk = this;
      return localhk;
    }
    gn localgn;
    if (paramhj.j())
    {
      localgn = paramhj.k();
      if (this.c != null)
        break label107;
      if (((0x1 & this.a) != 1) || (this.b == gn.h()))
        break label98;
      this.b = gn.a(this.b).a(localgn).D();
      label70: af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      e(paramhj.b_());
      localhk = this;
      break;
      label98: this.b = localgn;
      break label70;
      label107: this.c.b(localgn);
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

  public final hk e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
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
        for (hk localhk = this; ; localhk = this)
        {
          return localhk;
          d(localgi.b());
          af_();
        }
      case 10:
        go localgo = gn.Z();
        if (j())
          localgo.a(k());
        paramm.a(localgo, paramdf);
        a(localgo.D());
      }
    }
  }

  public final hj i()
  {
    hj localhj = u();
    if (!localhj.a())
      throw b(localhj);
    return localhj;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    if (this.c == null);
    for (gn localgn = this.b; ; localgn = (gn)this.c.c())
      return localgn;
  }

  public final gp l()
  {
    if (this.c != null);
    for (Object localObject = (gp)this.c.f(); ; localObject = this.b)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hk
 * JD-Core Version:    0.6.2
 */