package com.b.a;

public final class ce extends dn
  implements cf
{
  private int a;
  private Object b = "";
  private boolean c;

  private ce()
  {
  }

  private ce(dp paramdp, byte paramByte)
  {
    super(paramdp);
  }

  private ce a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ce a(boolean paramBoolean)
  {
    this.a = (0x2 | this.a);
    this.c = paramBoolean;
    af_();
    return this;
  }

  private ce d(ev paramev)
  {
    if ((paramev instanceof cd));
    for (ce localce = a((cd)paramev); ; localce = this)
    {
      return localce;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj o()
  {
    return p.J();
  }

  private static void p()
  {
  }

  private static ce q()
  {
    return new ce();
  }

  private ce r()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = false;
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private ce s()
  {
    return new ce().a(m());
  }

  private static cd t()
  {
    return cd.e();
  }

  private cd u()
  {
    cd localcd = m();
    if (!localcd.a())
      throw b(localcd).a();
    return localcd;
  }

  private ce v()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = cd.e().i();
    af_();
    return this;
  }

  private ce w()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = false;
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.K();
  }

  public final cj C()
  {
    return cd.f();
  }

  public final boolean G_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ce a(cd paramcd)
  {
    if (paramcd == cd.e());
    for (ce localce = this; ; localce = this)
    {
      return localce;
      if (paramcd.G_())
      {
        String str = paramcd.i();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str;
        af_();
      }
      if (paramcd.j())
      {
        boolean bool = paramcd.k();
        this.a = (0x2 | this.a);
        this.c = bool;
        af_();
      }
      e(paramcd.b_());
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!G_())
      bool = false;
    while (true)
    {
      return bool;
      if (!j())
        bool = false;
      else
        bool = true;
    }
  }

  public final ce e(m paramm, df paramdf)
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
        for (ce localce = this; ; localce = this)
        {
          return localce;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.i();
      }
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

  public final boolean k()
  {
    return this.c;
  }

  public final cd l()
  {
    cd localcd = m();
    if (!localcd.a())
      throw b(localcd);
    return localcd;
  }

  public final cd m()
  {
    cd localcd = new cd(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    cd.a(localcd, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      cd.a(localcd, this.c);
      cd.a(localcd, m);
      ab_();
      return localcd;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ce
 * JD-Core Version:    0.6.2
 */