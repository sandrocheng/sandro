package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class by extends dn
  implements bz
{
  private int a;
  private List b = Collections.emptyList();
  private List c = Collections.emptyList();

  private by()
  {
  }

  private by(dp paramdp, byte paramByte)
  {
    super(paramdp);
  }

  private by a(int paramInt1, int paramInt2)
  {
    v();
    this.b.set(paramInt1, Integer.valueOf(paramInt2));
    af_();
    return this;
  }

  private by a(Iterable paramIterable)
  {
    v();
    dn.a(paramIterable, this.b);
    af_();
    return this;
  }

  private by b(int paramInt1, int paramInt2)
  {
    x();
    this.c.set(paramInt1, Integer.valueOf(paramInt2));
    af_();
    return this;
  }

  private by b(Iterable paramIterable)
  {
    x();
    dn.a(paramIterable, this.c);
    af_();
    return this;
  }

  private by c(int paramInt)
  {
    v();
    this.b.add(Integer.valueOf(paramInt));
    af_();
    return this;
  }

  private by d(int paramInt)
  {
    x();
    this.c.add(Integer.valueOf(paramInt));
    af_();
    return this;
  }

  private by d(ev paramev)
  {
    if ((paramev instanceof bx));
    for (by localby = a((bx)paramev); ; localby = this)
    {
      return localby;
      super.a(paramev);
    }
  }

  private static cj o()
  {
    return p.N();
  }

  private static void p()
  {
  }

  private static by q()
  {
    return new by();
  }

  private by r()
  {
    super.F();
    this.b = Collections.emptyList();
    this.a = (0xFFFFFFFE & this.a);
    this.c = Collections.emptyList();
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private by s()
  {
    return new by().a(m());
  }

  private static bx t()
  {
    return bx.e();
  }

  private bx u()
  {
    bx localbx = m();
    if (!localbx.a())
      throw b(localbx).a();
    return localbx;
  }

  private void v()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private by w()
  {
    this.b = Collections.emptyList();
    this.a = (0xFFFFFFFE & this.a);
    af_();
    return this;
  }

  private void x()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private by y()
  {
    this.c = Collections.emptyList();
    this.a = (0xFFFFFFFD & this.a);
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.O();
  }

  public final cj C()
  {
    return bx.f();
  }

  public final List E_()
  {
    return Collections.unmodifiableList(this.b);
  }

  public final int a(int paramInt)
  {
    return ((Integer)this.b.get(paramInt)).intValue();
  }

  public final by a(bx parambx)
  {
    by localby;
    if (parambx == bx.e())
    {
      localby = this;
      return localby;
    }
    if (!bx.a(parambx).isEmpty())
    {
      if (this.b.isEmpty())
      {
        this.b = bx.a(parambx);
        this.a = (0xFFFFFFFE & this.a);
        label54: af_();
      }
    }
    else if (!bx.b(parambx).isEmpty())
    {
      if (!this.c.isEmpty())
        break label140;
      this.c = bx.b(parambx);
      this.a = (0xFFFFFFFD & this.a);
    }
    while (true)
    {
      af_();
      e(parambx.b_());
      localby = this;
      break;
      v();
      this.b.addAll(bx.a(parambx));
      break label54;
      label140: x();
      this.c.addAll(bx.b(parambx));
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final int b(int paramInt)
  {
    return ((Integer)this.c.get(paramInt)).intValue();
  }

  public final by e(m paramm, df paramdf)
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
        for (by localby = this; ; localby = this)
        {
          return localby;
          d(localgi.b());
          af_();
        }
      case 8:
        v();
        this.b.add(Integer.valueOf(paramm.f()));
        break;
      case 10:
        int m = paramm.c(paramm.r());
        while (paramm.v() > 0)
        {
          int n = paramm.f();
          v();
          this.b.add(Integer.valueOf(n));
          af_();
        }
        paramm.d(m);
        break;
      case 16:
        x();
        this.c.add(Integer.valueOf(paramm.f()));
        break;
      case 18:
        int j = paramm.c(paramm.r());
        while (paramm.v() > 0)
        {
          int k = paramm.f();
          x();
          this.c.add(Integer.valueOf(k));
          af_();
        }
        paramm.d(j);
      }
    }
  }

  public final int i()
  {
    return this.b.size();
  }

  public final List j()
  {
    return Collections.unmodifiableList(this.c);
  }

  public final int k()
  {
    return this.c.size();
  }

  public final bx l()
  {
    bx localbx = m();
    if (!localbx.a())
      throw b(localbx);
    return localbx;
  }

  public final bx m()
  {
    bx localbx = new bx(this);
    if ((0x1 & this.a) == 1)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    bx.a(localbx, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = Collections.unmodifiableList(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    bx.b(localbx, this.c);
    ab_();
    return localbx;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.by
 * JD-Core Version:    0.6.2
 */