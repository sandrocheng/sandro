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

public final class u extends dk
  implements w
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final u f;
  private static final long p;
  private int g;
  private Object h;
  private Object i;
  private Object k;
  private int l;
  private int m;
  private byte n = -1;
  private int o = -1;

  static
  {
    u localu = new u();
    f = localu;
    localu.h = "";
    localu.i = "";
    localu.k = "";
    localu.l = 0;
    localu.m = 0;
  }

  private u()
  {
  }

  private u(v paramv, byte paramByte)
  {
    super(paramv);
  }

  private static v A()
  {
    return v.i();
  }

  private v J()
  {
    return v.i().a(this);
  }

  private static u a(i parami)
  {
    return v.a((v)v.i().a(parami));
  }

  private static u a(i parami, df paramdf)
  {
    return v.a((v)v.i().a(parami, paramdf));
  }

  private static u a(m paramm)
  {
    return v.a((v)v.i().a(paramm));
  }

  private static u a(m paramm, df paramdf)
  {
    return v.a(v.i().e(paramm, paramdf));
  }

  private static u a(InputStream paramInputStream)
  {
    return v.a((v)v.i().a(paramInputStream));
  }

  private static u a(InputStream paramInputStream, df paramdf)
  {
    return v.a((v)v.i().a(paramInputStream, paramdf));
  }

  private static u a(byte[] paramArrayOfByte)
  {
    return v.a((v)v.i().a(paramArrayOfByte));
  }

  private static u a(byte[] paramArrayOfByte, df paramdf)
  {
    return v.a((v)v.i().a(paramArrayOfByte, paramdf));
  }

  private static v a(u paramu)
  {
    return v.i().a(paramu);
  }

  private static u b(InputStream paramInputStream)
  {
    v localv = v.i();
    if (localv.b(paramInputStream));
    for (u localu = v.a(localv); ; localu = null)
      return localu;
  }

  private static u b(InputStream paramInputStream, df paramdf)
  {
    v localv = v.i();
    if (localv.b(paramInputStream, paramdf));
    for (u localu = v.a(localv); ; localu = null)
      return localu;
  }

  private static v b(dp paramdp)
  {
    return new v(paramdp);
  }

  public static u h()
  {
    return f;
  }

  public static final cj i()
  {
    return a.z();
  }

  private static u u()
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
    this.m = 0;
  }

  private static v z()
  {
    return v.i();
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
        i2 += n.d(5, this.m);
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return a.A();
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

  public final int s()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.u
 * JD-Core Version:    0.6.2
 */