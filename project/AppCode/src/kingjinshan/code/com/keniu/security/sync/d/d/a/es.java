package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class es extends dk
  implements eu
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final es f;
  private static final long p;
  private int g;
  private Object h;
  private Object i;
  private Object k;
  private int l;
  private long m;
  private byte n = -1;
  private int o = -1;

  static
  {
    es locales = new es();
    f = locales;
    locales.h = "";
    locales.i = "";
    locales.k = "";
    locales.l = 0;
    locales.m = 0L;
  }

  private es()
  {
  }

  private es(et paramet, byte paramByte)
  {
    super(paramet);
  }

  private static et A()
  {
    return et.i();
  }

  private et J()
  {
    return et.i().a(this);
  }

  private static es a(i parami)
  {
    return et.a((et)et.i().a(parami));
  }

  private static es a(i parami, df paramdf)
  {
    return et.a((et)et.i().a(parami, paramdf));
  }

  private static es a(m paramm)
  {
    return et.a((et)et.i().a(paramm));
  }

  private static es a(m paramm, df paramdf)
  {
    return et.a(et.i().e(paramm, paramdf));
  }

  private static es a(InputStream paramInputStream)
  {
    return et.a((et)et.i().a(paramInputStream));
  }

  private static es a(InputStream paramInputStream, df paramdf)
  {
    return et.a((et)et.i().a(paramInputStream, paramdf));
  }

  private static es a(byte[] paramArrayOfByte)
  {
    return et.a((et)et.i().a(paramArrayOfByte));
  }

  private static es a(byte[] paramArrayOfByte, df paramdf)
  {
    return et.a((et)et.i().a(paramArrayOfByte, paramdf));
  }

  private static et a(es parames)
  {
    return et.i().a(parames);
  }

  private static es b(InputStream paramInputStream)
  {
    et localet = et.i();
    if (localet.b(paramInputStream));
    for (es locales = et.a(localet); ; locales = null)
      return locales;
  }

  private static es b(InputStream paramInputStream, df paramdf)
  {
    et localet = et.i();
    if (localet.b(paramInputStream, paramdf));
    for (es locales = et.a(localet); ; locales = null)
      return locales;
  }

  private static et b(dp paramdp)
  {
    return new et(paramdp);
  }

  public static es h()
  {
    return f;
  }

  public static final cj i()
  {
    return a.n();
  }

  private static es u()
  {
    return f;
  }

  private i v()
  {
    Object localObject = this.h;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.h = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i w()
  {
    Object localObject = this.i;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.i = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i x()
  {
    Object localObject = this.k;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.k = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void y()
  {
    this.h = "";
    this.i = "";
    this.k = "";
    this.l = 0;
    this.m = 0L;
  }

  private static et z()
  {
    return et.i();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.g) == 1)
      paramn.a(1, v());
    if ((0x2 & this.g) == 2)
      paramn.a(2, w());
    if ((0x4 & this.g) == 4)
      paramn.a(3, x());
    if ((0x8 & this.g) == 8)
      paramn.a(4, this.l);
    if ((0x10 & this.g) == 16)
      paramn.b(5, this.m);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.n;
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
        this.n = 0;
        bool = false;
      }
      else if (!l())
      {
        this.n = 0;
        bool = false;
      }
      else if (!n())
      {
        this.n = 0;
        bool = false;
      }
      else if (!p())
      {
        this.n = 0;
        bool = false;
      }
      else
      {
        this.n = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.o;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.g;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, v());
      if ((0x2 & this.g) == 2)
        i2 += n.c(2, w());
      if ((0x4 & this.g) == 4)
        i2 += n.c(3, x());
      if ((0x8 & this.g) == 8)
        i2 += n.d(4, this.l);
      if ((0x10 & this.g) == 16)
        i2 += n.e(5, this.m);
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return a.o();
  }

  public final boolean j()
  {
    if ((0x1 & this.g) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.h = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.g) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject1 = this.i;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.i = str;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.g) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.k;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.k = str;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.g) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.l;
  }

  public final boolean r()
  {
    if ((0x10 & this.g) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.es
 * JD-Core Version:    0.6.2
 */