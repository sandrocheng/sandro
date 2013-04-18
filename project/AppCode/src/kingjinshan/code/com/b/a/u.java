package com.b.a;

public final class u extends dn
  implements v
{
  private int a;
  private int b;
  private int c;

  private u()
  {
  }

  private u(dp paramdp, byte paramByte)
  {
    super(paramdp);
  }

  private u a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    af_();
    return this;
  }

  private u b(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private u d(ev paramev)
  {
    if ((paramev instanceof t));
    for (u localu = a((t)paramev); ; localu = this)
    {
      return localu;
      super.a(paramev);
    }
  }

  private static cj o()
  {
    return p.h();
  }

  private static void p()
  {
  }

  private static u q()
  {
    return new u();
  }

  private u r()
  {
    super.F();
    this.b = 0;
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private u s()
  {
    return new u().a(m());
  }

  private static t t()
  {
    return t.e();
  }

  private t u()
  {
    t localt = m();
    if (!localt.a())
      throw b(localt).a();
    return localt;
  }

  private u v()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = 0;
    af_();
    return this;
  }

  private u w()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.i();
  }

  public final cj C()
  {
    return t.f();
  }

  public final u a(t paramt)
  {
    if (paramt == t.e());
    for (u localu = this; ; localu = this)
    {
      return localu;
      if (paramt.e_())
      {
        int j = paramt.i();
        this.a = (0x1 | this.a);
        this.b = j;
        af_();
      }
      if (paramt.j())
      {
        int i = paramt.k();
        this.a = (0x2 | this.a);
        this.c = i;
        af_();
      }
      e(paramt.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final u e(m paramm, df paramdf)
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
        for (u localu = this; ; localu = this)
        {
          return localu;
          d(localgi.b());
          af_();
        }
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramm.f();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.f();
      }
    }
  }

  public final boolean e_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int i()
  {
    return this.b;
  }

  public final boolean j()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.c;
  }

  public final t l()
  {
    t localt = m();
    if (!localt.a())
      throw b(localt);
    return localt;
  }

  public final t m()
  {
    t localt = new t(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    t.a(localt, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      t.b(localt, this.c);
      t.c(localt, m);
      ab_();
      return localt;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.u
 * JD-Core Version:    0.6.2
 */