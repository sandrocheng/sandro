package com.b.a;

import java.io.InputStream;

public final class bj extends dk
  implements bl
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final bj e;
  private static final long n;
  private int f;
  private Object g;
  private Object h;
  private Object i;
  private bm k;
  private byte l = -1;
  private int m = -1;

  static
  {
    bj localbj = new bj();
    e = localbj;
    localbj.g = "";
    localbj.h = "";
    localbj.i = "";
    localbj.k = bm.e();
  }

  private bj()
  {
  }

  private bj(bk parambk, byte paramByte)
  {
    super(parambk);
  }

  private static bj a(i parami)
  {
    return bk.a((bk)bk.s().a(parami));
  }

  private static bj a(i parami, df paramdf)
  {
    return bk.a((bk)bk.s().a(parami, paramdf));
  }

  private static bj a(m paramm)
  {
    return bk.a((bk)bk.s().a(paramm));
  }

  private static bj a(m paramm, df paramdf)
  {
    return bk.a(bk.s().e(paramm, paramdf));
  }

  private static bj a(InputStream paramInputStream)
  {
    return bk.a((bk)bk.s().a(paramInputStream));
  }

  private static bj a(InputStream paramInputStream, df paramdf)
  {
    return bk.a((bk)bk.s().a(paramInputStream, paramdf));
  }

  private static bj a(byte[] paramArrayOfByte)
  {
    return bk.a((bk)bk.s().a(paramArrayOfByte));
  }

  private static bj a(byte[] paramArrayOfByte, df paramdf)
  {
    return bk.a((bk)bk.s().a(paramArrayOfByte, paramdf));
  }

  private static bk a(bj parambj)
  {
    return bk.s().a(parambj);
  }

  private static bj b(InputStream paramInputStream)
  {
    bk localbk = bk.s();
    if (localbk.b(paramInputStream));
    for (bj localbj = bk.a(localbk); ; localbj = null)
      return localbj;
  }

  private static bj b(InputStream paramInputStream, df paramdf)
  {
    bk localbk = bk.s();
    if (localbk.b(paramInputStream, paramdf));
    for (bj localbj = bk.a(localbk); ; localbj = null)
      return localbj;
  }

  private static bk b(dp paramdp)
  {
    return new bk(paramdp);
  }

  public static bj e()
  {
    return e;
  }

  public static final cj f()
  {
    return p.r();
  }

  public static bk q()
  {
    return bk.s();
  }

  private static bj r()
  {
    return e;
  }

  private i s()
  {
    Object localObject = this.g;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.g = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i t()
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

  private i u()
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

  private void v()
  {
    this.g = "";
    this.h = "";
    this.i = "";
    this.k = bm.e();
  }

  private static bk w()
  {
    return bk.s();
  }

  private bk x()
  {
    return bk.s().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.a(1, s());
    if ((0x2 & this.f) == 2)
      paramn.a(2, t());
    if ((0x4 & this.f) == 4)
      paramn.a(3, u());
    if ((0x8 & this.f) == 8)
      paramn.b(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if ((n()) && (!this.k.a()))
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.m;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.f;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, s());
      if ((0x2 & this.f) == 2)
        i2 += n.c(2, t());
      if ((0x4 & this.f) == 4)
        i2 += n.c(3, u());
      if ((0x8 & this.f) == 8)
        i2 += n.e(4, this.k);
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return p.s();
  }

  public final String i()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.g = str;
    }
  }

  public final boolean j()
  {
    if ((0x2 & this.f) == 2);
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
    if ((0x4 & this.f) == 4);
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
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bm o()
  {
    return this.k;
  }

  public final bo p()
  {
    return this.k;
  }

  public final boolean z_()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bj
 * JD-Core Version:    0.6.2
 */