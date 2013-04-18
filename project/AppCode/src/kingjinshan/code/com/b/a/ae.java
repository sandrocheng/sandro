package com.b.a;

public final class ae extends dn
  implements af
{
  private int a;
  private Object b = "";
  private int c;
  private ag d = ag.e();
  private fp e;

  private ae()
  {
    s();
  }

  private ae(dp paramdp, byte paramByte)
  {
    super(paramdp);
    s();
  }

  private ae A()
  {
    if (this.e == null)
    {
      this.d = ag.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.e.g();
    }
  }

  private ah D()
  {
    this.a = (0x4 | this.a);
    af_();
    return (ah)E().e();
  }

  private fp E()
  {
    if (this.e == null)
    {
      this.e = new fp(this.d, ae_(), ad_());
      this.d = null;
    }
    return this.e;
  }

  private ae a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private ae a(ag paramag)
  {
    if (this.e == null)
    {
      if (paramag == null)
        throw new NullPointerException();
      this.d = paramag;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.e.a(paramag);
    }
  }

  private ae a(ah paramah)
  {
    if (this.e == null)
    {
      this.d = paramah.k();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.e.a(paramah.k());
    }
  }

  private ae a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ae b(ag paramag)
  {
    if (this.e == null)
      if (((0x4 & this.a) == 4) && (this.d != ag.e()))
      {
        this.d = ag.a(this.d).a(paramag).l();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.d = paramag;
      break;
      this.e.b(paramag);
    }
  }

  private ae d(ev paramev)
  {
    if ((paramev instanceof ad));
    for (ae localae = a((ad)paramev); ; localae = this)
    {
      return localae;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj r()
  {
    return p.n();
  }

  private void s()
  {
    if (dk.j)
      E();
  }

  private static ae t()
  {
    return new ae();
  }

  private ae u()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    if (this.e == null)
      this.d = ag.e();
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.e.g();
    }
  }

  private ae v()
  {
    return new ae().a(p());
  }

  private static ad w()
  {
    return ad.e();
  }

  private ad x()
  {
    ad localad = p();
    if (!localad.a())
      throw b(localad).a();
    return localad;
  }

  private ae y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ad.e().i();
    af_();
    return this;
  }

  private ae z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.o();
  }

  public final cj C()
  {
    return ad.f();
  }

  public final ae a(ad paramad)
  {
    ae localae;
    if (paramad == ad.e())
    {
      localae = this;
      return localae;
    }
    if (paramad.h_())
    {
      String str = paramad.i();
      if (str == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str;
      af_();
    }
    if (paramad.j())
    {
      int i = paramad.k();
      this.a = (0x2 | this.a);
      this.c = i;
      af_();
    }
    ag localag;
    if (paramad.l())
    {
      localag = paramad.m();
      if (this.e != null)
        break label186;
      if (((0x4 & this.a) != 4) || (this.d == ag.e()))
        break label177;
      this.d = ag.a(this.d).a(localag).l();
      label149: af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(paramad.b_());
      localae = this;
      break;
      label177: this.d = localag;
      break label149;
      label186: this.e.b(localag);
    }
  }

  public final boolean a()
  {
    if ((l()) && (!m().a()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final ae e(m paramm, df paramdf)
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
        for (ae localae = this; ; localae = this)
        {
          return localae;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.f();
      case 26:
      }
    }
    ah localah = ag.k();
    if (l())
      localah.a(m());
    paramm.a(localah, paramdf);
    ag localag = localah.l();
    if (this.e == null)
    {
      if (localag == null)
        throw new NullPointerException();
      this.d = localag;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.e.a(localag);
    }
  }

  public final boolean h_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String i()
  {
    Object localObject = this.b;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.b = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
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

  public final boolean l()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ag m()
  {
    if (this.e == null);
    for (ag localag = this.d; ; localag = (ag)this.e.c())
      return localag;
  }

  public final ai n()
  {
    if (this.e != null);
    for (Object localObject = (ai)this.e.f(); ; localObject = this.d)
      return localObject;
  }

  public final ad o()
  {
    ad localad = p();
    if (!localad.a())
      throw b(localad);
    return localad;
  }

  public final ad p()
  {
    ad localad = new ad(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ad.a(localad, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    ad.a(localad, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    if (this.e == null)
      ad.a(localad, this.d);
    while (true)
    {
      ad.b(localad, k);
      ab_();
      return localad;
      ad.a(localad, (ag)this.e.d());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ae
 * JD-Core Version:    0.6.2
 */