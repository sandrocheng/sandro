package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
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

public final class dg extends dn
  implements dh
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private List d = Collections.emptyList();
  private fc e;

  private dg()
  {
    q();
  }

  private dg(dp paramdp, byte paramByte)
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

  private void D()
  {
    if ((0x2 & this.a) != 2)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x2 | this.a);
    }
  }

  private dg E()
  {
    if (this.e == null)
    {
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.e.e();
    }
  }

  private go N()
  {
    return (go)V().b(gn.h());
  }

  private List U()
  {
    return V().h();
  }

  private fc V()
  {
    List localList;
    if (this.e == null)
    {
      localList = this.d;
      if ((0x2 & this.a) != 2)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.e = new fc(localList, bool, ae_(), ad_());
      this.d = null;
      return this.e;
    }
  }

  private dg a(int paramInt, gn paramgn)
  {
    if (this.e == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      D();
      this.d.set(paramInt, paramgn);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramgn);
    }
  }

  private dg a(int paramInt, go paramgo)
  {
    if (this.e == null)
    {
      D();
      this.d.set(paramInt, paramgo.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramgo.i());
    }
  }

  private dg a(ge paramge)
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

  private dg a(gf paramgf)
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

  private dg a(gn paramgn)
  {
    if (this.e == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      D();
      this.d.add(paramgn);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramgn);
    }
  }

  private dg a(go paramgo)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramgo.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramgo.i());
    }
  }

  private dg a(Iterable paramIterable)
  {
    if (this.e == null)
    {
      D();
      dn.a(paramIterable, this.d);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramIterable);
    }
  }

  private dg b(int paramInt, gn paramgn)
  {
    if (this.e == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      D();
      this.d.add(paramInt, paramgn);
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramgn);
    }
  }

  private dg b(int paramInt, go paramgo)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramInt, paramgo.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramgo.i());
    }
  }

  private dg b(ge paramge)
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

  private dg c(int paramInt)
  {
    if (this.e == null)
    {
      D();
      this.d.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.e.d(paramInt);
    }
  }

  private dg d(ev paramev)
  {
    if ((paramev instanceof df));
    for (dg localdg = a((df)paramev); ; localdg = this)
    {
      return localdg;
      super.a(paramev);
    }
  }

  private go d(int paramInt)
  {
    return (go)V().b(paramInt);
  }

  private go e(int paramInt)
  {
    return (go)V().c(paramInt, gn.h());
  }

  private static cj p()
  {
    return a.bp();
  }

  private void q()
  {
    if (df.p())
    {
      A();
      V();
    }
  }

  private static dg r()
  {
    return new dg();
  }

  private dg s()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label68;
      this.d = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
    }
    while (true)
    {
      return this;
      this.c.g();
      break;
      label68: this.e.e();
    }
  }

  private dg t()
  {
    return new dg().a(x());
  }

  private static df u()
  {
    return df.h();
  }

  private df v()
  {
    df localdf = x();
    if (!localdf.a())
      throw b(localdf);
    return localdf;
  }

  private df w()
  {
    df localdf = x();
    if (!localdf.a())
      throw b(localdf).a();
    return localdf;
  }

  private df x()
  {
    df localdf = new df(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
    {
      df.a(localdf, this.b);
      if (this.e != null)
        break label119;
      if ((0x2 & this.a) == 2)
      {
        this.d = Collections.unmodifiableList(this.d);
        this.a = (0xFFFFFFFD & this.a);
      }
      df.a(localdf, this.d);
    }
    while (true)
    {
      df.a(localdf, j);
      ab_();
      return localdf;
      df.a(localdf, (ge)this.c.d());
      break;
      label119: df.a(localdf, this.e.f());
    }
  }

  private dg y()
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
    return a.bq();
  }

  public final cj C()
  {
    return df.i();
  }

  public final dg a(df paramdf)
  {
    dg localdg;
    if (paramdf == df.h())
    {
      localdg = this;
      return localdg;
    }
    ge localge;
    if (paramdf.j())
    {
      localge = paramdf.k();
      if (this.c != null)
        break label164;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        label72: af_();
        label76: this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (this.e != null)
        break label198;
      if (!df.a(paramdf).isEmpty())
      {
        if (!this.d.isEmpty())
          break label177;
        this.d = df.a(paramdf);
        this.a = (0xFFFFFFFD & this.a);
        label136: af_();
      }
    }
    while (true)
    {
      e(paramdf.b_());
      localdg = this;
      break;
      this.b = localge;
      break label72;
      label164: this.c.b(localge);
      break label76;
      label177: D();
      this.d.addAll(df.a(paramdf));
      break label136;
      label198: if (!df.a(paramdf).isEmpty())
      {
        if (this.e.d())
        {
          this.e.b();
          this.e = null;
          this.d = df.a(paramdf);
          this.a = (0xFFFFFFFD & this.a);
          if (df.q());
          for (fc localfc = V(); ; localfc = null)
          {
            this.e = localfc;
            break;
          }
        }
        this.e.a(df.a(paramdf));
      }
    }
  }

  public final gn a(int paramInt)
  {
    if (this.e == null);
    for (gn localgn = (gn)this.d.get(paramInt); ; localgn = (gn)this.e.a(paramInt))
      return localgn;
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
      {
        bool = false;
      }
      else
      {
        for (int i = 0; ; i++)
        {
          if (i >= o())
            break label58;
          if (!a(i).a())
          {
            bool = false;
            break;
          }
        }
        label58: bool = true;
      }
    }
  }

  public final gp b(int paramInt)
  {
    if (this.e == null);
    for (gp localgp = (gp)this.d.get(paramInt); ; localgp = (gp)this.e.c(paramInt))
      return localgp;
  }

  public final dg e(m paramm, com.b.a.df paramdf)
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
        for (dg localdg = this; ; localdg = this)
        {
          return localdg;
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
        paramm.a(localgo, paramdf);
        gn localgn = localgo.D();
        if (this.e == null)
        {
          if (localgn == null)
            throw new NullPointerException();
          D();
          this.d.add(localgn);
          af_();
        }
        else
        {
          this.e.a(localgn);
        }
        break;
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

  public final List m()
  {
    if (this.e == null);
    for (List localList = Collections.unmodifiableList(this.d); ; localList = this.e.g())
      return localList;
  }

  public final List n()
  {
    if (this.e != null);
    for (List localList = this.e.i(); ; localList = Collections.unmodifiableList(this.d))
      return localList;
  }

  public final int o()
  {
    if (this.e == null);
    for (int i = this.d.size(); ; i = this.e.c())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dg
 * JD-Core Version:    0.6.2
 */