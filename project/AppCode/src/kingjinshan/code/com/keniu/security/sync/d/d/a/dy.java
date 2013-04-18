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

public final class dy extends dn
  implements dz
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private int d;
  private gn e = gn.h();
  private fp f;

  private dy()
  {
    s();
  }

  private dy(dp paramdp, byte paramByte)
  {
    super(paramdp);
    s();
  }

  private dy A()
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

  private dy N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private dy U()
  {
    if (this.f == null)
    {
      this.e = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.f.g();
    }
  }

  private go V()
  {
    this.a = (0x4 | this.a);
    af_();
    return (go)W().e();
  }

  private fp W()
  {
    if (this.f == null)
    {
      this.f = new fp(this.e, ae_(), ad_());
      this.e = null;
    }
    return this.f;
  }

  private dy a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  private dy a(ge paramge)
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

  private dy a(gf paramgf)
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

  private dy a(gn paramgn)
  {
    if (this.f == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.e = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(paramgn);
    }
  }

  private dy a(go paramgo)
  {
    if (this.f == null)
    {
      this.e = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(paramgo.i());
    }
  }

  private dy b(ge paramge)
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

  private dy b(gn paramgn)
  {
    if (this.f == null)
      if (((0x4 & this.a) == 4) && (this.e != gn.h()))
      {
        this.e = gn.a(this.e).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.e = paramgn;
      break;
      this.f.b(paramgn);
    }
  }

  private dy d(ev paramev)
  {
    if ((paramev instanceof dx));
    for (dy localdy = a((dx)paramev); ; localdy = this)
    {
      return localdy;
      super.a(paramev);
    }
  }

  private static cj r()
  {
    return a.R();
  }

  private void s()
  {
    if (dx.r())
    {
      E();
      W();
    }
  }

  private static dy t()
  {
    return new dy();
  }

  private dy u()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      this.d = 0;
      this.a = (0xFFFFFFFD & this.a);
      if (this.f != null)
        break label84;
      this.e = gn.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
      break;
      label84: this.f.g();
    }
  }

  private dy v()
  {
    return new dy().a(z());
  }

  private static dx w()
  {
    return dx.h();
  }

  private dx x()
  {
    dx localdx = z();
    if (!localdx.a())
      throw b(localdx);
    return localdx;
  }

  private dx y()
  {
    dx localdx = z();
    if (!localdx.a())
      throw b(localdx).a();
    return localdx;
  }

  private dx z()
  {
    dx localdx = new dx(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        dx.a(localdx, this.b);
        if ((i & 0x2) != 2)
          break label145;
      }
      label145: for (int k = j | 0x2; ; k = j)
      {
        dx.a(localdx, this.d);
        if ((i & 0x4) == 4);
        for (int m = k | 0x4; ; m = k)
        {
          if (this.f == null)
            dx.a(localdx, this.e);
          while (true)
          {
            dx.b(localdx, m);
            ab_();
            return localdx;
            dx.a(localdx, (ge)this.c.d());
            break;
            dx.a(localdx, (gn)this.f.d());
          }
        }
      }
    }
  }

  protected final dv B()
  {
    return a.S();
  }

  public final cj C()
  {
    return dx.i();
  }

  public final dy a(dx paramdx)
  {
    dy localdy;
    if (paramdx == dx.h())
    {
      localdy = this;
      return localdy;
    }
    ge localge;
    label70: label74: gn localgn;
    if (paramdx.j())
    {
      localge = paramdx.k();
      if (this.c != null)
        break label213;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramdx.m())
      {
        int i = paramdx.n();
        this.a = (0x2 | this.a);
        this.d = i;
        af_();
      }
      if (paramdx.o())
      {
        localgn = paramdx.p();
        if (this.f != null)
          break label235;
        if (((0x4 & this.a) != 4) || (this.e == gn.h()))
          break label226;
        this.e = gn.a(this.e).a(localgn).D();
        label176: af_();
      }
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(paramdx.b_());
      localdy = this;
      break;
      this.b = localge;
      break label70;
      label213: this.c.b(localge);
      break label74;
      label226: this.e = localgn;
      break label176;
      label235: this.f.b(localgn);
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
      else if ((o()) && (!p().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final dy e(m paramm, df paramdf)
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
        for (dy localdy = this; ; localdy = this)
        {
          return localdy;
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
      case 16:
        this.a = (0x2 | this.a);
        this.d = paramm.f();
      case 26:
      }
    }
    go localgo = gn.Z();
    if (o())
      localgo.a(p());
    paramm.a(localgo, paramdf);
    gn localgn = localgo.D();
    if (this.f == null)
    {
      if (localgn == null)
        throw new NullPointerException();
      this.e = localgn;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.f.a(localgn);
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

  public final int n()
  {
    return this.d;
  }

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn p()
  {
    if (this.f == null);
    for (gn localgn = this.e; ; localgn = (gn)this.f.c())
      return localgn;
  }

  public final gp q()
  {
    if (this.f != null);
    for (Object localObject = (gp)this.f.f(); ; localObject = this.e)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dy
 * JD-Core Version:    0.6.2
 */