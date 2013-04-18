package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ar extends dq
  implements au
{
  private int a;
  private as b = as.a;
  private boolean c;
  private boolean d;
  private Object e = "";
  private List f = Collections.emptyList();
  private fc g;

  private ar()
  {
    w();
  }

  private ar(dp paramdp, byte paramByte)
  {
    super(paramdp);
    w();
  }

  private static aq A()
  {
    return aq.e();
  }

  private aq D()
  {
    aq localaq = t();
    if (!localaq.a())
      throw b(localaq).a();
    return localaq;
  }

  private ar E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = as.a;
    af_();
    return this;
  }

  private ar U()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = false;
    af_();
    return this;
  }

  private ar V()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = false;
    af_();
    return this;
  }

  private ar W()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = aq.e().o();
    af_();
    return this;
  }

  private void X()
  {
    if ((0x10 & this.a) != 16)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x10 | this.a);
    }
  }

  private ar Y()
  {
    if (this.g == null)
    {
      this.f = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.g.e();
    }
  }

  private cc Z()
  {
    return (cc)ab().b(cb.e());
  }

  private ar a(int paramInt, cb paramcb)
  {
    if (this.g == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      X();
      this.f.set(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramcb);
    }
  }

  private ar a(int paramInt, cc paramcc)
  {
    if (this.g == null)
    {
      X();
      this.f.set(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramInt, paramcc.w());
    }
  }

  private ar a(as paramas)
  {
    if (paramas == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramas;
    af_();
    return this;
  }

  private ar a(cb paramcb)
  {
    if (this.g == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      X();
      this.f.add(paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramcb);
    }
  }

  private ar a(cc paramcc)
  {
    if (this.g == null)
    {
      X();
      this.f.add(paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramcc.w());
    }
  }

  private ar a(Iterable paramIterable)
  {
    if (this.g == null)
    {
      X();
      dq.a(paramIterable, this.f);
      af_();
    }
    while (true)
    {
      return this;
      this.g.a(paramIterable);
    }
  }

  private ar a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  private ar a(boolean paramBoolean)
  {
    this.a = (0x2 | this.a);
    this.c = paramBoolean;
    af_();
    return this;
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
      if ((0x10 & this.a) != 16)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.g = new fc(localList, bool, ae_(), ad_());
      this.f = null;
      return this.g;
    }
  }

  private ar b(int paramInt, cb paramcb)
  {
    if (this.g == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      X();
      this.f.add(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramcb);
    }
  }

  private ar b(int paramInt, cc paramcc)
  {
    if (this.g == null)
    {
      X();
      this.f.add(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.g.b(paramInt, paramcc.w());
    }
  }

  private ar b(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    af_();
    return this;
  }

  private ar c(int paramInt)
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

  private ar d(ev paramev)
  {
    if ((paramev instanceof aq));
    for (ar localar = a((aq)paramev); ; localar = this)
    {
      return localar;
      super.a(paramev);
    }
  }

  private cc d(int paramInt)
  {
    return (cc)ab().b(paramInt);
  }

  private cc e(int paramInt)
  {
    return (cc)ab().c(paramInt, cb.e());
  }

  private void e(i parami)
  {
    this.a = (0x8 | this.a);
    this.e = parami;
    af_();
  }

  private static cj v()
  {
    return p.x();
  }

  private void w()
  {
    if (dk.j)
      ab();
  }

  private static ar x()
  {
    return new ar();
  }

  private ar y()
  {
    super.n();
    this.b = as.a;
    this.a = (0xFFFFFFFE & this.a);
    this.c = false;
    this.a = (0xFFFFFFFD & this.a);
    this.d = false;
    this.a = (0xFFFFFFFB & this.a);
    this.e = "";
    this.a = (0xFFFFFFF7 & this.a);
    if (this.g == null)
    {
      this.f = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
    }
    while (true)
    {
      return this;
      this.g.e();
    }
  }

  private ar z()
  {
    return new ar().a(t());
  }

  protected final dv B()
  {
    return p.y();
  }

  public final cj C()
  {
    return aq.f();
  }

  public final ar a(aq paramaq)
  {
    ar localar;
    if (paramaq == aq.e())
    {
      localar = this;
      return localar;
    }
    if (paramaq.k_())
    {
      as localas = paramaq.i();
      if (localas == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = localas;
      af_();
    }
    if (paramaq.j())
    {
      boolean bool2 = paramaq.k();
      this.a = (0x2 | this.a);
      this.c = bool2;
      af_();
    }
    if (paramaq.l())
    {
      boolean bool1 = paramaq.l_();
      this.a = (0x4 | this.a);
      this.d = bool1;
      af_();
    }
    if (paramaq.m_())
    {
      String str = paramaq.o();
      if (str == null)
        throw new NullPointerException();
      this.a = (0x8 | this.a);
      this.e = str;
      af_();
    }
    if (this.g == null)
      if (!aq.b(paramaq).isEmpty())
      {
        if (!this.f.isEmpty())
          break label246;
        this.f = aq.b(paramaq);
        this.a = (0xFFFFFFEF & this.a);
        label222: af_();
      }
    while (true)
    {
      a(paramaq);
      e(paramaq.b_());
      localar = this;
      break;
      label246: X();
      this.f.addAll(aq.b(paramaq));
      break label222;
      if (!aq.b(paramaq).isEmpty())
      {
        if (this.g.d())
        {
          this.g.b();
          this.g = null;
          this.f = aq.b(paramaq);
          this.a = (0xFFFFFFEF & this.a);
          if (dk.j);
          for (fc localfc = ab(); ; localfc = null)
          {
            this.g = localfc;
            break;
          }
        }
        this.g.a(aq.b(paramaq));
      }
    }
  }

  public final cb a(int paramInt)
  {
    if (this.g == null);
    for (cb localcb = (cb)this.f.get(paramInt); ; localcb = (cb)this.g.a(paramInt))
      return localcb;
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < r())
      if (!a(i).a())
        bool = false;
    while (true)
    {
      return bool;
      i++;
      break;
      if (!N())
        bool = false;
      else
        bool = true;
    }
  }

  public final cg b(int paramInt)
  {
    if (this.g == null);
    for (cg localcg = (cg)this.f.get(paramInt); ; localcg = (cg)this.g.c(paramInt))
      return localcg;
  }

  public final ar e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
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
        for (ar localar = this; ; localar = this)
        {
          return localar;
          d(localgi.b());
          af_();
        }
      case 8:
        int j = paramm.m();
        as localas = as.a(j);
        if (localas == null)
        {
          localgi.a(1, j);
        }
        else
        {
          this.a = (0x1 | this.a);
          this.b = localas;
        }
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.i();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.i();
        break;
      case 74:
        this.a = (0x8 | this.a);
        this.e = paramm.k();
        break;
      case 7994:
        cc localcc = cb.w();
        paramm.a(localcc, paramdf);
        cb localcb = localcc.x();
        if (this.g == null)
        {
          if (localcb == null)
            throw new NullPointerException();
          X();
          this.f.add(localcb);
          af_();
        }
        else
        {
          this.g.a(localcb);
        }
        break;
      }
    }
  }

  public final as i()
  {
    return this.b;
  }

  public final boolean j()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean k()
  {
    return this.c;
  }

  public final boolean k_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean l()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean l_()
  {
    return this.d;
  }

  public final boolean m_()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject = this.e;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.e = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
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

  public final aq s()
  {
    aq localaq = t();
    if (!localaq.a())
      throw b(localaq);
    return localaq;
  }

  public final aq t()
  {
    aq localaq = new aq(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    aq.a(localaq, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    aq.a(localaq, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    aq.b(localaq, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x8; ; m = k)
    {
      aq.a(localaq, this.e);
      if (this.g == null)
      {
        if ((0x10 & this.a) == 16)
        {
          this.f = Collections.unmodifiableList(this.f);
          this.a = (0xFFFFFFEF & this.a);
        }
        aq.a(localaq, this.f);
      }
      while (true)
      {
        aq.a(localaq, m);
        ab_();
        return localaq;
        aq.a(localaq, this.g.f());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ar
 * JD-Core Version:    0.6.2
 */