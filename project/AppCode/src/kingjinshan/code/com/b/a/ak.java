package com.b.a;

public final class ak extends dn
  implements ap
{
  private int a;
  private Object b = "";
  private int c;
  private al d = al.a;
  private an e = an.a;
  private Object f = "";
  private Object g = "";
  private Object h = "";
  private aq i = aq.e();
  private fp j;

  private ak()
  {
    E();
  }

  private ak(dp paramdp, byte paramByte)
  {
    super(paramdp);
    E();
  }

  private static cj D()
  {
    return p.j();
  }

  private void E()
  {
    if (dk.j)
      ah();
  }

  private static ak N()
  {
    return new ak();
  }

  private ak U()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    this.d = al.a;
    this.a = (0xFFFFFFFB & this.a);
    this.e = an.a;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = "";
    this.a = (0xFFFFFFEF & this.a);
    this.g = "";
    this.a = (0xFFFFFFDF & this.a);
    this.h = "";
    this.a = (0xFFFFFFBF & this.a);
    if (this.j == null)
      this.i = aq.e();
    while (true)
    {
      this.a = (0xFFFFFF7F & this.a);
      return this;
      this.j.g();
    }
  }

  private ak V()
  {
    return new ak().a(z());
  }

  private static aj W()
  {
    return aj.e();
  }

  private aj X()
  {
    aj localaj = z();
    if (!localaj.a())
      throw b(localaj).a();
    return localaj;
  }

  private ak Y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = aj.e().i();
    af_();
    return this;
  }

  private ak Z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  private ak a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private ak a(al paramal)
  {
    if (paramal == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramal;
    af_();
    return this;
  }

  private ak a(an paraman)
  {
    if (paraman == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paraman;
    af_();
    return this;
  }

  private ak a(aq paramaq)
  {
    if (this.j == null)
    {
      if (paramaq == null)
        throw new NullPointerException();
      this.i = paramaq;
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.j.a(paramaq);
    }
  }

  private ak a(ar paramar)
  {
    if (this.j == null)
    {
      this.i = paramar.s();
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.j.a(paramar.s());
    }
  }

  private ak a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ak aa()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = al.a;
    af_();
    return this;
  }

  private ak ab()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = an.a;
    af_();
    return this;
  }

  private ak ac()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = aj.e().q();
    af_();
    return this;
  }

  private ak ad()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = aj.e().s();
    af_();
    return this;
  }

  private ak ae()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = aj.e().u();
    af_();
    return this;
  }

  private ak af()
  {
    if (this.j == null)
    {
      this.i = aq.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFF7F & this.a);
      return this;
      this.j.g();
    }
  }

  private ar ag()
  {
    this.a = (0x80 | this.a);
    af_();
    return (ar)ah().e();
  }

  private fp ah()
  {
    if (this.j == null)
    {
      this.j = new fp(this.i, ae_(), ad_());
      this.i = null;
    }
    return this.j;
  }

  private ak b(aq paramaq)
  {
    if (this.j == null)
      if (((0x80 & this.a) == 128) && (this.i != aq.e()))
      {
        this.i = aq.a(this.i).a(paramaq).t();
        af_();
      }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.i = paramaq;
      break;
      this.j.b(paramaq);
    }
  }

  private ak b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  private ak c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    af_();
    return this;
  }

  private ak d(ev paramev)
  {
    if ((paramev instanceof aj));
    for (ak localak = a((aj)paramev); ; localak = this)
    {
      return localak;
      super.a(paramev);
    }
  }

  private ak d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x10 | this.a);
    this.f = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x20 | this.a);
    this.g = parami;
    af_();
  }

  private void h(i parami)
  {
    this.a = (0x40 | this.a);
    this.h = parami;
    af_();
  }

  protected final dv B()
  {
    return p.k();
  }

  public final cj C()
  {
    return aj.f();
  }

  public final ak a(aj paramaj)
  {
    ak localak;
    if (paramaj == aj.e())
    {
      localak = this;
      return localak;
    }
    if (paramaj.j_())
    {
      String str4 = paramaj.i();
      if (str4 == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str4;
      af_();
    }
    if (paramaj.j())
    {
      int k = paramaj.k();
      this.a = (0x2 | this.a);
      this.c = k;
      af_();
    }
    if (paramaj.l())
    {
      al localal = paramaj.m();
      if (localal == null)
        throw new NullPointerException();
      this.a = (0x4 | this.a);
      this.d = localal;
      af_();
    }
    if (paramaj.n())
    {
      an localan = paramaj.o();
      if (localan == null)
        throw new NullPointerException();
      this.a = (0x8 | this.a);
      this.e = localan;
      af_();
    }
    if (paramaj.p())
    {
      String str3 = paramaj.q();
      if (str3 == null)
        throw new NullPointerException();
      this.a = (0x10 | this.a);
      this.f = str3;
      af_();
    }
    if (paramaj.r())
    {
      String str2 = paramaj.s();
      if (str2 == null)
        throw new NullPointerException();
      this.a = (0x20 | this.a);
      this.g = str2;
      af_();
    }
    if (paramaj.t())
    {
      String str1 = paramaj.u();
      if (str1 == null)
        throw new NullPointerException();
      this.a = (0x40 | this.a);
      this.h = str1;
      af_();
    }
    aq localaq;
    if (paramaj.v())
    {
      localaq = paramaj.w();
      if (this.j != null)
        break label426;
      if (((0x80 & this.a) != 128) || (this.i == aq.e()))
        break label417;
      this.i = aq.a(this.i).a(localaq).t();
      label387: af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      e(paramaj.b_());
      localak = this;
      break;
      label417: this.i = localaq;
      break label387;
      label426: this.j.b(localaq);
    }
  }

  public final boolean a()
  {
    if ((v()) && (!w().a()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final ak e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int k = paramm.a();
      switch (k)
      {
      default:
        if (!a(paramm, localgi, paramdf, k))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (ak localak = this; ; localak = this)
        {
          return localak;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        this.a = (0x20 | this.a);
        this.g = paramm.k();
        break;
      case 24:
        this.a = (0x2 | this.a);
        this.c = paramm.f();
        break;
      case 32:
        int n = paramm.m();
        al localal = al.a(n);
        if (localal == null)
        {
          localgi.a(4, n);
        }
        else
        {
          this.a = (0x4 | this.a);
          this.d = localal;
        }
        break;
      case 40:
        int m = paramm.m();
        an localan = an.a(m);
        if (localan == null)
        {
          localgi.a(5, m);
        }
        else
        {
          this.a = (0x8 | this.a);
          this.e = localan;
        }
        break;
      case 50:
        this.a = (0x10 | this.a);
        this.f = paramm.k();
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramm.k();
      case 66:
      }
    }
    ar localar = aq.s();
    if (v())
      localar.a(w());
    paramm.a(localar, paramdf);
    aq localaq = localar.t();
    if (this.j == null)
    {
      if (localaq == null)
        throw new NullPointerException();
      this.i = localaq;
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      break;
      this.j.a(localaq);
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

  public final boolean j_()
  {
    if ((0x1 & this.a) == 1);
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

  public final al m()
  {
    return this.d;
  }

  public final boolean n()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final an o()
  {
    return this.e;
  }

  public final boolean p()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String q()
  {
    Object localObject = this.f;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.f = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean r()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String s()
  {
    Object localObject = this.g;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.g = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean t()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String u()
  {
    Object localObject = this.h;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.h = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean v()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final aq w()
  {
    if (this.j == null);
    for (aq localaq = this.i; ; localaq = (aq)this.j.c())
      return localaq;
  }

  public final au x()
  {
    if (this.j != null);
    for (Object localObject = (au)this.j.f(); ; localObject = this.i)
      return localObject;
  }

  public final aj y()
  {
    aj localaj = z();
    if (!localaj.a())
      throw b(localaj);
    return localaj;
  }

  public final aj z()
  {
    aj localaj = new aj(this);
    int k = this.a;
    int m = k & 0x1;
    int n = 0;
    if (m == 1)
      n = 1;
    aj.a(localaj, this.b);
    if ((k & 0x2) == 2)
      n |= 2;
    aj.a(localaj, this.c);
    if ((k & 0x4) == 4)
      n |= 4;
    aj.a(localaj, this.d);
    if ((k & 0x8) == 8)
      n |= 8;
    aj.a(localaj, this.e);
    if ((k & 0x10) == 16)
      n |= 16;
    aj.b(localaj, this.f);
    if ((k & 0x20) == 32)
      n |= 32;
    aj.c(localaj, this.g);
    if ((k & 0x40) == 64)
      n |= 64;
    aj.d(localaj, this.h);
    if ((k & 0x80) == 128)
      n |= 128;
    if (this.j == null)
      aj.a(localaj, this.i);
    while (true)
    {
      aj.b(localaj, n);
      ab_();
      return localaj;
      aj.a(localaj, (aq)this.j.d());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ak
 * JD-Core Version:    0.6.2
 */