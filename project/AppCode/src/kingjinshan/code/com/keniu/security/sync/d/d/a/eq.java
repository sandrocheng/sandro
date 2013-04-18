package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.gl;
import com.b.a.i;
import com.b.a.m;
import java.util.Collections;
import java.util.List;

public final class eq extends dn
  implements er
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gn d = gn.h();
  private fp e;
  private eu f = et.a;

  private eq()
  {
    s();
  }

  private eq(dp paramdp, byte paramByte)
  {
    super(paramdp);
    s();
  }

  private eq A()
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

  private eq N()
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

  private void W()
  {
    if ((0x4 & this.a) != 4)
    {
      this.f = new et(this.f);
      this.a = (0x4 | this.a);
    }
  }

  private eq X()
  {
    this.f = et.a;
    this.a = (0xFFFFFFFB & this.a);
    af_();
    return this;
  }

  private eq a(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    W();
    this.f.set(paramInt, paramString);
    af_();
    return this;
  }

  private eq a(ge paramge)
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

  private eq a(gf paramgf)
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

  private eq a(gn paramgn)
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

  private eq a(go paramgo)
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

  private eq a(Iterable paramIterable)
  {
    W();
    dn.a(paramIterable, this.f);
    af_();
    return this;
  }

  private eq a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    W();
    this.f.add(paramString);
    af_();
    return this;
  }

  private eq b(ge paramge)
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

  private eq b(gn paramgn)
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

  private eq d(ev paramev)
  {
    if ((paramev instanceof ep));
    for (eq localeq = a((ep)paramev); ; localeq = this)
    {
      return localeq;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    W();
    this.f.a(parami);
    af_();
  }

  private static cj r()
  {
    return a.aV();
  }

  private void s()
  {
    if (ep.r())
    {
      E();
      V();
    }
  }

  private static eq t()
  {
    return new eq();
  }

  private eq u()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label86;
      this.d = gn.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      this.f = et.a;
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.c.g();
      break;
      label86: this.e.g();
    }
  }

  private eq v()
  {
    return new eq().a(z());
  }

  private static ep w()
  {
    return ep.h();
  }

  private ep x()
  {
    ep localep = z();
    if (!localep.a())
      throw b(localep);
    return localep;
  }

  private ep y()
  {
    ep localep = z();
    if (!localep.a())
      throw b(localep).a();
    return localep;
  }

  private ep z()
  {
    ep localep = new ep(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        ep.a(localep, this.b);
        if ((i & 0x2) != 2)
          break label161;
      }
      label161: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
          ep.a(localep, this.d);
        while (true)
        {
          if ((0x4 & this.a) == 4)
          {
            this.f = new gl(this.f);
            this.a = (0xFFFFFFFB & this.a);
          }
          ep.a(localep, this.f);
          ep.a(localep, k);
          ab_();
          return localep;
          ep.a(localep, (ge)this.c.d());
          break;
          ep.a(localep, (gn)this.e.d());
        }
      }
    }
  }

  protected final dv B()
  {
    return a.aW();
  }

  public final cj C()
  {
    return ep.i();
  }

  public final eq a(ep paramep)
  {
    eq localeq;
    if (paramep == ep.h())
    {
      localeq = this;
      return localeq;
    }
    ge localge;
    label70: label74: gn localgn;
    if (paramep.j())
    {
      localge = paramep.k();
      if (this.c != null)
        break label227;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramep.m())
      {
        localgn = paramep.n();
        if (this.e != null)
          break label249;
        if (((0x2 & this.a) != 2) || (this.d == gn.h()))
          break label240;
        this.d = gn.a(this.d).a(localgn).D();
        label143: af_();
        label147: this.a = (0x2 | this.a);
      }
      if (!ep.a(paramep).isEmpty())
      {
        if (!this.f.isEmpty())
          break label262;
        this.f = ep.a(paramep);
        this.a = (0xFFFFFFFB & this.a);
      }
    }
    while (true)
    {
      af_();
      e(paramep.b_());
      localeq = this;
      break;
      this.b = localge;
      break label70;
      label227: this.c.b(localge);
      break label74;
      label240: this.d = localgn;
      break label143;
      label249: this.e.b(localgn);
      break label147;
      label262: W();
      this.f.addAll(ep.a(paramep));
    }
  }

  public final String a(int paramInt)
  {
    return (String)this.f.get(paramInt);
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

  public final eq e(m paramm, df paramdf)
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
        for (eq localeq = this; ; localeq = this)
        {
          return localeq;
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
      case 26:
        W();
        this.f.a(paramm.k());
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

  public final List p()
  {
    return Collections.unmodifiableList(this.f);
  }

  public final int q()
  {
    return this.f.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.eq
 * JD-Core Version:    0.6.2
 */