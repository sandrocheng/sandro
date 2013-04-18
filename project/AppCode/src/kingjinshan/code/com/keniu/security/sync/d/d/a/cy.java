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

public final class cy extends dn
  implements cz
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gn d = gn.h();
  private fp e;
  private eu f = et.a;
  private int g;

  private cy()
  {
    u();
  }

  private cy(dp paramdp, byte paramByte)
  {
    super(paramdp);
    u();
  }

  private cx A()
  {
    cx localcx = D();
    if (!localcx.a())
      throw b(localcx).a();
    return localcx;
  }

  private cx D()
  {
    cx localcx = new cx(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        cx.a(localcx, this.b);
        if ((i & 0x2) == 2)
          j |= 2;
        if (this.e != null)
          break label165;
        cx.a(localcx, this.d);
        label66: if ((0x4 & this.a) == 4)
        {
          this.f = new gl(this.f);
          this.a = (0xFFFFFFFB & this.a);
        }
        cx.a(localcx, this.f);
        if ((i & 0x8) != 8)
          break label183;
      }
      label165: label183: for (int k = j | 0x4; ; k = j)
      {
        cx.a(localcx, this.g);
        cx.b(localcx, k);
        ab_();
        return localcx;
        cx.a(localcx, (ge)this.c.d());
        break;
        cx.a(localcx, (gn)this.e.d());
        break label66;
      }
    }
  }

  private cy E()
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

  private gf N()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)U().e();
  }

  private fp U()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private cy V()
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

  private go W()
  {
    this.a = (0x2 | this.a);
    af_();
    return (go)X().e();
  }

  private fp X()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private void Y()
  {
    if ((0x4 & this.a) != 4)
    {
      this.f = new et(this.f);
      this.a = (0x4 | this.a);
    }
  }

  private cy Z()
  {
    this.f = et.a;
    this.a = (0xFFFFFFFB & this.a);
    af_();
    return this;
  }

  private cy a(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    Y();
    this.f.set(paramInt, paramString);
    af_();
    return this;
  }

  private cy a(ge paramge)
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

  private cy a(gf paramgf)
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

  private cy a(gn paramgn)
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

  private cy a(go paramgo)
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

  private cy a(Iterable paramIterable)
  {
    Y();
    dn.a(paramIterable, this.f);
    af_();
    return this;
  }

  private cy a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    Y();
    this.f.add(paramString);
    af_();
    return this;
  }

  private cy aa()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.g = 0;
    af_();
    return this;
  }

  private cy b(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.g = paramInt;
    af_();
    return this;
  }

  private cy b(ge paramge)
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

  private cy b(gn paramgn)
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

  private cy d(ev paramev)
  {
    if ((paramev instanceof cx));
    for (cy localcy = a((cx)paramev); ; localcy = this)
    {
      return localcy;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    Y();
    this.f.a(parami);
    af_();
  }

  private static cj t()
  {
    return a.Z();
  }

  private void u()
  {
    if (cx.t())
    {
      U();
      X();
    }
  }

  private static cy v()
  {
    return new cy();
  }

  private cy w()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label102;
      this.d = gn.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      this.f = et.a;
      this.a = (0xFFFFFFFB & this.a);
      this.g = 0;
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.c.g();
      break;
      label102: this.e.g();
    }
  }

  private cy x()
  {
    return new cy().a(D());
  }

  private static cx y()
  {
    return cx.h();
  }

  private cx z()
  {
    cx localcx = D();
    if (!localcx.a())
      throw b(localcx);
    return localcx;
  }

  protected final dv B()
  {
    return a.aa();
  }

  public final cj C()
  {
    return cx.i();
  }

  public final cy a(cx paramcx)
  {
    cy localcy;
    if (paramcx == cx.h())
    {
      localcy = this;
      return localcy;
    }
    ge localge;
    label70: label74: gn localgn;
    if (paramcx.j())
    {
      localge = paramcx.k();
      if (this.c != null)
        break label261;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramcx.m())
      {
        localgn = paramcx.n();
        if (this.e != null)
          break label283;
        if (((0x2 & this.a) != 2) || (this.d == gn.h()))
          break label274;
        this.d = gn.a(this.d).a(localgn).D();
        label143: af_();
        label147: this.a = (0x2 | this.a);
      }
      if (!cx.a(paramcx).isEmpty())
      {
        if (!this.f.isEmpty())
          break label296;
        this.f = cx.a(paramcx);
        this.a = (0xFFFFFFFB & this.a);
      }
    }
    while (true)
    {
      af_();
      if (paramcx.r())
      {
        int i = paramcx.s();
        this.a = (0x8 | this.a);
        this.g = i;
        af_();
      }
      e(paramcx.b_());
      localcy = this;
      break;
      this.b = localge;
      break label70;
      label261: this.c.b(localge);
      break label74;
      label274: this.d = localgn;
      break label143;
      label283: this.e.b(localgn);
      break label147;
      label296: Y();
      this.f.addAll(cx.a(paramcx));
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

  public final cy e(m paramm, df paramdf)
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
        for (cy localcy = this; ; localcy = this)
        {
          return localcy;
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
        Y();
        this.f.a(paramm.k());
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.g = paramm.f();
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

  public final boolean r()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cy
 * JD-Core Version:    0.6.2
 */