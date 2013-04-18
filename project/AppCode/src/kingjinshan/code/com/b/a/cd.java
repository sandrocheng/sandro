package com.b.a;

import java.io.InputStream;

public final class cd extends dk
  implements cf
{
  public static final int a = 1;
  public static final int b = 2;
  private static final cd c;
  private static final long i;
  private int d;
  private Object e;
  private boolean f;
  private byte g = -1;
  private int h = -1;

  static
  {
    cd localcd = new cd();
    c = localcd;
    localcd.e = "";
    localcd.f = false;
  }

  private cd()
  {
  }

  private cd(ce paramce, byte paramByte)
  {
    super(paramce);
  }

  private static cd a(i parami)
  {
    return ce.a((ce)ce.n().a(parami));
  }

  private static cd a(i parami, df paramdf)
  {
    return ce.a((ce)ce.n().a(parami, paramdf));
  }

  private static cd a(m paramm)
  {
    return ce.a((ce)ce.n().a(paramm));
  }

  private static cd a(m paramm, df paramdf)
  {
    return ce.a(ce.n().e(paramm, paramdf));
  }

  private static cd a(InputStream paramInputStream)
  {
    return ce.a((ce)ce.n().a(paramInputStream));
  }

  private static cd a(InputStream paramInputStream, df paramdf)
  {
    return ce.a((ce)ce.n().a(paramInputStream, paramdf));
  }

  private static cd a(byte[] paramArrayOfByte)
  {
    return ce.a((ce)ce.n().a(paramArrayOfByte));
  }

  private static cd a(byte[] paramArrayOfByte, df paramdf)
  {
    return ce.a((ce)ce.n().a(paramArrayOfByte, paramdf));
  }

  private static ce a(cd paramcd)
  {
    return ce.n().a(paramcd);
  }

  private static cd b(InputStream paramInputStream)
  {
    ce localce = ce.n();
    if (localce.b(paramInputStream));
    for (cd localcd = ce.a(localce); ; localcd = null)
      return localcd;
  }

  private static cd b(InputStream paramInputStream, df paramdf)
  {
    ce localce = ce.n();
    if (localce.b(paramInputStream, paramdf));
    for (cd localcd = ce.a(localce); ; localcd = null)
      return localcd;
  }

  private static ce b(dp paramdp)
  {
    return new ce(paramdp);
  }

  public static cd e()
  {
    return c;
  }

  public static final cj f()
  {
    return p.J();
  }

  public static ce l()
  {
    return ce.n();
  }

  private static cd m()
  {
    return c;
  }

  private i n()
  {
    Object localObject = this.e;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.e = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void o()
  {
    this.e = "";
    this.f = false;
  }

  private static ce p()
  {
    return ce.n();
  }

  private ce q()
  {
    return ce.n().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final boolean G_()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.a(1, n());
    if ((0x2 & this.d) == 2)
      paramn.a(2, this.f);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.g;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!G_())
      {
        this.g = 0;
        bool = false;
      }
      else if (!j())
      {
        this.g = 0;
        bool = false;
      }
      else
      {
        this.g = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.h;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0x1 & this.d;
      int m = 0;
      if (k == 1)
        m = 0 + n.c(1, n());
      if ((0x2 & this.d) == 2)
        m += 1 + n.p(2);
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return p.K();
  }

  public final String i()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.e = str;
    }
  }

  public final boolean j()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean k()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cd
 * JD-Core Version:    0.6.2
 */