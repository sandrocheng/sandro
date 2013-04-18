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

public final class hc extends dk
  implements hg
{
  private static final long B = 0L;
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  public static final int k = 10;
  public static final int l = 11;
  private static final hc m;
  private int A = -1;
  private int n;
  private gj o;
  private Object p;
  private Object q;
  private boolean r;
  private int s;
  private int t;
  private int u;
  private long v;
  private Object w;
  private Object x;
  private int y;
  private byte z = -1;

  static
  {
    hc localhc = new hc();
    m = localhc;
    localhc.o = gj.h();
    localhc.p = "";
    localhc.q = "";
    localhc.r = false;
    localhc.s = 0;
    localhc.t = 0;
    localhc.u = 0;
    localhc.v = 0L;
    localhc.w = "";
    localhc.x = "";
    localhc.y = 0;
  }

  private hc()
  {
  }

  private hc(hd paramhd, byte paramByte)
  {
    super(paramhd);
  }

  public static hd O()
  {
    return hd.E();
  }

  private static hc Q()
  {
    return m;
  }

  private i R()
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

  private i S()
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

  private i T()
  {
    Object localObject = this.w;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.w = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i U()
  {
    Object localObject = this.x;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.x = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void V()
  {
    this.o = gj.h();
    this.p = "";
    this.q = "";
    this.r = false;
    this.s = 0;
    this.t = 0;
    this.u = 0;
    this.v = 0L;
    this.w = "";
    this.x = "";
    this.y = 0;
  }

  private static hd W()
  {
    return hd.E();
  }

  private hd X()
  {
    return hd.E().a(this);
  }

  private static hc a(i parami)
  {
    return hd.a((hd)hd.E().a(parami));
  }

  private static hc a(i parami, df paramdf)
  {
    return hd.a((hd)hd.E().a(parami, paramdf));
  }

  private static hc a(m paramm)
  {
    return hd.a((hd)hd.E().a(paramm));
  }

  private static hc a(m paramm, df paramdf)
  {
    return hd.a(hd.E().e(paramm, paramdf));
  }

  private static hc a(InputStream paramInputStream)
  {
    return hd.a((hd)hd.E().a(paramInputStream));
  }

  private static hc a(InputStream paramInputStream, df paramdf)
  {
    return hd.a((hd)hd.E().a(paramInputStream, paramdf));
  }

  private static hc a(byte[] paramArrayOfByte)
  {
    return hd.a((hd)hd.E().a(paramArrayOfByte));
  }

  private static hc a(byte[] paramArrayOfByte, df paramdf)
  {
    return hd.a((hd)hd.E().a(paramArrayOfByte, paramdf));
  }

  public static hd a(hc paramhc)
  {
    return hd.E().a(paramhc);
  }

  private static hc b(InputStream paramInputStream)
  {
    hd localhd = hd.E();
    if (localhd.b(paramInputStream));
    for (hc localhc = hd.a(localhd); ; localhc = null)
      return localhc;
  }

  private static hc b(InputStream paramInputStream, df paramdf)
  {
    hd localhd = hd.E();
    if (localhd.b(paramInputStream, paramdf));
    for (hc localhc = hd.a(localhd); ; localhc = null)
      return localhc;
  }

  private static hd b(dp paramdp)
  {
    return new hd(paramdp);
  }

  public static hc h()
  {
    return m;
  }

  public static final cj i()
  {
    return gc.l();
  }

  public final boolean A()
  {
    if ((0x100 & this.n) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final int N()
  {
    return this.y;
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.n) == 1)
      paramn.b(1, this.o);
    if ((0x2 & this.n) == 2)
      paramn.a(2, R());
    if ((0x4 & this.n) == 4)
      paramn.a(3, S());
    if ((0x8 & this.n) == 8)
      paramn.a(4, this.r);
    if ((0x10 & this.n) == 16)
      paramn.a(5, this.s);
    if ((0x20 & this.n) == 32)
      paramn.a(6, this.t);
    if ((0x40 & this.n) == 64)
      paramn.a(7, this.u);
    if ((0x80 & this.n) == 128)
      paramn.b(8, this.v);
    if ((0x100 & this.n) == 256)
      paramn.a(9, T());
    if ((0x200 & this.n) == 512)
      paramn.a(10, U());
    if ((0x400 & this.n) == 1024)
      paramn.a(11, this.y);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.z;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.z = 1;
      bool = true;
    }
  }

  public final String ao_()
  {
    Object localObject1 = this.w;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.w = str;
    }
  }

  public final boolean ap_()
  {
    if ((0x200 & this.n) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String aq_()
  {
    Object localObject1 = this.x;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.x = str;
    }
  }

  public final boolean ar_()
  {
    if ((0x400 & this.n) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int b()
  {
    int j = this.A;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.n;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.e(1, this.o);
      if ((0x2 & this.n) == 2)
        i2 += n.c(2, R());
      if ((0x4 & this.n) == 4)
        i2 += n.c(3, S());
      if ((0x8 & this.n) == 8)
        i2 += n.b();
      if ((0x10 & this.n) == 16)
        i2 += n.d(5, this.s);
      if ((0x20 & this.n) == 32)
        i2 += n.d(6, this.t);
      if ((0x40 & this.n) == 64)
        i2 += n.d(7, this.u);
      if ((0x80 & this.n) == 128)
        i2 += n.e(8, this.v);
      if ((0x100 & this.n) == 256)
        i2 += n.c(9, T());
      if ((0x200 & this.n) == 512)
        i2 += n.c(10, U());
      if ((0x400 & this.n) == 1024)
        i2 += n.d(11, this.y);
      j = i2 + b_().b();
      this.A = j;
    }
  }

  protected final dv g()
  {
    return gc.m();
  }

  public final boolean j()
  {
    if ((0x1 & this.n) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj k()
  {
    return this.o;
  }

  public final gl l()
  {
    return this.o;
  }

  public final boolean m()
  {
    if ((0x2 & this.n) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String n()
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

  public final boolean o()
  {
    if ((0x4 & this.n) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String p()
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

  public final boolean q()
  {
    if ((0x8 & this.n) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean r()
  {
    return this.r;
  }

  public final boolean s()
  {
    if ((0x10 & this.n) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int t()
  {
    return this.s;
  }

  public final boolean u()
  {
    if ((0x20 & this.n) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int v()
  {
    return this.t;
  }

  public final boolean w()
  {
    if ((0x40 & this.n) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int x()
  {
    return this.u;
  }

  public final boolean y()
  {
    if ((0x80 & this.n) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long z()
  {
    return this.v;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hc
 * JD-Core Version:    0.6.2
 */