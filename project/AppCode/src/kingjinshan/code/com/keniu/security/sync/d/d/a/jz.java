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

public final class jz extends dk
  implements kb
{
  public static final int a = 1;
  public static final int b = 2;
  private static final jz c;
  private static final long i;
  private int d;
  private ge e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    jz localjz = new jz();
    c = localjz;
    localjz.e = ge.h();
    localjz.f = "";
  }

  private jz()
  {
  }

  private jz(ka paramka, byte paramByte)
  {
    super(paramka);
  }

  private static jz a(i parami)
  {
    return ka.a((ka)ka.i().a(parami));
  }

  private static jz a(i parami, df paramdf)
  {
    return ka.a((ka)ka.i().a(parami, paramdf));
  }

  private static jz a(m paramm)
  {
    return ka.a((ka)ka.i().a(paramm));
  }

  private static jz a(m paramm, df paramdf)
  {
    return ka.a(ka.i().e(paramm, paramdf));
  }

  private static jz a(InputStream paramInputStream)
  {
    return ka.a((ka)ka.i().a(paramInputStream));
  }

  private static jz a(InputStream paramInputStream, df paramdf)
  {
    return ka.a((ka)ka.i().a(paramInputStream, paramdf));
  }

  private static jz a(byte[] paramArrayOfByte)
  {
    return ka.a((ka)ka.i().a(paramArrayOfByte));
  }

  private static jz a(byte[] paramArrayOfByte, df paramdf)
  {
    return ka.a((ka)ka.i().a(paramArrayOfByte, paramdf));
  }

  private static ka a(jz paramjz)
  {
    return ka.i().a(paramjz);
  }

  private static jz b(InputStream paramInputStream)
  {
    ka localka = ka.i();
    if (localka.b(paramInputStream));
    for (jz localjz = ka.a(localka); ; localjz = null)
      return localjz;
  }

  private static jz b(InputStream paramInputStream, df paramdf)
  {
    ka localka = ka.i();
    if (localka.b(paramInputStream, paramdf));
    for (jz localjz = ka.a(localka); ; localjz = null)
      return localjz;
  }

  private static ka b(dp paramdp)
  {
    return new ka(paramdp);
  }

  public static jz h()
  {
    return c;
  }

  public static final cj i()
  {
    return ih.h();
  }

  private static jz p()
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
    this.e = ge.h();
    this.f = "";
  }

  private static ka s()
  {
    return ka.i();
  }

  private static ka t()
  {
    return ka.i();
  }

  private ka u()
  {
    return ka.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.b(1, this.e);
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
      else if (!this.e.a())
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
        m = 0 + n.e(1, this.e);
      if ((0x2 & this.d) == 2)
        m += n.c(2, q());
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return ih.i();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.e;
  }

  public final gg l()
  {
    return this.e;
  }

  public final boolean m()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String n()
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jz
 * JD-Core Version:    0.6.2
 */