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

public final class be extends dk
  implements bg
{
  public static final int a = 1;
  public static final int b = 2;
  private static final be c;
  private static final long i;
  private int d;
  private Object e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    be localbe = new be();
    c = localbe;
    localbe.e = "";
    localbe.f = "";
  }

  private be()
  {
  }

  private be(bf parambf, byte paramByte)
  {
    super(parambf);
  }

  private static be a(i parami)
  {
    return bf.a((bf)bf.i().a(parami));
  }

  private static be a(i parami, df paramdf)
  {
    return bf.a((bf)bf.i().a(parami, paramdf));
  }

  private static be a(m paramm)
  {
    return bf.a((bf)bf.i().a(paramm));
  }

  private static be a(m paramm, df paramdf)
  {
    return bf.a(bf.i().e(paramm, paramdf));
  }

  private static be a(InputStream paramInputStream)
  {
    return bf.a((bf)bf.i().a(paramInputStream));
  }

  private static be a(InputStream paramInputStream, df paramdf)
  {
    return bf.a((bf)bf.i().a(paramInputStream, paramdf));
  }

  private static be a(byte[] paramArrayOfByte)
  {
    return bf.a((bf)bf.i().a(paramArrayOfByte));
  }

  private static be a(byte[] paramArrayOfByte, df paramdf)
  {
    return bf.a((bf)bf.i().a(paramArrayOfByte, paramdf));
  }

  private static bf a(be parambe)
  {
    return bf.i().a(parambe);
  }

  private static be b(InputStream paramInputStream)
  {
    bf localbf = bf.i();
    if (localbf.b(paramInputStream));
    for (be localbe = bf.a(localbf); ; localbe = null)
      return localbe;
  }

  private static be b(InputStream paramInputStream, df paramdf)
  {
    bf localbf = bf.i();
    if (localbf.b(paramInputStream, paramdf));
    for (be localbe = bf.a(localbf); ; localbe = null)
      return localbe;
  }

  private static bf b(dp paramdp)
  {
    return new bf(paramdp);
  }

  public static be h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.aP();
  }

  private static be o()
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

  private static bf s()
  {
    return bf.i();
  }

  private static bf t()
  {
    return bf.i();
  }

  private bf u()
  {
    return bf.i().a(this);
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
    return a.aQ();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.be
 * JD-Core Version:    0.6.2
 */