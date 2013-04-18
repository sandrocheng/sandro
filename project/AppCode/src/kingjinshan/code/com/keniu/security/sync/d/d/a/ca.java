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

public final class ca extends dn
  implements cb
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private gy d = gy.h();
  private fp e;
  private List f = Collections.emptyList();
  private fc g;

  private ca()
  {
    t();
  }

  private ca(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private bz A()
  {
    bz localbz = new bz(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        bz.a(localbz, this.b);
        if ((i & 0x2) != 2)
          break label179;
      }
      label164: label179: for (int k = j | 0x2; ; k = j)
      {
        if (this.e == null)
        {
          bz.a(localbz, this.d);
          label67: if (this.g != null)
            break label164;
          if ((0x4 & this.a) == 4)
          {
            this.f = Collections.unmodifiableList(this.f);
            this.a = (0xFFFFFFFB & this.a);
          }
          bz.a(localbz, this.f);
        }
        while (true)
        {
          bz.a(localbz, k);
          ab_();
          return localbz;
          bz.a(localbz, (ge)this.c.d());
          break;
          bz.a(localbz, (gy)this.e.d());
          break label67;
          bz.a(localbz, this.g.f());
        }
      }
    }
  }

  private ca D()
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

  private gf E()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)N().e();
  }

  private fp N()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private ca U()
  {
    if (this.e == null)
    {
      this.d = gy.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.e.g();
    }
  }

  private gz V()
  {
    this.a = (0x2 | this.a);
    af_();
    return (gz)W().e();
  }

  private fp W()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private void X()
  {
    if ((0x4 & this.a) != 4)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x4 | this.a);
    }
  }

  private ca Y()
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

  private hd Z()
  {
    return (hd)ab().b(hc.h());
  }

  private ca a(int paramInt, hc paramhc)
  {
    if (this.g == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      X();
      this.f.set(paramInt, paramhc);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramhc);
    }
  }

  private ca a(int paramInt, hd paramhd)
  {
    if (this.g == null)
    {
      X();
      this.f.set(paramInt, paramhd.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramhd.i());
    }
  }

  private ca a(ge paramge)
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

  private ca a(gf paramgf)
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

  private ca a(gy paramgy)
  {
    if (this.e == null)
    {
      if (paramgy == null)
        throw new NullPointerException();
      this.d = paramgy;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgy);
    }
  }

  private ca a(gz paramgz)
  {
    if (this.e == null)
    {
      this.d = paramgz.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.e.a(paramgz.i());
    }
  }

  private ca a(hc paramhc)
  {
    if (this.g == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      X();
      this.f.add(paramhc);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramhc);
    }
  }

  private ca a(hd paramhd)
  {
    if (this.g == null)
    {
      X();
      this.f.add(paramhd.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramhd.i());
    }
  }

  private ca a(Iterable paramIterable)
  {
    if (this.g == null)
    {
      X();
      dn.a(paramIterable, this.f);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramIterable);
    }
  }

  private List aa()
  {
    return ab().h();
  }

  private fc ab()
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

  private ca b(int paramInt, hc paramhc)
  {
    if (this.g == null)
    {
      if (paramhc == null)
        throw new NullPointerException();
      X();
      this.f.add(paramInt, paramhc);
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramhc);
    }
  }

  private ca b(int paramInt, hd paramhd)
  {
    if (this.g == null)
    {
      X();
      this.f.add(paramInt, paramhd.i());
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramhd.i());
    }
  }

  private ca b(ge paramge)
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

  private ca b(gy paramgy)
  {
    if (this.e == null)
      if (((0x2 & this.a) == 2) && (this.d != gy.h()))
      {
        this.d = gy.a(this.d).a(paramgy).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d = paramgy;
      break;
      this.e.b(paramgy);
    }
  }

  private ca c(int paramInt)
  {
    if (this.g == null)
    {
      X();
      this.f.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.g.d(paramInt);
    }
  }

  private ca d(ev paramev)
  {
    if ((paramev instanceof bz));
    for (ca localca = a((bz)paramev); ; localca = this)
    {
      return localca;
      super.a(paramev);
    }
  }

  private hd d(int paramInt)
  {
    return (hd)ab().b(paramInt);
  }

  private hd e(int paramInt)
  {
    return (hd)ab().c(paramInt, hc.h());
  }

  private static cj s()
  {
    return a.ap();
  }

  private void t()
  {
    if (bz.s())
    {
      N();
      W();
      ab();
    }
  }

  private static ca u()
  {
    return new ca();
  }

  private ca v()
  {
    super.F();
    if (this.c == null)
    {
      this.b = ge.h();
      this.a = (0xFFFFFFFE & this.a);
      if (this.e != null)
        break label93;
      this.d = gy.h();
      label44: this.a = (0xFFFFFFFD & this.a);
      if (this.g != null)
        break label104;
      this.f = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
    }
    while (true)
    {
      return this;
      this.c.g();
      break;
      label93: this.e.g();
      break label44;
      label104: this.g.e();
    }
  }

  private ca w()
  {
    return new ca().a(A());
  }

  private static bz x()
  {
    return bz.h();
  }

  private bz y()
  {
    bz localbz = A();
    if (!localbz.a())
      throw b(localbz);
    return localbz;
  }

  private bz z()
  {
    bz localbz = A();
    if (!localbz.a())
      throw b(localbz).a();
    return localbz;
  }

  protected final dv B()
  {
    return a.aq();
  }

  public final cj C()
  {
    return bz.i();
  }

  public final ca a(bz parambz)
  {
    ca localca;
    if (parambz == bz.h())
    {
      localca = this;
      return localca;
    }
    ge localge;
    label72: label76: gy localgy;
    if (parambz.j())
    {
      localge = parambz.k();
      if (this.c != null)
        break label237;
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(localge).n();
        af_();
        this.a = (0x1 | this.a);
      }
    }
    else
    {
      if (parambz.m())
      {
        localgy = parambz.n();
        if (this.e != null)
          break label259;
        if (((0x2 & this.a) != 2) || (this.d == gy.h()))
          break label250;
        this.d = gy.a(this.d).a(localgy).D();
        label145: af_();
        label149: this.a = (0x2 | this.a);
      }
      if (this.g != null)
        break label293;
      if (!bz.a(parambz).isEmpty())
      {
        if (!this.f.isEmpty())
          break label272;
        this.f = bz.a(parambz);
        this.a = (0xFFFFFFFB & this.a);
        label209: af_();
      }
    }
    while (true)
    {
      e(parambz.b_());
      localca = this;
      break;
      this.b = localge;
      break label72;
      label237: this.c.b(localge);
      break label76;
      label250: this.d = localgy;
      break label145;
      label259: this.e.b(localgy);
      break label149;
      label272: X();
      this.f.addAll(bz.a(parambz));
      break label209;
      label293: if (!bz.a(parambz).isEmpty())
      {
        if (this.g.d())
        {
          this.g.b();
          this.g = null;
          this.f = bz.a(parambz);
          this.a = (0xFFFFFFFB & this.a);
          if (bz.t());
          for (fc localfc = ab(); ; localfc = null)
          {
            this.g = localfc;
            break;
          }
        }
        this.g.a(bz.a(parambz));
      }
    }
  }

  public final hc a(int paramInt)
  {
    if (this.g == null);
    for (hc localhc = (hc)this.f.get(paramInt); ; localhc = (hc)this.g.a(paramInt))
      return localhc;
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

  public final hg b(int paramInt)
  {
    if (this.g == null);
    for (hg localhg = (hg)this.f.get(paramInt); ; localhg = (hg)this.g.c(paramInt))
      return localhg;
  }

  public final ca e(m paramm, df paramdf)
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
        for (ca localca = this; ; localca = this)
        {
          return localca;
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
        gz localgz = gy.N();
        if (m())
          localgz.a(n());
        paramm.a(localgz, paramdf);
        gy localgy = localgz.D();
        if (this.e == null)
        {
          if (localgy == null)
            throw new NullPointerException();
          this.d = localgy;
          af_();
        }
        while (true)
        {
          this.a = (0x2 | this.a);
          break;
          this.e.a(localgy);
        }
      case 26:
        hd localhd = hc.O();
        paramm.a(localhd, paramdf);
        hc localhc = localhd.D();
        if (this.g == null)
        {
          if (localhc == null)
            throw new NullPointerException();
          X();
          this.f.add(localhc);
          af_();
        }
        else
        {
          this.g.a(localhc);
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

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy n()
  {
    if (this.e == null);
    for (gy localgy = this.d; ; localgy = (gy)this.e.c())
      return localgy;
  }

  public final ha o()
  {
    if (this.e != null);
    for (Object localObject = (ha)this.e.f(); ; localObject = this.d)
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
    for (int i = this.f.size(); ; i = this.g.c())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ca
 * JD-Core Version:    0.6.2
 */