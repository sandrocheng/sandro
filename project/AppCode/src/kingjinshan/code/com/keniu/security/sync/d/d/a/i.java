package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class i extends dk
  implements k
{
  public static final int a = 1;
  public static final int b = 2;
  private static final i c;
  private static final long i;
  private int d;
  private Object e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    i locali = new i();
    c = locali;
    locali.e = "";
    locali.f = "";
  }

  private i()
  {
  }

  private i(j paramj, byte paramByte)
  {
    super(paramj);
  }

  private static i a(com.b.a.i parami)
  {
    return j.a((j)j.i().a(parami));
  }

  private static i a(com.b.a.i parami, df paramdf)
  {
    return j.a((j)j.i().a(parami, paramdf));
  }

  private static i a(m paramm)
  {
    return j.a((j)j.i().a(paramm));
  }

  private static i a(m paramm, df paramdf)
  {
    return j.a(j.i().e(paramm, paramdf));
  }

  private static i a(InputStream paramInputStream)
  {
    return j.a((j)j.i().a(paramInputStream));
  }

  private static i a(InputStream paramInputStream, df paramdf)
  {
    return j.a((j)j.i().a(paramInputStream, paramdf));
  }

  private static i a(byte[] paramArrayOfByte)
  {
    return j.a((j)j.i().a(paramArrayOfByte));
  }

  private static i a(byte[] paramArrayOfByte, df paramdf)
  {
    return j.a((j)j.i().a(paramArrayOfByte, paramdf));
  }

  private static j a(i parami)
  {
    return j.i().a(parami);
  }

  private static i b(InputStream paramInputStream)
  {
    j localj = j.i();
    if (localj.b(paramInputStream));
    for (i locali = j.a(localj); ; locali = null)
      return locali;
  }

  private static i b(InputStream paramInputStream, df paramdf)
  {
    j localj = j.i();
    if (localj.b(paramInputStream, paramdf));
    for (i locali = j.a(localj); ; locali = null)
      return locali;
  }

  private static j b(dp paramdp)
  {
    return new j(paramdp);
  }

  public static i h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.az();
  }

  private static i o()
  {
    return c;
  }

  private com.b.a.i p()
  {
    Object localObject = this.e;
    com.b.a.i locali;
    if ((localObject instanceof String))
    {
      locali = com.b.a.i.a((String)localObject);
      this.e = locali;
    }
    while (true)
    {
      return locali;
      locali = (com.b.a.i)localObject;
    }
  }

  private com.b.a.i q()
  {
    Object localObject = this.f;
    com.b.a.i locali;
    if ((localObject instanceof String))
    {
      locali = com.b.a.i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (com.b.a.i)localObject;
    }
  }

  private void r()
  {
    this.e = "";
    this.f = "";
  }

  private static j s()
  {
    return j.i();
  }

  private static j t()
  {
    return j.i();
  }

  private j u()
  {
    return j.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.a(1, p());
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
      else if (!l())
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
        m = 0 + n.c(1, p());
      if ((0x2 & this.d) == 2)
        m += n.c(2, q());
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return a.aA();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.b.a.i locali = (com.b.a.i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.e = str;
    }
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
      com.b.a.i locali = (com.b.a.i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.i
 * JD-Core Version:    0.6.2
 */