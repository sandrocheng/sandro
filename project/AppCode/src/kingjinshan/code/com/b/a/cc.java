package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class cc extends dn
  implements cg
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;
  private Object d = "";
  private long e;
  private long f;
  private double g;
  private i h = i.a;
  private Object i = "";

  private cc()
  {
    A();
  }

  private cc(dp paramdp, byte paramByte)
  {
    super(paramdp);
    A();
  }

  private void A()
  {
    if (dk.j)
      aa();
  }

  private static cc D()
  {
    return new cc();
  }

  private cc E()
  {
    super.F();
    if (this.c == null)
    {
      this.b = Collections.emptyList();
      this.a = (0xFFFFFFFE & this.a);
    }
    while (true)
    {
      this.d = "";
      this.a = (0xFFFFFFFD & this.a);
      this.e = 0L;
      this.a = (0xFFFFFFFB & this.a);
      this.f = 0L;
      this.a = (0xFFFFFFF7 & this.a);
      this.g = 0.0D;
      this.a = (0xFFFFFFEF & this.a);
      this.h = i.a;
      this.a = (0xFFFFFFDF & this.a);
      this.i = "";
      this.a = (0xFFFFFFBF & this.a);
      return this;
      this.c.e();
    }
  }

  private cc N()
  {
    return new cc().a(x());
  }

  private static cb U()
  {
    return cb.e();
  }

  private cb V()
  {
    cb localcb = x();
    if (!localcb.a())
      throw b(localcb).a();
    return localcb;
  }

  private void W()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private cc X()
  {
    if (this.c == null)
    {
      this.b = Collections.emptyList();
      this.a = (0xFFFFFFFE & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.c.e();
    }
  }

  private ce Y()
  {
    return (ce)aa().b(cd.e());
  }

  private List Z()
  {
    return aa().h();
  }

  private cc a(double paramDouble)
  {
    this.a = (0x10 | this.a);
    this.g = paramDouble;
    af_();
    return this;
  }

  private cc a(int paramInt, cd paramcd)
  {
    if (this.c == null)
    {
      if (paramcd == null)
        throw new NullPointerException();
      W();
      this.b.set(paramInt, paramcd);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramcd);
    }
  }

  private cc a(int paramInt, ce paramce)
  {
    if (this.c == null)
    {
      W();
      this.b.set(paramInt, paramce.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramce.l());
    }
  }

  private cc a(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private cc a(cd paramcd)
  {
    if (this.c == null)
    {
      if (paramcd == null)
        throw new NullPointerException();
      W();
      this.b.add(paramcd);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramcd);
    }
  }

  private cc a(ce paramce)
  {
    if (this.c == null)
    {
      W();
      this.b.add(paramce.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramce.l());
    }
  }

  private cc a(Iterable paramIterable)
  {
    if (this.c == null)
    {
      W();
      dn.a(paramIterable, this.b);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramIterable);
    }
  }

  private cc a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private fc aa()
  {
    List localList;
    if (this.c == null)
    {
      localList = this.b;
      if ((0x1 & this.a) != 1)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.c = new fc(localList, bool, ae_(), ad_());
      this.b = null;
      return this.c;
    }
  }

  private cc ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = cb.e().l();
    af_();
    return this;
  }

  private cc ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private cc ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private cc ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.g = 0.0D;
    af_();
    return this;
  }

  private cc af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.h = cb.e().t();
    af_();
    return this;
  }

  private cc ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.i = cb.e().v();
    af_();
    return this;
  }

  private cc b(int paramInt, cd paramcd)
  {
    if (this.c == null)
    {
      if (paramcd == null)
        throw new NullPointerException();
      W();
      this.b.add(paramInt, paramcd);
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramcd);
    }
  }

  private cc b(int paramInt, ce paramce)
  {
    if (this.c == null)
    {
      W();
      this.b.add(paramInt, paramce.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramce.l());
    }
  }

  private cc b(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private cc b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.i = paramString;
    af_();
    return this;
  }

  private cc c(int paramInt)
  {
    if (this.c == null)
    {
      W();
      this.b.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.c.d(paramInt);
    }
  }

  private cc d(ev paramev)
  {
    if ((paramev instanceof cb));
    for (cc localcc = a((cb)paramev); ; localcc = this)
    {
      return localcc;
      super.a(paramev);
    }
  }

  private ce d(int paramInt)
  {
    return (ce)aa().b(paramInt);
  }

  private ce e(int paramInt)
  {
    return (ce)aa().c(paramInt, cd.e());
  }

  private void e(i parami)
  {
    this.a = (0x2 | this.a);
    this.d = parami;
    af_();
  }

  private cc f(i parami)
  {
    if (parami == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.h = parami;
    af_();
    return this;
  }

  private void g(i parami)
  {
    this.a = (0x40 | this.a);
    this.i = parami;
    af_();
  }

  private static cj z()
  {
    return p.H();
  }

  protected final dv B()
  {
    return p.I();
  }

  public final cj C()
  {
    return cb.f();
  }

  public final List F_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }

  public final cc a(cb paramcb)
  {
    if (paramcb == cb.e());
    for (cc localcc = this; ; localcc = this)
    {
      return localcc;
      if (this.c == null)
        if (!cb.a(paramcb).isEmpty())
        {
          if (!this.b.isEmpty())
            break label93;
          this.b = cb.a(paramcb);
          this.a = (0xFFFFFFFE & this.a);
          af_();
        }
      while (true)
        if (paramcb.k())
        {
          String str2 = paramcb.l();
          if (str2 == null)
          {
            throw new NullPointerException();
            label93: W();
            this.b.addAll(cb.a(paramcb));
            break;
            if (cb.a(paramcb).isEmpty())
              continue;
            if (this.c.d())
            {
              this.c.b();
              this.c = null;
              this.b = cb.a(paramcb);
              this.a = (0xFFFFFFFE & this.a);
              if (dk.j);
              for (fc localfc = aa(); ; localfc = null)
              {
                this.c = localfc;
                break;
              }
            }
            this.c.a(cb.a(paramcb));
            continue;
          }
          this.a = (0x2 | this.a);
          this.d = str2;
          af_();
        }
      if (paramcb.m())
      {
        long l2 = paramcb.n();
        this.a = (0x4 | this.a);
        this.e = l2;
        af_();
      }
      if (paramcb.o())
      {
        long l1 = paramcb.p();
        this.a = (0x8 | this.a);
        this.f = l1;
        af_();
      }
      if (paramcb.q())
      {
        double d1 = paramcb.r();
        this.a = (0x10 | this.a);
        this.g = d1;
        af_();
      }
      if (paramcb.s())
      {
        i locali = paramcb.t();
        if (locali == null)
          throw new NullPointerException();
        this.a = (0x20 | this.a);
        this.h = locali;
        af_();
      }
      if (paramcb.u())
      {
        String str1 = paramcb.v();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x40 | this.a);
        this.i = str1;
        af_();
      }
      e(paramcb.b_());
    }
  }

  public final cd a(int paramInt)
  {
    if (this.c == null);
    for (cd localcd = (cd)this.b.get(paramInt); ; localcd = (cd)this.c.a(paramInt))
      return localcd;
  }

  public final boolean a()
  {
    int j = 0;
    if (j < j())
      if (a(j).a());
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      j++;
      break;
    }
  }

  public final cf b(int paramInt)
  {
    if (this.c == null);
    for (cf localcf = (cf)this.b.get(paramInt); ; localcf = (cf)this.c.c(paramInt))
      return localcf;
  }

  public final cc e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
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
        for (cc localcc = this; ; localcc = this)
        {
          return localcc;
          d(localgi.b());
          af_();
        }
      case 18:
        ce localce = cd.l();
        paramm.a(localce, paramdf);
        cd localcd = localce.m();
        if (this.c == null)
        {
          if (localcd == null)
            throw new NullPointerException();
          W();
          this.b.add(localcd);
          af_();
        }
        else
        {
          this.c.a(localcd);
        }
        break;
      case 26:
        this.a = (0x2 | this.a);
        this.d = paramm.k();
        break;
      case 32:
        this.a = (0x4 | this.a);
        this.e = paramm.d();
        break;
      case 40:
        this.a = (0x8 | this.a);
        this.f = paramm.e();
        break;
      case 49:
        this.a = (0x10 | this.a);
        this.g = paramm.b();
        break;
      case 58:
        this.a = (0x20 | this.a);
        this.h = paramm.k();
        break;
      case 66:
        this.a = (0x40 | this.a);
        this.i = paramm.k();
      }
    }
  }

  public final List i()
  {
    if (this.c != null);
    for (List localList = this.c.i(); ; localList = Collections.unmodifiableList(this.b))
      return localList;
  }

  public final int j()
  {
    if (this.c == null);
    for (int j = this.b.size(); ; j = this.c.c())
      return j;
  }

  public final boolean k()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String l()
  {
    Object localObject = this.d;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.d = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean m()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.e;
  }

  public final boolean o()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.f;
  }

  public final boolean q()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final double r()
  {
    return this.g;
  }

  public final boolean s()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final i t()
  {
    return this.h;
  }

  public final boolean u()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String v()
  {
    Object localObject = this.i;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.i = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final cb w()
  {
    cb localcb = x();
    if (!localcb.a())
      throw b(localcb);
    return localcb;
  }

  public final cb x()
  {
    cb localcb = new cb(this);
    int j = this.a;
    int m;
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      cb.a(localcb, this.b);
      int k = j & 0x2;
      m = 0;
      if (k == 2)
        m = 1;
      cb.a(localcb, this.d);
      if ((j & 0x4) == 4)
        m |= 2;
      cb.a(localcb, this.e);
      if ((j & 0x8) == 8)
        m |= 4;
      cb.b(localcb, this.f);
      if ((j & 0x10) == 16)
        m |= 8;
      cb.a(localcb, this.g);
      if ((j & 0x20) == 32)
        m |= 16;
      cb.a(localcb, this.h);
      if ((j & 0x40) != 64)
        break label237;
    }
    label237: for (int n = m | 0x20; ; n = m)
    {
      cb.b(localcb, this.i);
      cb.a(localcb, n);
      ab_();
      return localcb;
      cb.a(localcb, this.c.f());
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cc
 * JD-Core Version:    0.6.2
 */