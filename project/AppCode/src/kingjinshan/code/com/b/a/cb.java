package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class cb extends dk
  implements cg
{
  public static final int a = 2;
  public static final int b = 3;
  public static final int c = 4;
  public static final int d = 5;
  public static final int e = 6;
  public static final int f = 7;
  public static final int g = 8;
  private static final cb h;
  private static final long t;
  private int i;
  private List k;
  private Object l;
  private long m;
  private long n;
  private double o;
  private i p;
  private Object q;
  private byte r = -1;
  private int s = -1;

  static
  {
    cb localcb = new cb();
    h = localcb;
    localcb.k = Collections.emptyList();
    localcb.l = "";
    localcb.m = 0L;
    localcb.n = 0L;
    localcb.o = 0.0D;
    localcb.p = i.a;
    localcb.q = "";
  }

  private cb()
  {
  }

  private cb(cc paramcc, byte paramByte)
  {
    super(paramcc);
  }

  private void A()
  {
    this.k = Collections.emptyList();
    this.l = "";
    this.m = 0L;
    this.n = 0L;
    this.o = 0.0D;
    this.p = i.a;
    this.q = "";
  }

  private static cc J()
  {
    return cc.y();
  }

  private cc K()
  {
    return cc.y().a(this);
  }

  private static cb a(i parami)
  {
    return cc.a((cc)cc.y().a(parami));
  }

  private static cb a(i parami, df paramdf)
  {
    return cc.a((cc)cc.y().a(parami, paramdf));
  }

  private static cb a(m paramm)
  {
    return cc.a((cc)cc.y().a(paramm));
  }

  private static cb a(m paramm, df paramdf)
  {
    return cc.a(cc.y().e(paramm, paramdf));
  }

  private static cb a(InputStream paramInputStream)
  {
    return cc.a((cc)cc.y().a(paramInputStream));
  }

  private static cb a(InputStream paramInputStream, df paramdf)
  {
    return cc.a((cc)cc.y().a(paramInputStream, paramdf));
  }

  private static cb a(byte[] paramArrayOfByte)
  {
    return cc.a((cc)cc.y().a(paramArrayOfByte));
  }

  private static cb a(byte[] paramArrayOfByte, df paramdf)
  {
    return cc.a((cc)cc.y().a(paramArrayOfByte, paramdf));
  }

  private static cb b(InputStream paramInputStream)
  {
    cc localcc = cc.y();
    if (localcc.b(paramInputStream));
    for (cb localcb = cc.a(localcc); ; localcb = null)
      return localcb;
  }

  private static cb b(InputStream paramInputStream, df paramdf)
  {
    cc localcc = cc.y();
    if (localcc.b(paramInputStream, paramdf));
    for (cb localcb = cc.a(localcc); ; localcb = null)
      return localcb;
  }

  private static cc b(cb paramcb)
  {
    return cc.y().a(paramcb);
  }

  private static cc b(dp paramdp)
  {
    return new cc(paramdp);
  }

  public static cb e()
  {
    return h;
  }

  public static final cj f()
  {
    return p.H();
  }

  public static cc w()
  {
    return cc.y();
  }

  private static cb x()
  {
    return h;
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

  protected final Object B()
  {
    return super.B();
  }

  public final List F_()
  {
    return this.k;
  }

  public final cd a(int paramInt)
  {
    return (cd)this.k.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    for (int j = 0; j < this.k.size(); j++)
      paramn.b(2, (ex)this.k.get(j));
    if ((0x1 & this.i) == 1)
      paramn.a(3, y());
    if ((0x2 & this.i) == 2)
      paramn.a(4, this.m);
    if ((0x4 & this.i) == 4)
      paramn.b(5, this.n);
    if ((0x8 & this.i) == 8)
    {
      double d1 = this.o;
      paramn.f(6, 1);
      paramn.b(d1);
    }
    if ((0x10 & this.i) == 16)
      paramn.a(7, this.p);
    if ((0x20 & this.i) == 32)
      paramn.a(8, z());
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.r;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= j())
          break label61;
        if (!a(i1).a())
        {
          this.r = 0;
          bool = false;
          break;
        }
      }
      label61: this.r = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int j = 0;
    int i1 = this.s;
    if (i1 != -1)
      return i1;
    int i2 = 0;
    while (i2 < this.k.size())
    {
      int i4 = j + n.e(2, (ex)this.k.get(i2));
      i2++;
      j = i4;
    }
    if ((0x1 & this.i) == 1);
    for (int i3 = j + n.c(3, y()); ; i3 = j)
    {
      if ((0x2 & this.i) == 2)
        i3 += n.d(4, this.m);
      if ((0x4 & this.i) == 4)
        i3 += n.e(5, this.n);
      if ((0x8 & this.i) == 8)
        i3 += 8 + n.p(6);
      if ((0x10 & this.i) == 16)
        i3 += n.c(7, this.p);
      if ((0x20 & this.i) == 32)
        i3 += n.c(8, z());
      i1 = i3 + b_().b();
      this.s = i1;
      break;
    }
  }

  public final cf b(int paramInt)
  {
    return (cf)this.k.get(paramInt);
  }

  protected final dv g()
  {
    return p.I();
  }

  public final List i()
  {
    return this.k;
  }

  public final int j()
  {
    return this.k.size();
  }

  public final boolean k()
  {
    if ((0x1 & this.i) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String l()
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

  public final boolean m()
  {
    if ((0x2 & this.i) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.m;
  }

  public final boolean o()
  {
    if ((0x4 & this.i) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.n;
  }

  public final boolean q()
  {
    if ((0x8 & this.i) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final double r()
  {
    return this.o;
  }

  public final boolean s()
  {
    if ((0x10 & this.i) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final i t()
  {
    return this.p;
  }

  public final boolean u()
  {
    if ((0x20 & this.i) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String v()
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cb
 * JD-Core Version:    0.6.2
 */