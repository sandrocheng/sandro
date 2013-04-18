package com.b.a;

import java.io.InputStream;

public final class t extends dk
  implements v
{
  public static final int a = 1;
  public static final int b = 2;
  private static final t c;
  private static final long i;
  private int d;
  private int e;
  private int f;
  private byte g = -1;
  private int h = -1;

  static
  {
    t localt = new t();
    c = localt;
    localt.e = 0;
    localt.f = 0;
  }

  private t()
  {
  }

  private t(u paramu, byte paramByte)
  {
    super(paramu);
  }

  private static t a(i parami)
  {
    return u.a((u)u.n().a(parami));
  }

  private static t a(i parami, df paramdf)
  {
    return u.a((u)u.n().a(parami, paramdf));
  }

  private static t a(m paramm)
  {
    return u.a((u)u.n().a(paramm));
  }

  private static t a(m paramm, df paramdf)
  {
    return u.a(u.n().e(paramm, paramdf));
  }

  private static t a(InputStream paramInputStream)
  {
    return u.a((u)u.n().a(paramInputStream));
  }

  private static t a(InputStream paramInputStream, df paramdf)
  {
    return u.a((u)u.n().a(paramInputStream, paramdf));
  }

  private static t a(byte[] paramArrayOfByte)
  {
    return u.a((u)u.n().a(paramArrayOfByte));
  }

  private static t a(byte[] paramArrayOfByte, df paramdf)
  {
    return u.a((u)u.n().a(paramArrayOfByte, paramdf));
  }

  private static u a(t paramt)
  {
    return u.n().a(paramt);
  }

  private static t b(InputStream paramInputStream)
  {
    u localu = u.n();
    if (localu.b(paramInputStream));
    for (t localt = u.a(localu); ; localt = null)
      return localt;
  }

  private static t b(InputStream paramInputStream, df paramdf)
  {
    u localu = u.n();
    if (localu.b(paramInputStream, paramdf));
    for (t localt = u.a(localu); ; localt = null)
      return localt;
  }

  private static u b(dp paramdp)
  {
    return new u(paramdp);
  }

  public static t e()
  {
    return c;
  }

  public static final cj f()
  {
    return p.h();
  }

  public static u l()
  {
    return u.n();
  }

  private static t m()
  {
    return c;
  }

  private void n()
  {
    this.e = 0;
    this.f = 0;
  }

  private static u o()
  {
    return u.n();
  }

  private u p()
  {
    return u.n().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.a(1, this.e);
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
      this.g = 1;
      bool = true;
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
        m = 0 + n.d(1, this.e);
      if ((0x2 & this.d) == 2)
        m += n.d(2, this.f);
      j = m + b_().b();
      this.h = j;
    }
  }

  public final boolean e_()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final dv g()
  {
    return p.i();
  }

  public final int i()
  {
    return this.e;
  }

  public final boolean j()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.t
 * JD-Core Version:    0.6.2
 */