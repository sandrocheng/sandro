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

public final class cu extends dk
  implements cw
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final cu f;
  private static final long p;
  private int g;
  private Object h;
  private Object i;
  private Object k;
  private Object l;
  private int m;
  private byte n = -1;
  private int o = -1;

  static
  {
    cu localcu = new cu();
    f = localcu;
    localcu.h = "";
    localcu.i = "";
    localcu.k = "";
    localcu.l = "";
    localcu.m = 0;
  }

  private cu()
  {
  }

  private cu(cv paramcv, byte paramByte)
  {
    super(paramcv);
  }

  private void A()
  {
    this.h = "";
    this.i = "";
    this.k = "";
    this.l = "";
    this.m = 0;
  }

  private static cv J()
  {
    return cv.t();
  }

  private cv K()
  {
    return cv.t().a(this);
  }

  private static cu a(i parami)
  {
    return cv.a((cv)cv.t().a(parami));
  }

  private static cu a(i parami, df paramdf)
  {
    return cv.a((cv)cv.t().a(parami, paramdf));
  }

  private static cu a(m paramm)
  {
    return cv.a((cv)cv.t().a(paramm));
  }

  private static cu a(m paramm, df paramdf)
  {
    return cv.a(cv.t().e(paramm, paramdf));
  }

  private static cu a(InputStream paramInputStream)
  {
    return cv.a((cv)cv.t().a(paramInputStream));
  }

  private static cu a(InputStream paramInputStream, df paramdf)
  {
    return cv.a((cv)cv.t().a(paramInputStream, paramdf));
  }

  private static cu a(byte[] paramArrayOfByte)
  {
    return cv.a((cv)cv.t().a(paramArrayOfByte));
  }

  private static cu a(byte[] paramArrayOfByte, df paramdf)
  {
    return cv.a((cv)cv.t().a(paramArrayOfByte, paramdf));
  }

  private static cv a(cu paramcu)
  {
    return cv.t().a(paramcu);
  }

  private static cu b(InputStream paramInputStream)
  {
    cv localcv = cv.t();
    if (localcv.b(paramInputStream));
    for (cu localcu = cv.a(localcv); ; localcu = null)
      return localcu;
  }

  private static cu b(InputStream paramInputStream, df paramdf)
  {
    cv localcv = cv.t();
    if (localcv.b(paramInputStream, paramdf));
    for (cu localcu = cv.a(localcv); ; localcu = null)
      return localcu;
  }

  private static cv b(dp paramdp)
  {
    return new cv(paramdp);
  }

  public static cu h()
  {
    return f;
  }

  public static final cj i()
  {
    return a.X();
  }

  public static cv t()
  {
    return cv.t();
  }

  private static cu v()
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

  private i z()
  {
    Object localObject = this.l;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.l = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
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
      paramn.a(4, z());
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
        i2 += n.c(3, y());
      if ((0x8 & this.g) == 8)
        i2 += n.c(4, z());
      if ((0x10 & this.g) == 16)
        i2 += n.d(5, this.m);
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return a.Y();
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

  public final String q()
  {
    Object localObject1 = this.l;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.l = str;
    }
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.cu
 * JD-Core Version:    0.6.2
 */