package com.b.a;

import java.io.InputStream;

public final class aj extends dk
  implements ap
{
  public static final int a = 1;
  public static final int b = 3;
  public static final int c = 4;
  public static final int d = 5;
  public static final int e = 6;
  public static final int f = 2;
  public static final int g = 7;
  public static final int h = 8;
  private static final aj i;
  private static final long v;
  private int k;
  private Object l;
  private int m;
  private al n;
  private an o;
  private Object p;
  private Object q;
  private Object r;
  private aq s;
  private byte t = -1;
  private int u = -1;

  static
  {
    aj localaj = new aj();
    i = localaj;
    localaj.l = "";
    localaj.m = 0;
    localaj.n = al.a;
    localaj.o = an.a;
    localaj.p = "";
    localaj.q = "";
    localaj.r = "";
    localaj.s = aq.e();
  }

  private aj()
  {
  }

  private aj(ak paramak, byte paramByte)
  {
    super(paramak);
  }

  private i A()
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

  private i J()
  {
    Object localObject = this.p;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.p = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i K()
  {
    Object localObject = this.q;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.q = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i L()
  {
    Object localObject = this.r;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.r = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void M()
  {
    this.l = "";
    this.m = 0;
    this.n = al.a;
    this.o = an.a;
    this.p = "";
    this.q = "";
    this.r = "";
    this.s = aq.e();
  }

  private static ak N()
  {
    return ak.A();
  }

  private ak O()
  {
    return ak.A().a(this);
  }

  private static aj a(i parami)
  {
    return ak.a((ak)ak.A().a(parami));
  }

  private static aj a(i parami, df paramdf)
  {
    return ak.a((ak)ak.A().a(parami, paramdf));
  }

  private static aj a(m paramm)
  {
    return ak.a((ak)ak.A().a(paramm));
  }

  private static aj a(m paramm, df paramdf)
  {
    return ak.a(ak.A().e(paramm, paramdf));
  }

  private static aj a(InputStream paramInputStream)
  {
    return ak.a((ak)ak.A().a(paramInputStream));
  }

  private static aj a(InputStream paramInputStream, df paramdf)
  {
    return ak.a((ak)ak.A().a(paramInputStream, paramdf));
  }

  private static aj a(byte[] paramArrayOfByte)
  {
    return ak.a((ak)ak.A().a(paramArrayOfByte));
  }

  private static aj a(byte[] paramArrayOfByte, df paramdf)
  {
    return ak.a((ak)ak.A().a(paramArrayOfByte, paramdf));
  }

  private static ak a(aj paramaj)
  {
    return ak.A().a(paramaj);
  }

  private static aj b(InputStream paramInputStream)
  {
    ak localak = ak.A();
    if (localak.b(paramInputStream));
    for (aj localaj = ak.a(localak); ; localaj = null)
      return localaj;
  }

  private static aj b(InputStream paramInputStream, df paramdf)
  {
    ak localak = ak.A();
    if (localak.b(paramInputStream, paramdf));
    for (aj localaj = ak.a(localak); ; localaj = null)
      return localaj;
  }

  private static ak b(dp paramdp)
  {
    return new ak(paramdp);
  }

  public static aj e()
  {
    return i;
  }

  public static final cj f()
  {
    return p.j();
  }

  public static ak y()
  {
    return ak.A();
  }

  private static aj z()
  {
    return i;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.k) == 1)
      paramn.a(1, A());
    if ((0x20 & this.k) == 32)
      paramn.a(2, K());
    if ((0x2 & this.k) == 2)
      paramn.a(3, this.m);
    if ((0x4 & this.k) == 4)
      paramn.c(4, this.n.H_());
    if ((0x8 & this.k) == 8)
      paramn.c(5, this.o.H_());
    if ((0x10 & this.k) == 16)
      paramn.a(6, J());
    if ((0x40 & this.k) == 64)
      paramn.a(7, L());
    if ((0x80 & this.k) == 128)
      paramn.b(8, this.s);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.t;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if ((v()) && (!this.s.a()))
      {
        this.t = 0;
        bool = false;
      }
      else
      {
        this.t = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.u;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.k;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, A());
      if ((0x20 & this.k) == 32)
        i2 += n.c(2, K());
      if ((0x2 & this.k) == 2)
        i2 += n.d(3, this.m);
      if ((0x4 & this.k) == 4)
        i2 += n.e(4, this.n.H_());
      if ((0x8 & this.k) == 8)
        i2 += n.e(5, this.o.H_());
      if ((0x10 & this.k) == 16)
        i2 += n.c(6, J());
      if ((0x40 & this.k) == 64)
        i2 += n.c(7, L());
      if ((0x80 & this.k) == 128)
        i2 += n.e(8, this.s);
      j = i2 + b_().b();
      this.u = j;
    }
  }

  protected final dv g()
  {
    return p.k();
  }

  public final String i()
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

  public final boolean j()
  {
    if ((0x2 & this.k) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean j_()
  {
    if ((0x1 & this.k) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.m;
  }

  public final boolean l()
  {
    if ((0x4 & this.k) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final al m()
  {
    return this.n;
  }

  public final boolean n()
  {
    if ((0x8 & this.k) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final an o()
  {
    return this.o;
  }

  public final boolean p()
  {
    if ((0x10 & this.k) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String q()
  {
    Object localObject1 = this.p;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.p = str;
    }
  }

  public final boolean r()
  {
    if ((0x20 & this.k) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String s()
  {
    Object localObject1 = this.q;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.q = str;
    }
  }

  public final boolean t()
  {
    if ((0x40 & this.k) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String u()
  {
    Object localObject1 = this.r;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.r = str;
    }
  }

  public final boolean v()
  {
    if ((0x80 & this.k) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final aq w()
  {
    return this.s;
  }

  public final au x()
  {
    return this.s;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.aj
 * JD-Core Version:    0.6.2
 */