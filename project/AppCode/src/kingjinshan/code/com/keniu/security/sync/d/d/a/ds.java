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

public final class ds extends dn
  implements dt
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private List d = Collections.emptyList();
  private fc e;

  private ds()
  {
    q();
  }

  private ds(dp paramdp, byte paramByte)
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

  private ds E()
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

  private dj N()
  {
    return (dj)V().b(di.h());
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

  private ds a(int paramInt, di paramdi)
  {
    if (this.e == null)
    {
      if (paramdi == null)
        throw new NullPointerException();
      D();
      this.d.set(paramInt, paramdi);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramdi);
    }
  }

  private ds a(int paramInt, dj paramdj)
  {
    if (this.e == null)
    {
      D();
      this.d.set(paramInt, paramdj.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramInt, paramdj.i());
    }
  }

  private ds a(di paramdi)
  {
    if (this.e == null)
    {
      if (paramdi == null)
        throw new NullPointerException();
      D();
      this.d.add(paramdi);
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramdi);
    }
  }

  private ds a(dj paramdj)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramdj.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.a(paramdj.i());
    }
  }

  private ds a(ge paramge)
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

  private ds a(gf paramgf)
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

  private ds a(Iterable paramIterable)
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

  private ds b(int paramInt, di paramdi)
  {
    if (this.e == null)
    {
      if (paramdi == null)
        throw new NullPointerException();
      D();
      this.d.add(paramInt, paramdi);
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramdi);
    }
  }

  private ds b(int paramInt, dj paramdj)
  {
    if (this.e == null)
    {
      D();
      this.d.add(paramInt, paramdj.i());
      af_();
    }
    while (true)
    {
      return this;
      this.e.b(paramInt, paramdj.i());
    }
  }

  private ds b(ge paramge)
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

  private ds c(int paramInt)
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

  private dj d(int paramInt)
  {
    return (dj)V().b(paramInt);
  }

  private ds d(ev paramev)
  {
    if ((paramev instanceof dr));
    for (ds localds = a((dr)paramev); ; localds = this)
    {
      return localds;
      super.a(paramev);
    }
  }

  private dj e(int paramInt)
  {
    return (dj)V().c(paramInt, di.h());
  }

  private static cj p()
  {
    return a.af();
  }

  private void q()
  {
    if (dr.p())
    {
      A();
      V();
    }
  }

  private static ds r()
  {
    return new ds();
  }

  private ds s()
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

  private ds t()
  {
    return new ds().a(x());
  }

  private static dr u()
  {
    return dr.h();
  }

  private dr v()
  {
    dr localdr = x();
    if (!localdr.a())
      throw b(localdr);
    return localdr;
  }

  private dr w()
  {
    dr localdr = x();
    if (!localdr.a())
      throw b(localdr).a();
    return localdr;
  }

  private dr x()
  {
    dr localdr = new dr(this);
    int i = 0x1 & this.a;
    int j = 0;
    if (i == 1)
      j = 1;
    if (this.c == null)
    {
      dr.a(localdr, this.b);
      if (this.e != null)
        break label119;
      if ((0x2 & this.a) == 2)
      {
        this.d = Collections.unmodifiableList(this.d);
        this.a = (0xFFFFFFFD & this.a);
      }
      dr.a(localdr, this.d);
    }
    while (true)
    {
      dr.a(localdr, j);
      ab_();
      return localdr;
      dr.a(localdr, (ge)this.c.d());
      break;
      label119: dr.a(localdr, this.e.f());
    }
  }

  private ds y()
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
    return a.ag();
  }

  public final cj C()
  {
    return dr.i();
  }

  public final di a(int paramInt)
  {
    if (this.e == null);
    for (di localdi = (di)this.d.get(paramInt); ; localdi = (di)this.e.a(paramInt))
      return localdi;
  }

  public final ds a(dr paramdr)
  {
    ds localds;
    if (paramdr == dr.h())
    {
      localds = this;
      return localds;
    }
    ge localge;
    if (paramdr.j())
    {
      localge = paramdr.k();
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
      if (!dr.a(paramdr).isEmpty())
      {
        if (!this.d.isEmpty())
          break label177;
        this.d = dr.a(paramdr);
        this.a = (0xFFFFFFFD & this.a);
        label136: af_();
      }
    }
    while (true)
    {
      e(paramdr.b_());
      localds = this;
      break;
      this.b = localge;
      break label72;
      label164: this.c.b(localge);
      break label76;
      label177: D();
      this.d.addAll(dr.a(paramdr));
      break label136;
      label198: if (!dr.a(paramdr).isEmpty())
      {
        if (this.e.d())
        {
          this.e.b();
          this.e = null;
          this.d = dr.a(paramdr);
          this.a = (0xFFFFFFFD & this.a);
          if (dr.q());
          for (fc localfc = V(); ; localfc = null)
          {
            this.e = localfc;
            break;
          }
        }
        this.e.a(dr.a(paramdr));
      }
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

  public final dk b(int paramInt)
  {
    if (this.e == null);
    for (dk localdk = (dk)this.d.get(paramInt); ; localdk = (dk)this.e.c(paramInt))
      return localdk;
  }

  public final ds e(m paramm, df paramdf)
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
        for (ds localds = this; ; localds = this)
        {
          return localds;
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
        dj localdj = di.r();
        paramm.a(localdj, paramdf);
        di localdi = localdj.r();
        if (this.e == null)
        {
          if (localdi == null)
            throw new NullPointerException();
          D();
          this.d.add(localdi);
          af_();
        }
        else
        {
          this.e.a(localdi);
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ds
 * JD-Core Version:    0.6.2
 */