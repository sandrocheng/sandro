package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
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

public final class dm extends com.b.a.dn
  implements dn
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private List d = Collections.emptyList();
  private fc e;

  private dm()
  {
    q();
  }

  private dm(dp paramdp, byte paramByte)
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

  private dm E()
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

  private gr N()
  {
    return (gr)V().b(gq.h());
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

  private dm a(int paramInt, gq paramgq)
  {
    if (this.e == null)
    {
      if (paramgq == null)
        throw new NullPointerException();
      D();
      this.d.set(paramInt, paramgq);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramgq);
    }
  }

  private dm a(int paramInt, gr paramgr)
  {
    if (this.e == null)
    {
      D();
      this.d.set(paramInt, paramgr.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramgr.i());
    }
  }

  private dm a(ge paramge)
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

  private dm a(gf paramgf)
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

  private dm a(gq paramgq)
  {
    if (this.e == null)
    {
      if (paramgq == null)
        throw new NullPointerException();
      D();
      this.d.add(paramgq);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramgq);
    }
  }

  private dm a(gr paramgr)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramgr.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramgr.i());
    }
  }

  private dm a(Iterable paramIterable)
  {
    if (this.e == null)
    {
      D();
      com.b.a.dn.a(paramIterable, this.d);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramIterable);
    }
  }

  private dm b(int paramInt, gq paramgq)
  {
    if (this.e == null)
    {
      if (paramgq == null)
        throw new NullPointerException();
      D();
      this.d.add(paramInt, paramgq);
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramgq);
    }
  }

  private dm b(int paramInt, gr paramgr)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramInt, paramgr.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramgr.i());
    }
  }

  private dm b(ge paramge)
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

  private dm c(int paramInt)
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

  private dm d(ev paramev)
  {
    if ((paramev instanceof dl));
    for (dm localdm = a((dl)paramev); ; localdm = this)
    {
      return localdm;
      super.a(paramev);
    }
  }

  private gr d(int paramInt)
  {
    return (gr)V().b(paramInt);
  }

  private gr e(int paramInt)
  {
    return (gr)V().c(paramInt, gq.h());
  }

  private static cj p()
  {
    return a.ah();
  }

  private void q()
  {
    if (dl.p())
    {
      A();
      V();
    }
  }

  private static dm r()
  {
    return new dm();
  }

  private dm s()
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

  private dm t()
  {
    return new dm().a(x());
  }

  private static dl u()
  {
    return dl.h();
  }

  private dl v()
  {
    dl localdl = x();
    if (!localdl.a())
      throw b(localdl);
    return localdl;
  }

  private dl w()
  {
    dl localdl = x();
    if (!localdl.a())
      throw b(localdl).a();
    return localdl;
  }

  private dl x()
  {
    dl localdl = new dl(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
    {
      dl.a(localdl, this.b);
      if (this.e != null)
        break label119;
      if ((0x2 & this.a) == 2)
      {
        this.d = Collections.unmodifiableList(this.d);
        this.a = (0xFFFFFFFD & this.a);
      }
      dl.a(localdl, this.d);
    }
    while (true)
    {
      dl.a(localdl, j);
      ab_();
      return localdl;
      dl.a(localdl, (ge)this.c.d());
      break;
      label119: dl.a(localdl, this.e.f());
    }
  }

  private dm y()
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
    return a.ai();
  }

  public final cj C()
  {
    return dl.i();
  }

  public final dm a(dl paramdl)
  {
    dm localdm;
    if (paramdl == dl.h())
    {
      localdm = this;
      return localdm;
    }
    ge localge;
    if (paramdl.j())
    {
      localge = paramdl.k();
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
      if (!dl.a(paramdl).isEmpty())
      {
        if (!this.d.isEmpty())
          break label177;
        this.d = dl.a(paramdl);
        this.a = (0xFFFFFFFD & this.a);
        label136: af_();
      }
    }
    while (true)
    {
      e(paramdl.b_());
      localdm = this;
      break;
      this.b = localge;
      break label72;
      label164: this.c.b(localge);
      break label76;
      label177: D();
      this.d.addAll(dl.a(paramdl));
      break label136;
      label198: if (!dl.a(paramdl).isEmpty())
      {
        if (this.e.d())
        {
          this.e.b();
          this.e = null;
          this.d = dl.a(paramdl);
          this.a = (0xFFFFFFFD & this.a);
          if (dl.q());
          for (fc localfc = V(); ; localfc = null)
          {
            this.e = localfc;
            break;
          }
        }
        this.e.a(dl.a(paramdl));
      }
    }
  }

  public final gq a(int paramInt)
  {
    if (this.e == null);
    for (gq localgq = (gq)this.d.get(paramInt); ; localgq = (gq)this.e.a(paramInt))
      return localgq;
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

  public final gs b(int paramInt)
  {
    if (this.e == null);
    for (gs localgs = (gs)this.d.get(paramInt); ; localgs = (gs)this.e.c(paramInt))
      return localgs;
  }

  public final dm e(m paramm, df paramdf)
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
        for (dm localdm = this; ; localdm = this)
        {
          return localdm;
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
        gr localgr = gq.N();
        paramm.a(localgr, paramdf);
        gq localgq = localgr.D();
        if (this.e == null)
        {
          if (localgq == null)
            throw new NullPointerException();
          D();
          this.d.add(localgq);
          af_();
        }
        else
        {
          this.e.a(localgq);
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.dm
 * JD-Core Version:    0.6.2
 */