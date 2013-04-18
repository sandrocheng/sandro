package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bw extends dn
  implements ca
{
  private int a;
  private List b = Collections.emptyList();
  private fc c;

  private bw()
  {
    o();
  }

  private bw(dp paramdp, byte paramByte)
  {
    super(paramdp);
    o();
  }

  private bw a(int paramInt, bx parambx)
  {
    if (this.c == null)
    {
      if (parambx == null)
        throw new NullPointerException();
      u();
      this.b.set(paramInt, parambx);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, parambx);
    }
  }

  private bw a(int paramInt, by paramby)
  {
    if (this.c == null)
    {
      u();
      this.b.set(paramInt, paramby.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramInt, paramby.l());
    }
  }

  private bw a(bx parambx)
  {
    if (this.c == null)
    {
      if (parambx == null)
        throw new NullPointerException();
      u();
      this.b.add(parambx);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(parambx);
    }
  }

  private bw a(by paramby)
  {
    if (this.c == null)
    {
      u();
      this.b.add(paramby.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramby.l());
    }
  }

  private bw a(Iterable paramIterable)
  {
    if (this.c == null)
    {
      u();
      dn.a(paramIterable, this.b);
      af_();
    }
    while (true)
    {
      return this;
      this.c.a(paramIterable);
    }
  }

  private bw b(int paramInt, bx parambx)
  {
    if (this.c == null)
    {
      if (parambx == null)
        throw new NullPointerException();
      u();
      this.b.add(paramInt, parambx);
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, parambx);
    }
  }

  private bw b(int paramInt, by paramby)
  {
    if (this.c == null)
    {
      u();
      this.b.add(paramInt, paramby.l());
      af_();
    }
    while (true)
    {
      return this;
      this.c.b(paramInt, paramby.l());
    }
  }

  private bw c(int paramInt)
  {
    if (this.c == null)
    {
      u();
      this.b.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.c.d(paramInt);
    }
  }

  private bw d(ev paramev)
  {
    if ((paramev instanceof bv));
    for (bw localbw = a((bv)paramev); ; localbw = this)
    {
      return localbw;
      super.a(paramev);
    }
  }

  private by d(int paramInt)
  {
    return (by)y().b(paramInt);
  }

  private by e(int paramInt)
  {
    return (by)y().c(paramInt, bx.e());
  }

  private static cj n()
  {
    return p.L();
  }

  private void o()
  {
    if (dk.j)
      y();
  }

  private static bw p()
  {
    return new bw();
  }

  private bw q()
  {
    super.F();
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

  private bw r()
  {
    return new bw().a(l());
  }

  private static bv s()
  {
    return bv.e();
  }

  private bv t()
  {
    bv localbv = l();
    if (!localbv.a())
      throw b(localbv).a();
    return localbv;
  }

  private void u()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private bw v()
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

  private by w()
  {
    return (by)y().b(bx.e());
  }

  private List x()
  {
    return y().h();
  }

  private fc y()
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

  protected final dv B()
  {
    return p.M();
  }

  public final cj C()
  {
    return bv.f();
  }

  public final List D_()
  {
    if (this.c == null);
    for (List localList = Collections.unmodifiableList(this.b); ; localList = this.c.g())
      return localList;
  }

  public final bw a(bv parambv)
  {
    bw localbw;
    if (parambv == bv.e())
    {
      localbw = this;
      return localbw;
    }
    if (this.c == null)
      if (!bv.b(parambv).isEmpty())
      {
        if (!this.b.isEmpty())
          break label82;
        this.b = bv.b(parambv);
        this.a = (0xFFFFFFFE & this.a);
        label63: af_();
      }
    while (true)
    {
      e(parambv.b_());
      localbw = this;
      break;
      label82: u();
      this.b.addAll(bv.b(parambv));
      break label63;
      if (!bv.b(parambv).isEmpty())
      {
        if (this.c.d())
        {
          this.c.b();
          this.c = null;
          this.b = bv.b(parambv);
          this.a = (0xFFFFFFFE & this.a);
          if (dk.j);
          for (fc localfc = y(); ; localfc = null)
          {
            this.c = localfc;
            break;
          }
        }
        this.c.a(bv.b(parambv));
      }
    }
  }

  public final bx a(int paramInt)
  {
    if (this.c == null);
    for (bx localbx = (bx)this.b.get(paramInt); ; localbx = (bx)this.c.a(paramInt))
      return localbx;
  }

  public final boolean a()
  {
    return true;
  }

  public final bz b(int paramInt)
  {
    if (this.c == null);
    for (bz localbz = (bz)this.b.get(paramInt); ; localbz = (bz)this.c.c(paramInt))
      return localbz;
  }

  public final bw e(m paramm, df paramdf)
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
        for (bw localbw = this; ; localbw = this)
        {
          return localbw;
          d(localgi.b());
          af_();
        }
      case 10:
        by localby = bx.l();
        paramm.a(localby, paramdf);
        bx localbx = localby.m();
        if (this.c == null)
        {
          if (localbx == null)
            throw new NullPointerException();
          u();
          this.b.add(localbx);
          af_();
        }
        else
        {
          this.c.a(localbx);
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

  public final bv k()
  {
    bv localbv = l();
    if (!localbv.a())
      throw b(localbv);
    return localbv;
  }

  public final bv l()
  {
    bv localbv = new bv(this);
    if (this.c == null)
    {
      if ((0x1 & this.a) == 1)
      {
        this.b = Collections.unmodifiableList(this.b);
        this.a = (0xFFFFFFFE & this.a);
      }
      bv.a(localbv, this.b);
    }
    while (true)
    {
      ab_();
      return localbv;
      bv.a(localbv, this.c.f());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bw
 * JD-Core Version:    0.6.2
 */