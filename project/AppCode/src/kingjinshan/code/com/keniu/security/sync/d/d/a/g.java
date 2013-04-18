package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class g extends dn
  implements h
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gj d = gj.h();
  private fp e;
  private gy f = gy.h();
  private fp g;
  private hc h = hc.h();
  private fp i;
  private Object j = "";

  private g()
  {
    y();
  }

  private g(dp paramdp, byte paramByte)
  {
    super(paramdp);
    y();
  }

  private g A()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label135;
      this.d = gj.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label146;
      this.f = gy.h();
      label69: this.a = (0xFFFFFFFB & this.a);
      if (this.i != null)
        break label157;
      this.h = hc.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      this.j = "";
      this.a = (0xFFFFFFEF & this.a);
      return this;
      this.c.g();
      break;
      label135: this.e.g();
      break label44;
      label146: this.g.g();
      break label69;
      label157: this.i.g();
    }
  }

  private g D()
  {
    return new g().a(V());
  }

  private static f E()
  {
    return f.h();
  }

  private f N()
  {
    f localf = V();
    if (!localf.a())
      throw b(localf);
    return localf;
  }

  private f U()
  {
    f localf = V();
    if (!localf.a())
      throw b(localf).a();
    return localf;
  }

  private f V()
  {
    f localf = new f(this);
    int k = this.a;
    if ((k & 0x1) == 1);
    for (int m = 1; ; m = 0)
    {
      if (this.c == null)
      {
        f.a(localf, this.b);
        if ((k & 0x2) == 2)
          m |= 2;
        if (this.e != null)
          break label178;
        f.a(localf, this.d);
        label66: if ((k & 0x4) == 4)
          m |= 4;
        if (this.g != null)
          break label196;
        f.a(localf, this.f);
        label93: if ((k & 0x8) == 8)
          m |= 8;
        if (this.i != null)
          break label214;
        f.a(localf, this.h);
        label123: if ((k & 0x10) != 16)
          break label232;
      }
      label178: label196: label214: label232: for (int n = m | 0x10; ; n = m)
      {
        f.a(localf, this.j);
        f.a(localf, n);
        ab_();
        return localf;
        f.a(localf, (ge)this.c.d());
        break;
        f.a(localf, (gj)this.e.d());
        break label66;
        f.a(localf, (gy)this.g.d());
        break label93;
        f.a(localf, (hc)this.i.d());
        break label123;
      }
    }
  }

  private g W()
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

  private gf X()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)Y().e();
  }

  private fp Y()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private g Z()
  {
    if (this.e == null)
    {
      this.d = gj.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private g a(ge paramge)
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

  private g a(gf paramgf)
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

  private g a(gj paramgj)
  {
    if (this.e == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      this.d = paramgj;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgj);
    }
  }

  private g a(gk paramgk)
  {
    if (this.e == null)
    {
      this.d = paramgk.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgk.i());
    }
  }

  private g a(gy paramgy)
  {
    if (this.g == null)
    {
      if (paramgy == null)
        throw new NullPointerException();
      this.f = paramgy;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramgy);
    }
  }

  private g a(gz paramgz)
  {
    if (this.g == null)
    {
      this.f = paramgz.i();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.g.a(paramgz.i());
    }
  }

  private g a(hc paramhc)
  {
    if (this.i == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      this.h = paramhc;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramhc);
    }
  }

  private g a(hd paramhd)
  {
    if (this.i == null)
    {
      this.h = paramhd.i();
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramhd.i());
    }
  }

  private g a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.j = paramString;
    af_();
    return this;
  }

  private gk aa()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gk)ab().e();
  }

  private fp ab()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private g ac()
  {
    if (this.g == null)
    {
      this.f = gy.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.g.g();
    }
  }

  private gz ad()
  {
    this.a = (0x4 | this.a);
    af_();
    return (gz)ae().e();
  }

  private fp ae()
  {
    if (this.g == null)
    {
      this.g = new fp(this.f, ae_(), ad_());
      this.f = null;
    }
    return this.g;
  }

  private g af()
  {
    if (this.i == null)
    {
      this.h = hc.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.i.g();
    }
  }

  private hd ag()
  {
    this.a = (0x8 | this.a);
    af_();
    return (hd)ah().e();
  }

  private fp ah()
  {
    if (this.i == null)
    {
      this.i = new fp(this.h, ae_(), ad_());
      this.h = null;
    }
    return this.i;
  }

  private g ai()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.j = f.h().w();
    af_();
    return this;
  }

  private g b(ge paramge)
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

  private g b(gj paramgj)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gj.h()))
      {
        this.d = gj.a(this.d).a(paramgj).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgj;
      break;
      this.e.b(paramgj);
    }
  }

  private g b(gy paramgy)
  {
    if (this.g == null)
      if (((0x4 & this.a) == 4) && (this.f != gy.h()))
      {
        this.f = gy.a(this.f).a(paramgy).D();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f = paramgy;
      break;
      this.g.b(paramgy);
    }
  }

  private g b(hc paramhc)
  {
    if (this.i == null)
      if (((0x8 & this.a) == 8) && (this.h != hc.h()))
      {
        this.h = hc.a(this.h).a(paramhc).D();
        af_();
      }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.h = paramhc;
      break;
      this.i.b(paramhc);
    }
  }

  private g d(ev paramev)
  {
    if ((paramev instanceof f));
    for (g localg = a((f)paramev); ; localg = this)
    {
      return localg;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x10 | this.a);
    this.j = parami;
    af_();
  }

  private static cj x()
  {
    return a.ax();
  }

  private void y()
  {
    if (f.x())
    {
      Y();
      ab();
      ae();
      ah();
    }
  }

  private static g z()
  {
    return new g();
  }

  protected final dv B()
  {
    return a.ay();
  }

  public final cj C()
  {
    return f.i();
  }

  public final g a(f paramf)
  {
    if (paramf == f.h());
    for (g localg = this; ; localg = this)
    {
      return localg;
      ge localge;
      label74: gj localgj;
      label143: label147: gy localgy;
      label216: label220: hc localhc;
      if (paramf.j())
      {
        localge = paramf.k();
        if (this.c != null)
          break label341;
        if (((0x1 & this.a) == 1) && (this.b != ge.h()))
        {
          this.b = ge.a(this.b).a(localge).n();
          af_();
          this.a = (0x1 | this.a);
        }
      }
      else
      {
        if (paramf.m())
        {
          localgj = paramf.n();
          if (this.e != null)
            break label363;
          if (((0x2 & this.a) != 2) || (this.d == gj.h()))
            break label354;
          this.d = gj.a(this.d).a(localgj).D();
          af_();
          this.a = (0x2 | this.a);
        }
        if (paramf.p())
        {
          localgy = paramf.q();
          if (this.g != null)
            break label385;
          if (((0x4 & this.a) != 4) || (this.f == gy.h()))
            break label376;
          this.f = gy.a(this.f).a(localgy).D();
          af_();
          this.a = (0x4 | this.a);
        }
        if (paramf.s())
        {
          localhc = paramf.t();
          if (this.i != null)
            break label407;
          if (((0x8 & this.a) != 8) || (this.h == hc.h()))
            break label398;
          this.h = hc.a(this.h).a(localhc).D();
          label291: af_();
        }
      }
      String str;
      while (true)
      {
        this.a = (0x8 | this.a);
        if (!paramf.v())
          break label441;
        str = paramf.w();
        if (str != null)
          break label420;
        throw new NullPointerException();
        this.b = localge;
        break;
        label341: this.c.b(localge);
        break label74;
        label354: this.d = localgj;
        break label143;
        label363: this.e.b(localgj);
        break label147;
        label376: this.f = localgy;
        break label216;
        label385: this.g.b(localgy);
        break label220;
        label398: this.h = localhc;
        break label291;
        label407: this.i.b(localhc);
      }
      label420: this.a = (0x10 | this.a);
      this.j = str;
      af_();
      label441: e(paramf.b_());
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

  public final g e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    while (true)
    {
      int k = paramm.a();
      switch (k)
      {
      default:
        if (!a(paramm, localgi, paramdf, k))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (g localg = this; ; localg = this)
        {
          return localg;
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
        gk localgk = gj.P();
        if (m())
          localgk.a(n());
        paramm.a(localgk, paramdf);
        gj localgj = localgk.D();
        if (this.e == null)
        {
          if (localgj == null)
            throw new NullPointerException();
          this.d = localgj;
          af_();
        }
        while (true)
        {
          this.a = (0x2 | this.a);
          break;
          this.e.a(localgj);
        }
      case 26:
        gz localgz = gy.N();
        if (p())
          localgz.a(q());
        paramm.a(localgz, paramdf);
        gy localgy = localgz.D();
        if (this.g == null)
        {
          if (localgy == null)
            throw new NullPointerException();
          this.f = localgy;
          af_();
        }
        while (true)
        {
          this.a = (0x4 | this.a);
          break;
          this.g.a(localgy);
        }
      case 34:
        hd localhd = hc.O();
        if (s())
          localhd.a(t());
        paramm.a(localhd, paramdf);
        hc localhc = localhd.D();
        if (this.i == null)
        {
          if (localhc == null)
            throw new NullPointerException();
          this.h = localhc;
          af_();
        }
        while (true)
        {
          this.a = (0x8 | this.a);
          break;
          this.i.a(localhc);
        }
      case 42:
        this.a = (0x10 | this.a);
        this.j = paramm.k();
      }
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

  public final gj n()
  {
    if (this.e == null);
    for (gj localgj = this.d; ; localgj = (gj)this.e.c())
      return localgj;
  }

  public final gl o()
  {
    if (this.e != null);
    for (Object localObject = (gl)this.e.f(); ; localObject = this.d)
      return localObject;
  }

  public final boolean p()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    if (this.g == null);
    for (gy localgy = this.f; ; localgy = (gy)this.g.c())
      return localgy;
  }

  public final ha r()
  {
    if (this.g != null);
    for (Object localObject = (ha)this.g.f(); ; localObject = this.f)
      return localObject;
  }

  public final boolean s()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hc t()
  {
    if (this.i == null);
    for (hc localhc = this.h; ; localhc = (hc)this.i.c())
      return localhc;
  }

  public final hg u()
  {
    if (this.i != null);
    for (Object localObject = (hg)this.i.f(); ; localObject = this.h)
      return localObject;
  }

  public final boolean v()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String w()
  {
    Object localObject = this.j;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.j = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.g
 * JD-Core Version:    0.6.2
 */