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

public final class cc extends dk
  implements ce
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final cc f;
  private static final long p;
  private int g;
  private Object h;
  private Object i;
  private long k;
  private int l;
  private int m;
  private byte n = -1;
  private int o = -1;

  static
  {
    cc localcc = new cc();
    f = localcc;
    localcc.h = "";
    localcc.i = "";
    localcc.k = 0L;
    localcc.l = 0;
    localcc.m = 0;
  }

  private cc()
  {
  }

  private cc(cd paramcd, byte paramByte)
  {
    super(paramcd);
  }

  private cd A()
  {
    return cd.t().a(this);
  }

  private static cc a(i parami)
  {
    return cd.a((cd)cd.t().a(parami));
  }

  private static cc a(i parami, df paramdf)
  {
    return cd.a((cd)cd.t().a(parami, paramdf));
  }

  private static cc a(m paramm)
  {
    return cd.a((cd)cd.t().a(paramm));
  }

  private static cc a(m paramm, df paramdf)
  {
    return cd.a(cd.t().e(paramm, paramdf));
  }

  private static cc a(InputStream paramInputStream)
  {
    return cd.a((cd)cd.t().a(paramInputStream));
  }

  private static cc a(InputStream paramInputStream, df paramdf)
  {
    return cd.a((cd)cd.t().a(paramInputStream, paramdf));
  }

  private static cc a(byte[] paramArrayOfByte)
  {
    return cd.a((cd)cd.t().a(paramArrayOfByte));
  }

  private static cc a(byte[] paramArrayOfByte, df paramdf)
  {
    return cd.a((cd)cd.t().a(paramArrayOfByte, paramdf));
  }

  private static cd a(cc paramcc)
  {
    return cd.t().a(paramcc);
  }

  private static cc b(InputStream paramInputStream)
  {
    cd localcd = cd.t();
    if (localcd.b(paramInputStream));
    for (cc localcc = cd.a(localcd); ; localcc = null)
      return localcc;
  }

  private static cc b(InputStream paramInputStream, df paramdf)
  {
    cd localcd = cd.t();
    if (localcd.b(paramInputStream, paramdf));
    for (cc localcc = cd.a(localcd); ; localcc = null)
      return localcc;
  }

  private static cd b(dp paramdp)
  {
    return new cd(paramdp);
  }

  public static cc h()
  {
    return f;
  }

  public static final cj i()
  {
    return a.H();
  }

  public static cd t()
  {
    return cd.t();
  }

  private static cc v()
  {
    return f;
  }

  private i w()
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

  private i x()
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

  private void y()
  {
    this.h = "";
    this.i = "";
    this.k = 0L;
    this.l = 0;
    this.m = 0;
  }

  private static cd z()
  {
    return cd.t();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.g) == 1)
      paramn.a(1, w());
    if ((0x2 & this.g) == 2)
      paramn.a(2, x());
    if ((0x4 & this.g) == 4)
      paramn.b(3, this.k);
    if ((0x8 & this.g) == 8)
      paramn.a(4, this.l);
    if ((0x10 & this.g) == 16)
      paramn.a(5, this.m);
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
      else if (!p())
      {
        this.n = 0;
        bool = false;
      }
      else if (!r())
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
        i2 = 0 + n.c(1, w());
      if ((0x2 & this.g) == 2)
        i2 += n.c(2, x());
      if ((0x4 & this.g) == 4)
        i2 += n.e(3, this.k);
      if ((0x8 & this.g) == 8)
        i2 += n.d(4, this.l);
      if ((0x10 & this.g) == 16)
        i2 += n.d(5, this.m);
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return a.I();
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

  public final long o()
  {
    return this.k;
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

  public final int s()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cc
 * JD-Core Version:    0.6.2
 */