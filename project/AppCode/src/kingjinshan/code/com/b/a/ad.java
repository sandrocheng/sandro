package com.b.a;

import java.io.InputStream;

public final class ad extends dk
  implements af
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ad d;
  private static final long l;
  private int e;
  private Object f;
  private int g;
  private ag h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ad localad = new ad();
    d = localad;
    localad.f = "";
    localad.g = 0;
    localad.h = ag.e();
  }

  private ad()
  {
  }

  private ad(ae paramae, byte paramByte)
  {
    super(paramae);
  }

  private static ad a(i parami)
  {
    return ae.a((ae)ae.q().a(parami));
  }

  private static ad a(i parami, df paramdf)
  {
    return ae.a((ae)ae.q().a(parami, paramdf));
  }

  private static ad a(m paramm)
  {
    return ae.a((ae)ae.q().a(paramm));
  }

  private static ad a(m paramm, df paramdf)
  {
    return ae.a(ae.q().e(paramm, paramdf));
  }

  private static ad a(InputStream paramInputStream)
  {
    return ae.a((ae)ae.q().a(paramInputStream));
  }

  private static ad a(InputStream paramInputStream, df paramdf)
  {
    return ae.a((ae)ae.q().a(paramInputStream, paramdf));
  }

  private static ad a(byte[] paramArrayOfByte)
  {
    return ae.a((ae)ae.q().a(paramArrayOfByte));
  }

  private static ad a(byte[] paramArrayOfByte, df paramdf)
  {
    return ae.a((ae)ae.q().a(paramArrayOfByte, paramdf));
  }

  private static ae a(ad paramad)
  {
    return ae.q().a(paramad);
  }

  private static ad b(InputStream paramInputStream)
  {
    ae localae = ae.q();
    if (localae.b(paramInputStream));
    for (ad localad = ae.a(localae); ; localad = null)
      return localad;
  }

  private static ad b(InputStream paramInputStream, df paramdf)
  {
    ae localae = ae.q();
    if (localae.b(paramInputStream, paramdf));
    for (ad localad = ae.a(localae); ; localad = null)
      return localad;
  }

  private static ae b(dp paramdp)
  {
    return new ae(paramdp);
  }

  public static ad e()
  {
    return d;
  }

  public static final cj f()
  {
    return p.n();
  }

  public static ae o()
  {
    return ae.q();
  }

  private static ad p()
  {
    return d;
  }

  private i q()
  {
    Object localObject = this.f;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void r()
  {
    this.f = "";
    this.g = 0;
    this.h = ag.e();
  }

  private static ae s()
  {
    return ae.q();
  }

  private ae t()
  {
    return ae.q().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.a(1, q());
    if ((0x2 & this.e) == 2)
      paramn.a(2, this.g);
    if ((0x4 & this.e) == 4)
      paramn.b(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if ((l()) && (!this.h.a()))
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1);
    while (true)
    {
      return j;
      int m = 0x1 & this.e;
      int n = 0;
      if (m == 1)
        n = 0 + n.c(1, q());
      if ((0x2 & this.e) == 2)
        n += n.d(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return p.o();
  }

  public final boolean h_()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String i()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }

  public final boolean j()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.g;
  }

  public final boolean l()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ag m()
  {
    return this.h;
  }

  public final ai n()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ad
 * JD-Core Version:    0.6.2
 */