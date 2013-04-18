package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class ge extends dk
  implements gg
{
  public static final int a = 1;
  public static final int b = 2;
  private static final ge c;
  private static final long i;
  private int d;
  private int e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    ge localge = new ge();
    c = localge;
    localge.e = 0;
    localge.f = "";
  }

  private ge()
  {
  }

  private ge(gf paramgf, byte paramByte)
  {
    super(paramgf);
  }

  private static ge a(i parami)
  {
    return gf.a((gf)gf.o().a(parami));
  }

  private static ge a(i parami, df paramdf)
  {
    return gf.a((gf)gf.o().a(parami, paramdf));
  }

  private static ge a(m paramm)
  {
    return gf.a((gf)gf.o().a(paramm));
  }

  private static ge a(m paramm, df paramdf)
  {
    return gf.a(gf.o().e(paramm, paramdf));
  }

  private static ge a(InputStream paramInputStream)
  {
    return gf.a((gf)gf.o().a(paramInputStream));
  }

  private static ge a(InputStream paramInputStream, df paramdf)
  {
    return gf.a((gf)gf.o().a(paramInputStream, paramdf));
  }

  private static ge a(byte[] paramArrayOfByte)
  {
    return gf.a((gf)gf.o().a(paramArrayOfByte));
  }

  private static ge a(byte[] paramArrayOfByte, df paramdf)
  {
    return gf.a((gf)gf.o().a(paramArrayOfByte, paramdf));
  }

  public static gf a(ge paramge)
  {
    return gf.o().a(paramge);
  }

  private static ge b(InputStream paramInputStream)
  {
    gf localgf = gf.o();
    if (localgf.b(paramInputStream));
    for (ge localge = gf.a(localgf); ; localge = null)
      return localge;
  }

  private static ge b(InputStream paramInputStream, df paramdf)
  {
    gf localgf = gf.o();
    if (localgf.b(paramInputStream, paramdf));
    for (ge localge = gf.a(localgf); ; localge = null)
      return localge;
  }

  private static gf b(dp paramdp)
  {
    return new gf(paramdp);
  }

  public static ge h()
  {
    return c;
  }

  public static final cj i()
  {
    return gc.b();
  }

  public static gf n()
  {
    return gf.o();
  }

  private static ge p()
  {
    return c;
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
    this.e = 0;
    this.f = "";
  }

  private static gf s()
  {
    return gf.o();
  }

  private gf t()
  {
    return gf.o().a(this);
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
      paramn.a(2, q());
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
      if (!j())
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
        m = 0 + n.d(1, this.e);
      if ((0x2 & this.d) == 2)
        m += n.c(2, q());
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return gc.c();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.e;
  }

  public final boolean l()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ge
 * JD-Core Version:    0.6.2
 */