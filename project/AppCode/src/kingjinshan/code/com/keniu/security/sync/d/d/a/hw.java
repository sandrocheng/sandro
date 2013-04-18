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

public final class hw extends dn
  implements hx
{
  private int a;
  private gq b = gq.h();
  private fp c;
  private int d;

  private hw()
  {
    p();
  }

  private hw(dp paramdp, byte paramByte)
  {
    super(paramdp);
    p();
  }

  private hw A()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private hw a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  private hw a(gq paramgq)
  {
    if (this.c == null)
    {
      if (paramgq == null)
        throw new NullPointerException();
      this.b = paramgq;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgq);
    }
  }

  private hw a(gr paramgr)
  {
    if (this.c == null)
    {
      this.b = paramgr.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgr.i());
    }
  }

  private hw b(gq paramgq)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != gq.h()))
      {
        this.b = gq.a(this.b).a(paramgq).D();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramgq;
      break;
      this.c.b(paramgq);
    }
  }

  private hw d(ev paramev)
  {
    if ((paramev instanceof hv));
    for (hw localhw = a((hv)paramev); ; localhw = this)
    {
      return localhw;
      super.a(paramev);
    }
  }

  private static cj o()
  {
    return hh.n();
  }

  private void p()
  {
    if (hv.o())
      z();
  }

  private static hw q()
  {
    return new hw();
  }

  private hw r()
  {
    super.F();
    if (this.c == null)
      this.b = gq.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = 0;
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.c.g();
    }
  }

  private hw s()
  {
    return new hw().a(w());
  }

  private static hv t()
  {
    return hv.h();
  }

  private hv u()
  {
    hv localhv = w();
    if (!localhv.a())
      throw b(localhv);
    return localhv;
  }

  private hv v()
  {
    hv localhv = w();
    if (!localhv.a())
      throw b(localhv).a();
    return localhv;
  }

  private hv w()
  {
    hv localhv = new hv(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        hv.a(localhv, this.b);
        if ((i & 0x2) != 2)
          break label91;
      }
      label91: for (int k = j | 0x2; ; k = j)
      {
        hv.a(localhv, this.d);
        hv.b(localhv, k);
        ab_();
        return localhv;
        hv.a(localhv, (gq)this.c.d());
        break;
      }
    }
  }

  private hw x()
  {
    if (this.c == null)
    {
      this.b = gq.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private gr y()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gr)z().e();
  }

  private fp z()
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
    return hh.o();
  }

  public final cj C()
  {
    return hv.i();
  }

  public final hw a(hv paramhv)
  {
    hw localhw;
    if (paramhv == hv.h())
    {
      localhw = this;
      return localhw;
    }
    gq localgq;
    if (paramhv.j())
    {
      localgq = paramhv.k();
      if (this.c != null)
        break label140;
      if (((0x1 & this.a) != 1) || (this.b == gq.h()))
        break label131;
      this.b = gq.a(this.b).a(localgq).D();
      label70: af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      if (paramhv.m())
      {
        int i = paramhv.n();
        this.a = (0x2 | this.a);
        this.d = i;
        af_();
      }
      e(paramhv.b_());
      localhw = this;
      break;
      label131: this.b = localgq;
      break label70;
      label140: this.c.b(localgq);
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
      if (!m())
        bool = false;
      else if (!k().a())
        bool = false;
      else
        bool = true;
    }
  }

  public final hw e(m paramm, df paramdf)
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
        for (hw localhw = this; ; localhw = this)
        {
          return localhw;
          d(localgi.b());
          af_();
        }
      case 10:
        gr localgr = gq.N();
        if (j())
          localgr.a(k());
        paramm.a(localgr, paramdf);
        gq localgq = localgr.D();
        if (this.c == null)
        {
          if (localgq == null)
            throw new NullPointerException();
          this.b = localgq;
          af_();
        }
        while (true)
        {
          this.a = (0x1 | this.a);
          break;
          this.c.a(localgq);
        }
      case 16:
        this.a = (0x2 | this.a);
        this.d = paramm.f();
      }
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gq k()
  {
    if (this.c == null);
    for (gq localgq = this.b; ; localgq = (gq)this.c.c())
      return localgq;
  }

  public final gs l()
  {
    if (this.c != null);
    for (Object localObject = (gs)this.c.f(); ; localObject = this.b)
      return localObject;
  }

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int n()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hw
 * JD-Core Version:    0.6.2
 */