package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bn extends dq
  implements bo
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private bn()
  {
    q();
  }

  private bn(dp paramdp, byte paramByte)
  {
    super(paramdp);
    q();
  }

  private fc A()
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

  private bn a(int paramInt, cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.set(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramcb);
    }
  }

  private bn a(int paramInt, cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.set(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramcc.w());
    }
  }

  private bn a(cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.add(paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramcb);
    }
  }

  private bn a(cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.add(paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramcc.w());
    }
  }

  private bn a(Iterable paramIterable)
  {
    if (this.c == null)
    {
      w();
      dq.a(paramIterable, this.b);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramIterable);
    }
  }

  private bn b(int paramInt, cb paramcb)
  {
    if (this.c == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      w();
      this.b.add(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramcb);
    }
  }

  private bn b(int paramInt, cc paramcc)
  {
    if (this.c == null)
    {
      w();
      this.b.add(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramcc.w());
    }
  }

  private bn c(int paramInt)
  {
    if (this.c == null)
    {
      w();
      this.b.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.c.d(paramInt);
    }
  }

  private bn d(ev paramev)
  {
    if ((paramev instanceof bm));
    for (bn localbn = a((bm)paramev); ; localbn = this)
    {
      return localbn;
      super.a(paramev);
    }
  }

  private cc d(int paramInt)
  {
    return (cc)A().b(paramInt);
  }

  private cc e(int paramInt)
  {
    return (cc)A().c(paramInt, cb.e());
  }

  private static cj p()
  {
    return p.F();
  }

  private void q()
  {
    if (dk.j)
      A();
  }

  private static bn r()
  {
    return new bn();
  }

  private bn s()
  {
    super.n();
    if (this.c == null)
    {
      this.b = Collections.emptyList();
      this.a = (0xFFFFFFFE & this.a);
    }
    while (true)
    {
      return this;
      this.c.e();
    }
  }

  private bn t()
  {
    return new bn().a(l());
  }

  private static bm u()
  {
    return bm.e();
  }

  private bm v()
  {
    bm localbm = l();
    if (!localbm.a())
      throw b(localbm).a();
    return localbm;
  }

  private void w()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private bn x()
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

  private cc y()
  {
    return (cc)A().b(cb.e());
  }

  private List z()
  {
    return A().h();
  }

  public final List A_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }

  protected final dv B()
  {
    return p.G();
  }

  public final cj C()
  {
    return bm.f();
  }

  public final bn a(bm parambm)
  {
    bn localbn;
    if (parambm == bm.e())
    {
      localbn = this;
      return localbn;
    }
    if (this.c == null)
      if (!bm.b(parambm).isEmpty())
      {
        if (!this.b.isEmpty())
          break label87;
        this.b = bm.b(parambm);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      a(parambm);
      e(parambm.b_());
      localbn = this;
      break;
      label87: w();
      this.b.addAll(bm.b(parambm));
      break label63;
      if (!bm.b(parambm).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = bm.b(parambm);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = A(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(bm.b(parambm));
      }
    }
  }

  public final cb a(int paramInt)
  {
    if (this.c == null);
    for (cb localcb = (cb)this.b.get(paramInt); ; localcb = (cb)this.c.a(paramInt))
      return localcb;
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < j())
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
    if (this.c == null);
    for (cg localcg = (cg)this.b.get(paramInt); ; localcg = (cg)this.c.c(paramInt))
      return localcg;
  }

  public final bn e(m paramm, df paramdf)
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
        for (bn localbn = this; ; localbn = this)
        {
          return localbn;
          d(localgi.b());
          af_();
        }
      case 7994:
        cc localcc = cb.w();
        paramm.a(localcc, paramdf);
        cb localcb = localcc.x();
        if (this.c == null)
        {
          if (localcb == null)
            throw new NullPointerException();
          w();
          this.b.add(localcb);
          af_();
        }
        else
        {
          this.c.a(localcb);
        }
        break;
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
    for (int i = this.b.size(); ; i = this.c.c())
      return i;
  }

  public final bm k()
  {
    bm localbm = l();
    if (!localbm.a())
      throw b(localbm);
    return localbm;
  }

  public final bm l()
  {
    bm localbm = new bm(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      bm.a(localbm, this.b);
    }
    while (true)
    {
      ab_();
      return localbm;
      bm.a(localbm, this.c.f());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bn
 * JD-Core Version:    0.6.2
 */