package com.b.a;

public final class bk extends dn
  implements bl
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private bm e = bm.e();
  private fp f;

  private bk()
  {
    u();
  }

  private bk(dp paramdp, byte paramByte)
  {
    super(paramdp);
    u();
  }

  private bk A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bj.e().i();
    af_();
    return this;
  }

  private bk D()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = bj.e().k();
    af_();
    return this;
  }

  private bk E()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = bj.e().m();
    af_();
    return this;
  }

  private bk N()
  {
    if (this.f == null)
    {
      this.e = bm.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.f.g();
    }
  }

  private bn U()
  {
    this.a = (0x8 | this.a);
    af_();
    return (bn)V().e();
  }

  private fp V()
  {
    if (this.f == null)
    {
      this.f = new fp(this.e, ae_(), ad_());
      this.e = null;
    }
    return this.f;
  }

  private bk a(bm parambm)
  {
    if (this.f == null)
    {
      if (parambm == null)
        throw new NullPointerException();
      this.e = parambm;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.f.a(parambm);
    }
  }

  private bk a(bn parambn)
  {
    if (this.f == null)
    {
      this.e = parambn.k();
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.f.a(parambn.k());
    }
  }

  private bk a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bk b(bm parambm)
  {
    if (this.f == null)
      if (((0x8 & this.a) == 8) && (this.e != bm.e()))
      {
        this.e = bm.a(this.e).a(parambm).l();
        af_();
      }
    while (true)
    {
      this.a = (0x8 | this.a);
      return this;
      this.e = parambm;
      break;
      this.f.b(parambm);
    }
  }

  private bk b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private bk c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private bk d(ev paramev)
  {
    if ((paramev instanceof bj));
    for (bk localbk = a((bj)paramev); ; localbk = this)
    {
      return localbk;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private static cj t()
  {
    return p.r();
  }

  private void u()
  {
    if (dk.j)
      V();
  }

  private static bk v()
  {
    return new bk();
  }

  private bk w()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    if (this.f == null)
      this.e = bm.e();
    while (true)
    {
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.f.g();
    }
  }

  private bk x()
  {
    return new bk().a(r());
  }

  private static bj y()
  {
    return bj.e();
  }

  private bj z()
  {
    bj localbj = r();
    if (!localbj.a())
      throw b(localbj).a();
    return localbj;
  }

  protected final dv B()
  {
    return p.s();
  }

  public final cj C()
  {
    return bj.f();
  }

  public final bk a(bj parambj)
  {
    bk localbk;
    if (parambj == bj.e())
    {
      localbk = this;
      return localbk;
    }
    if (parambj.z_())
    {
      String str3 = parambj.i();
      if (str3 == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str3;
      af_();
    }
    if (parambj.j())
    {
      String str2 = parambj.k();
      if (str2 == null)
        throw new NullPointerException();
      this.a = (0x2 | this.a);
      this.c = str2;
      af_();
    }
    if (parambj.l())
    {
      String str1 = parambj.m();
      if (str1 == null)
        throw new NullPointerException();
      this.a = (0x4 | this.a);
      this.d = str1;
      af_();
    }
    bm localbm;
    if (parambj.n())
    {
      localbm = parambj.o();
      if (this.f != null)
        break label248;
      if (((0x8 & this.a) != 8) || (this.e == bm.e()))
        break label239;
      this.e = bm.a(this.e).a(localbm).l();
      label210: af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      e(parambj.b_());
      localbk = this;
      break;
      label239: this.e = localbm;
      break label210;
      label248: this.f.b(localbm);
    }
  }

  public final boolean a()
  {
    if ((n()) && (!o().a()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final bk e(m paramm, df paramdf)
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
        for (bk localbk = this; ; localbk = this)
        {
          return localbk;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
      case 34:
      }
    }
    bn localbn = bm.k();
    if (n())
      localbn.a(o());
    paramm.a(localbn, paramdf);
    bm localbm = localbn.l();
    if (this.f == null)
    {
      if (localbm == null)
        throw new NullPointerException();
      this.e = localbm;
      af_();
    }
    while (true)
    {
      this.a = (0x8 | this.a);
      break;
      this.f.a(localbm);
    }
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

  public final String k()
  {
    Object localObject = this.c;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.c = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean l()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
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

  public final boolean n()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bm o()
  {
    if (this.f == null);
    for (bm localbm = this.e; ; localbm = (bm)this.f.c())
      return localbm;
  }

  public final bo p()
  {
    if (this.f != null);
    for (Object localObject = (bo)this.f.f(); ; localObject = this.e)
      return localObject;
  }

  public final bj q()
  {
    bj localbj = r();
    if (!localbj.a())
      throw b(localbj);
    return localbj;
  }

  public final bj r()
  {
    bj localbj = new bj(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    bj.a(localbj, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    bj.b(localbj, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    bj.c(localbj, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    if (this.f == null)
      bj.a(localbj, this.e);
    while (true)
    {
      bj.a(localbj, k);
      ab_();
      return localbj;
      bj.a(localbj, (bm)this.f.d());
    }
  }

  public final boolean z_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bk
 * JD-Core Version:    0.6.2
 */