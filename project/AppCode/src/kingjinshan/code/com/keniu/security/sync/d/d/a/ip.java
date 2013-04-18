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

public final class ip extends dk
  implements ir
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final ip f;
  private static final long p;
  private int g;
  private Object h;
  private int i;
  private Object k;
  private Object l;
  private Object m;
  private byte n = -1;
  private int o = -1;

  static
  {
    ip localip = new ip();
    f = localip;
    localip.h = "";
    localip.i = 0;
    localip.k = "";
    localip.l = "";
    localip.m = "";
  }

  private ip()
  {
  }

  private ip(iq paramiq, byte paramByte)
  {
    super(paramiq);
  }

  private void A()
  {
    this.h = "";
    this.i = 0;
    this.k = "";
    this.l = "";
    this.m = "";
  }

  private static iq J()
  {
    return iq.u();
  }

  private iq K()
  {
    return iq.u().a(this);
  }

  private static ip a(i parami)
  {
    return iq.a((iq)iq.u().a(parami));
  }

  private static ip a(i parami, df paramdf)
  {
    return iq.a((iq)iq.u().a(parami, paramdf));
  }

  private static ip a(m paramm)
  {
    return iq.a((iq)iq.u().a(paramm));
  }

  private static ip a(m paramm, df paramdf)
  {
    return iq.a(iq.u().e(paramm, paramdf));
  }

  private static ip a(InputStream paramInputStream)
  {
    return iq.a((iq)iq.u().a(paramInputStream));
  }

  private static ip a(InputStream paramInputStream, df paramdf)
  {
    return iq.a((iq)iq.u().a(paramInputStream, paramdf));
  }

  private static ip a(byte[] paramArrayOfByte)
  {
    return iq.a((iq)iq.u().a(paramArrayOfByte));
  }

  private static ip a(byte[] paramArrayOfByte, df paramdf)
  {
    return iq.a((iq)iq.u().a(paramArrayOfByte, paramdf));
  }

  private static iq a(ip paramip)
  {
    return iq.u().a(paramip);
  }

  private static ip b(InputStream paramInputStream)
  {
    iq localiq = iq.u();
    if (localiq.b(paramInputStream));
    for (ip localip = iq.a(localiq); ; localip = null)
      return localip;
  }

  private static ip b(InputStream paramInputStream, df paramdf)
  {
    iq localiq = iq.u();
    if (localiq.b(paramInputStream, paramdf));
    for (ip localip = iq.a(localiq); ; localip = null)
      return localip;
  }

  private static iq b(dp paramdp)
  {
    return new iq(paramdp);
  }

  public static ip h()
  {
    return f;
  }

  public static final cj i()
  {
    return ih.t();
  }

  public static iq t()
  {
    return iq.u();
  }

  private static ip v()
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

  private i y()
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

  private i z()
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
      paramn.a(2, this.i);
    if ((0x4 & this.g) == 4)
      paramn.a(3, x());
    if ((0x8 & this.g) == 8)
      paramn.a(4, y());
    if ((0x10 & this.g) == 16)
      paramn.a(5, z());
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
        i2 += n.d(2, this.i);
      if ((0x4 & this.g) == 4)
        i2 += n.c(3, x());
      if ((0x8 & this.g) == 8)
        i2 += n.c(4, y());
      if ((0x10 & this.g) == 16)
        i2 += n.c(5, z());
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return ih.u();
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

  public final int m()
  {
    return this.i;
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

  public final String s()
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ip
 * JD-Core Version:    0.6.2
 */