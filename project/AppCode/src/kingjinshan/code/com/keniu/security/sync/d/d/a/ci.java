package com.keniu.security.sync.d.d.a;

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

public final class ci extends dk
  implements ck
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final ci f;
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
    ci localci = new ci();
    f = localci;
    localci.h = "";
    localci.i = "";
    localci.k = "";
    localci.l = 0;
    localci.m = 0L;
  }

  private ci()
  {
  }

  private ci(cj paramcj, byte paramByte)
  {
    super(paramcj);
  }

  private static cj A()
  {
    return cj.t();
  }

  private cj J()
  {
    return cj.t().a(this);
  }

  private static ci a(i parami)
  {
    return cj.a((cj)cj.t().a(parami));
  }

  private static ci a(i parami, df paramdf)
  {
    return cj.a((cj)cj.t().a(parami, paramdf));
  }

  private static ci a(m paramm)
  {
    return cj.a((cj)cj.t().a(paramm));
  }

  private static ci a(m paramm, df paramdf)
  {
    return cj.a(cj.t().e(paramm, paramdf));
  }

  private static ci a(InputStream paramInputStream)
  {
    return cj.a((cj)cj.t().a(paramInputStream));
  }

  private static ci a(InputStream paramInputStream, df paramdf)
  {
    return cj.a((cj)cj.t().a(paramInputStream, paramdf));
  }

  private static ci a(byte[] paramArrayOfByte)
  {
    return cj.a((cj)cj.t().a(paramArrayOfByte));
  }

  private static ci a(byte[] paramArrayOfByte, df paramdf)
  {
    return cj.a((cj)cj.t().a(paramArrayOfByte, paramdf));
  }

  private static cj a(ci paramci)
  {
    return cj.t().a(paramci);
  }

  private static ci b(InputStream paramInputStream)
  {
    cj localcj = cj.t();
    if (localcj.b(paramInputStream));
    for (ci localci = cj.a(localcj); ; localci = null)
      return localci;
  }

  private static ci b(InputStream paramInputStream, df paramdf)
  {
    cj localcj = cj.t();
    if (localcj.b(paramInputStream, paramdf));
    for (ci localci = cj.a(localcj); ; localci = null)
      return localci;
  }

  private static cj b(dp paramdp)
  {
    return new cj(paramdp);
  }

  public static ci h()
  {
    return f;
  }

  public static final com.b.a.cj i()
  {
    return a.r();
  }

  public static cj t()
  {
    return cj.t();
  }

  private static ci v()
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

  private i y()
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

  private void z()
  {
    this.h = "";
    this.i = "";
    this.k = "";
    this.l = 0;
    this.m = 0L;
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
      paramn.a(3, y());
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
        i2 = 0 + n.c(1, w());
      if ((0x2 & this.g) == 2)
        i2 += n.c(2, x());
      if ((0x4 & this.g) == 4)
        i2 += n.c(3, y());
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
    return a.s();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ci
 * JD-Core Version:    0.6.2
 */