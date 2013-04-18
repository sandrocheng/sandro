package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fc;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class cg extends dn
  implements ch
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gj d = gj.h();
  private fp e;
  private List f = Collections.emptyList();
  private fc g;
  private gy h = gy.h();
  private fp i;

  private cg()
  {
    w();
  }

  private cg(dp paramdp, byte paramByte)
  {
    super(paramdp);
    w();
  }

  private static cf A()
  {
    return cf.h();
  }

  private cf D()
  {
    cf localcf = N();
    if (!localcf.a())
      throw b(localcf);
    return localcf;
  }

  private cf E()
  {
    cf localcf = N();
    if (!localcf.a())
      throw b(localcf).a();
    return localcf;
  }

  private cf N()
  {
    cf localcf = new cf(this);
    int j = this.a;
    if ((j & 0x1) == 1);
    for (int k = 1; ; k = 0)
    {
      if (this.c == null)
      {
        cf.a(localcf, this.b);
        if ((j & 0x2) == 2)
          k |= 2;
        if (this.e != null)
          break label175;
        cf.a(localcf, this.d);
        label66: if (this.g != null)
          break label193;
        if ((0x4 & this.a) == 4)
        {
          this.f = Collections.unmodifiableList(this.f);
          this.a = (0xFFFFFFFB & this.a);
        }
        cf.a(localcf, this.f);
        label114: if ((j & 0x8) != 8)
          break label226;
      }
      label175: label193: label226: for (int m = k | 0x4; ; m = k)
      {
        if (this.i == null)
          cf.a(localcf, this.h);
        while (true)
        {
          cf.a(localcf, m);
          ab_();
          return localcf;
          cf.a(localcf, (ge)this.c.d());
          break;
          cf.a(localcf, (gj)this.e.d());
          break label66;
          cf.a(localcf, this.g.f());
          break label114;
          cf.a(localcf, (gy)this.i.d());
        }
      }
    }
  }

  private cg U()
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

  private gf V()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)W().e();
  }

  private fp W()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private cg X()
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

  private gk Y()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gk)Z().e();
  }

  private fp Z()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private cg a(int paramInt, gj paramgj)
  {
    if (this.g == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      aa();
      this.f.set(paramInt, paramgj);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramgj);
    }
  }

  private cg a(int paramInt, gk paramgk)
  {
    if (this.g == null)
    {
      aa();
      this.f.set(paramInt, paramgk.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramgk.i());
    }
  }

  private cg a(ge paramge)
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

  private cg a(gf paramgf)
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

  private cg a(gj paramgj)
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

  private cg a(gk paramgk)
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

  private cg a(gy paramgy)
  {
    if (this.i == null)
    {
      if (paramgy == null)
        throw new NullPointerException();
      this.h = paramgy;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramgy);
    }
  }

  private cg a(gz paramgz)
  {
    if (this.i == null)
    {
      this.h = paramgz.i();
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.i.a(paramgz.i());
    }
  }

  private cg a(Iterable paramIterable)
  {
    if (this.g == null)
    {
      aa();
      dn.a(paramIterable, this.f);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramIterable);
    }
  }

  private void aa()
  {
    if ((0x4 & this.a) != 4)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x4 | this.a);
    }
  }

  private cg ab()
  {
    if (this.g == null)
    {
      this.f = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.g.e();
    }
  }

  private gk ac()
  {
    return (gk)ae().b(gj.h());
  }

  private List ad()
  {
    return ae().h();
  }

  private fc ae()
  {
    List localList;
    if (this.g == null)
    {
      localList = this.f;
      if ((0x4 & this.a) != 4)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.g = new fc(localList, bool, ae_(), ad_());
      this.f = null;
      return this.g;
    }
  }

  private cg af()
  {
    if (this.i == null)
    {
      this.h = gy.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.i.g();
    }
  }

  private gz ag()
  {
    this.a = (0x8 | this.a);
    af_();
    return (gz)ah().e();
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

  private cg b(int paramInt, gj paramgj)
  {
    if (this.g == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      aa();
      this.f.add(paramInt, paramgj);
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramgj);
    }
  }

  private cg b(int paramInt, gk paramgk)
  {
    if (this.g == null)
    {
      aa();
      this.f.add(paramInt, paramgk.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramgk.i());
    }
  }

  private cg b(ge paramge)
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

  private cg b(gj paramgj)
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

  private cg b(gk paramgk)
  {
    if (this.g == null)
    {
      aa();
      this.f.add(paramgk.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramgk.i());
    }
  }

  private cg b(gy paramgy)
  {
    if (this.i == null)
      if (((0x8 & this.a) == 8) && (this.h != gy.h()))
      {
        this.h = gy.a(this.h).a(paramgy).D();
        af_();
      }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.h = paramgy;
      break;
      this.i.b(paramgy);
    }
  }

  private cg c(int paramInt)
  {
    if (this.g == null)
    {
      aa();
      this.f.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.g.d(paramInt);
    }
  }

  private cg c(gj paramgj)
  {
    if (this.g == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      aa();
      this.f.add(paramgj);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramgj);
    }
  }

  private cg d(ev paramev)
  {
    if ((paramev instanceof cf));
    for (cg localcg = a((cf)paramev); ; localcg = this)
    {
      return localcg;
      super.a(paramev);
    }
  }

  private gk d(int paramInt)
  {
    return (gk)ae().b(paramInt);
  }

  private gk e(int paramInt)
  {
    return (gk)ae().c(paramInt, gj.h());
  }

  private static cj v()
  {
    return a.J();
  }

  private void w()
  {
    if (cf.v())
    {
      W();
      Z();
      ae();
      ah();
    }
  }

  private static cg x()
  {
    return new cg();
  }

  private cg y()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label118;
      this.d = gj.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label129;
      this.f = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
      label80: if (this.i != null)
        break label139;
      this.h = gy.h();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.c.g();
      break;
      label118: this.e.g();
      break label44;
      label129: this.g.e();
      break label80;
      label139: this.i.g();
    }
  }

  private cg z()
  {
    return new cg().a(N());
  }

  protected final dv B()
  {
    return a.K();
  }

  public final cj C()
  {
    return cf.i();
  }

  public final cg a(cf paramcf)
  {
    cg localcg;
    if (paramcf == cf.h())
    {
      localcg = this;
      return localcg;
    }
    ge localge;
    label72: label76: gj localgj;
    label145: label149: label209: label213: gy localgy;
    if (paramcf.j())
    {
      localge = paramcf.k();
      if (this.c != null)
        break label313;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (paramcf.m())
      {
        localgj = paramcf.n();
        if (this.e != null)
          break label335;
        if (((0x2 & this.a) != 2) || (this.d == gj.h()))
          break label326;
        this.d = gj.a(this.d).a(localgj).D();
        af_();
        this.a = (0x2 | this.a);
      }
      if (this.g != null)
        break label369;
      if (!cf.a(paramcf).isEmpty())
      {
        if (!this.f.isEmpty())
          break label348;
        this.f = cf.a(paramcf);
        this.a = (0xFFFFFFFB & this.a);
        af_();
      }
      if (paramcf.s())
      {
        localgy = paramcf.t();
        if (this.i != null)
          break label473;
        if (((0x8 & this.a) != 8) || (this.h == gy.h()))
          break label464;
        this.h = gy.a(this.h).a(localgy).D();
        label274: af_();
      }
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      e(paramcf.b_());
      localcg = this;
      break;
      this.b = localge;
      break label72;
      label313: this.c.b(localge);
      break label76;
      label326: this.d = localgj;
      break label145;
      label335: this.e.b(localgj);
      break label149;
      label348: aa();
      this.f.addAll(cf.a(paramcf));
      break label209;
      label369: if (cf.a(paramcf).isEmpty())
        break label213;
      if (this.g.d())
      {
        this.g.b();
        this.g = null;
        this.f = cf.a(paramcf);
        this.a = (0xFFFFFFFB & this.a);
        if (cf.w());
        for (fc localfc = ae(); ; localfc = null)
        {
          this.g = localfc;
          break;
        }
      }
      this.g.a(cf.a(paramcf));
      break label213;
      label464: this.h = localgy;
      break label274;
      label473: this.i.b(localgy);
    }
  }

  public final gj a(int paramInt)
  {
    if (this.g == null);
    for (gj localgj = (gj)this.f.get(paramInt); ; localgj = (gj)this.g.a(paramInt))
      return localgj;
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

  public final gl b(int paramInt)
  {
    if (this.g == null);
    for (gl localgl = (gl)this.f.get(paramInt); ; localgl = (gl)this.g.c(paramInt))
      return localgl;
  }

  public final cg e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
    while (true)
    {
      int j = paramm.a();
      switch (j)
      {
      default:
        if (!a(paramm, localgi, paramdf, j))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (cg localcg = this; ; localcg = this)
        {
          return localcg;
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
        gk localgk2 = gj.P();
        if (m())
          localgk2.a(n());
        paramm.a(localgk2, paramdf);
        gj localgj2 = localgk2.D();
        if (this.e == null)
        {
          if (localgj2 == null)
            throw new NullPointerException();
          this.d = localgj2;
          af_();
        }
        while (true)
        {
          this.a = (0x2 | this.a);
          break;
          this.e.a(localgj2);
        }
      case 26:
        gk localgk1 = gj.P();
        paramm.a(localgk1, paramdf);
        gj localgj1 = localgk1.D();
        if (this.g == null)
        {
          if (localgj1 == null)
            throw new NullPointerException();
          aa();
          this.f.add(localgj1);
          af_();
        }
        else
        {
          this.g.a(localgj1);
        }
        break;
      case 34:
      }
    }
    gz localgz = gy.N();
    if (s())
      localgz.a(t());
    paramm.a(localgz, paramdf);
    gy localgy = localgz.D();
    if (this.i == null)
    {
      if (localgy == null)
        throw new NullPointerException();
      this.h = localgy;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      break;
      this.i.a(localgy);
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

  public final List p()
  {
    if (this.g == null);
    for (List localList = Collections.unmodifiableList(this.f); ; localList = this.g.g())
      return localList;
  }

  public final List q()
  {
    if (this.g != null);
    for (List localList = this.g.i(); ; localList = Collections.unmodifiableList(this.f))
      return localList;
  }

  public final int r()
  {
    if (this.g == null);
    for (int j = this.f.size(); ; j = this.g.c())
      return j;
  }

  public final boolean s()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy t()
  {
    if (this.i == null);
    for (gy localgy = this.h; ; localgy = (gy)this.i.c())
      return localgy;
  }

  public final ha u()
  {
    if (this.i != null);
    for (Object localObject = (ha)this.i.f(); ; localObject = this.h)
      return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cg
 * JD-Core Version:    0.6.2
 */