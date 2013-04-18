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

public final class ag extends dk
  implements ai
{
  public static final int a = 1;
  public static final int b = 2;
  private static final ag c;
  private static final long i;
  private int d;
  private Object e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    ag localag = new ag();
    c = localag;
    localag.e = "";
    localag.f = "";
  }

  private ag()
  {
  }

  private ag(ah paramah, byte paramByte)
  {
    super(paramah);
  }

  private static ag a(i parami)
  {
    return ah.a((ah)ah.i().a(parami));
  }

  private static ag a(i parami, df paramdf)
  {
    return ah.a((ah)ah.i().a(parami, paramdf));
  }

  private static ag a(m paramm)
  {
    return ah.a((ah)ah.i().a(paramm));
  }

  private static ag a(m paramm, df paramdf)
  {
    return ah.a(ah.i().e(paramm, paramdf));
  }

  private static ag a(InputStream paramInputStream)
  {
    return ah.a((ah)ah.i().a(paramInputStream));
  }

  private static ag a(InputStream paramInputStream, df paramdf)
  {
    return ah.a((ah)ah.i().a(paramInputStream, paramdf));
  }

  private static ag a(byte[] paramArrayOfByte)
  {
    return ah.a((ah)ah.i().a(paramArrayOfByte));
  }

  private static ag a(byte[] paramArrayOfByte, df paramdf)
  {
    return ah.a((ah)ah.i().a(paramArrayOfByte, paramdf));
  }

  private static ah a(ag paramag)
  {
    return ah.i().a(paramag);
  }

  private static ag b(InputStream paramInputStream)
  {
    ah localah = ah.i();
    if (localah.b(paramInputStream));
    for (ag localag = ah.a(localah); ; localag = null)
      return localag;
  }

  private static ag b(InputStream paramInputStream, df paramdf)
  {
    ah localah = ah.i();
    if (localah.b(paramInputStream, paramdf));
    for (ag localag = ah.a(localah); ; localag = null)
      return localag;
  }

  private static ah b(dp paramdp)
  {
    return new ah(paramdp);
  }

  public static ag h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.bb();
  }

  private static ag o()
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

  private static ah s()
  {
    return ah.i();
  }

  private static ah t()
  {
    return ah.i();
  }

  private ah u()
  {
    return ah.i().a(this);
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
    return a.bc();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ag
 * JD-Core Version:    0.6.2
 */