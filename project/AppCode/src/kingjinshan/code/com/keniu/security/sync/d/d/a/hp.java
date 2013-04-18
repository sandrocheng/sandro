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

public final class hp extends dk
  implements hr
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final hp f;
  private static final long p;
  private int g;
  private gn h;
  private long i;
  private long k;
  private int l;
  private Object m;
  private byte n = -1;
  private int o = -1;

  static
  {
    hp localhp = new hp();
    f = localhp;
    localhp.h = gn.h();
    localhp.i = 0L;
    localhp.k = 0L;
    localhp.l = 0;
    localhp.m = "";
  }

  private hp()
  {
  }

  private hp(hq paramhq, byte paramByte)
  {
    super(paramhq);
  }

  private hq A()
  {
    return hq.u().a(this);
  }

  private static hp a(i parami)
  {
    return hq.a((hq)hq.u().a(parami));
  }

  private static hp a(i parami, df paramdf)
  {
    return hq.a((hq)hq.u().a(parami, paramdf));
  }

  private static hp a(m paramm)
  {
    return hq.a((hq)hq.u().a(paramm));
  }

  private static hp a(m paramm, df paramdf)
  {
    return hq.a(hq.u().e(paramm, paramdf));
  }

  private static hp a(InputStream paramInputStream)
  {
    return hq.a((hq)hq.u().a(paramInputStream));
  }

  private static hp a(InputStream paramInputStream, df paramdf)
  {
    return hq.a((hq)hq.u().a(paramInputStream, paramdf));
  }

  private static hp a(byte[] paramArrayOfByte)
  {
    return hq.a((hq)hq.u().a(paramArrayOfByte));
  }

  private static hp a(byte[] paramArrayOfByte, df paramdf)
  {
    return hq.a((hq)hq.u().a(paramArrayOfByte, paramdf));
  }

  private static hq a(hp paramhp)
  {
    return hq.u().a(paramhp);
  }

  private static hp b(InputStream paramInputStream)
  {
    hq localhq = hq.u();
    if (localhq.b(paramInputStream));
    for (hp localhp = hq.a(localhq); ; localhp = null)
      return localhp;
  }

  private static hp b(InputStream paramInputStream, df paramdf)
  {
    hq localhq = hq.u();
    if (localhq.b(paramInputStream, paramdf));
    for (hp localhp = hq.a(localhq); ; localhp = null)
      return localhp;
  }

  private static hq b(dp paramdp)
  {
    return new hq(paramdp);
  }

  public static hp h()
  {
    return f;
  }

  public static final cj i()
  {
    return hh.j();
  }

  public static hq u()
  {
    return hq.u();
  }

  private static hp w()
  {
    return f;
  }

  private i x()
  {
    Object localObject = this.m;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.m = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void y()
  {
    this.h = gn.h();
    this.i = 0L;
    this.k = 0L;
    this.l = 0;
    this.m = "";
  }

  private static hq z()
  {
    return hq.u();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.g) == 1)
      paramn.b(1, this.h);
    if ((0x2 & this.g) == 2)
      paramn.b(2, this.i);
    if ((0x4 & this.g) == 4)
      paramn.b(3, this.k);
    if ((0x8 & this.g) == 8)
      paramn.a(4, this.l);
    if ((0x10 & this.g) == 16)
      paramn.a(5, x());
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
      else if (!this.h.a())
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
        i2 = 0 + n.e(1, this.h);
      if ((0x2 & this.g) == 2)
        i2 += n.e(2, this.i);
      if ((0x4 & this.g) == 4)
        i2 += n.e(3, this.k);
      if ((0x8 & this.g) == 8)
        i2 += n.d(4, this.l);
      if ((0x10 & this.g) == 16)
        i2 += n.c(5, x());
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return hh.k();
  }

  public final boolean j()
  {
    if ((0x1 & this.g) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    return this.h;
  }

  public final gp l()
  {
    return this.h;
  }

  public final boolean m()
  {
    if ((0x2 & this.g) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.i;
  }

  public final boolean o()
  {
    if ((0x4 & this.g) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.k;
  }

  public final boolean q()
  {
    if ((0x8 & this.g) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int r()
  {
    return this.l;
  }

  public final boolean s()
  {
    if ((0x10 & this.g) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String t()
  {
    Object localObject1 = this.m;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.m = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hp
 * JD-Core Version:    0.6.2
 */