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

public final class c extends dk
  implements e
{
  public static final int a = 1;
  public static final int b = 2;
  private static final c c;
  private static final long i;
  private int d;
  private Object e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    c localc = new c();
    c = localc;
    localc.e = "";
    localc.f = "";
  }

  private c()
  {
  }

  private c(d paramd, byte paramByte)
  {
    super(paramd);
  }

  private static c a(i parami)
  {
    return d.a((d)d.i().a(parami));
  }

  private static c a(i parami, df paramdf)
  {
    return d.a((d)d.i().a(parami, paramdf));
  }

  private static c a(m paramm)
  {
    return d.a((d)d.i().a(paramm));
  }

  private static c a(m paramm, df paramdf)
  {
    return d.a(d.i().e(paramm, paramdf));
  }

  private static c a(InputStream paramInputStream)
  {
    return d.a((d)d.i().a(paramInputStream));
  }

  private static c a(InputStream paramInputStream, df paramdf)
  {
    return d.a((d)d.i().a(paramInputStream, paramdf));
  }

  private static c a(byte[] paramArrayOfByte)
  {
    return d.a((d)d.i().a(paramArrayOfByte));
  }

  private static c a(byte[] paramArrayOfByte, df paramdf)
  {
    return d.a((d)d.i().a(paramArrayOfByte, paramdf));
  }

  private static d a(c paramc)
  {
    return d.i().a(paramc);
  }

  private static c b(InputStream paramInputStream)
  {
    d locald = d.i();
    if (locald.b(paramInputStream));
    for (c localc = d.a(locald); ; localc = null)
      return localc;
  }

  private static c b(InputStream paramInputStream, df paramdf)
  {
    d locald = d.i();
    if (locald.b(paramInputStream, paramdf));
    for (c localc = d.a(locald); ; localc = null)
      return localc;
  }

  private static d b(dp paramdp)
  {
    return new d(paramdp);
  }

  public static c h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.av();
  }

  private static c o()
  {
    return c;
  }

  private i p()
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
    this.e = "";
    this.f = "";
  }

  private static d s()
  {
    return d.i();
  }

  private static d t()
  {
    return d.i();
  }

  private d u()
  {
    return d.i().a(this);
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
    return a.aw();
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
      i locali = (i)localObject1;
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
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.c
 * JD-Core Version:    0.6.2
 */