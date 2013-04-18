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

public final class gh extends dk
  implements gm
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  private static final gh k;
  private static final long x;
  private int l;
  private Object m;
  private Object n;
  private Object o;
  private Object p;
  private long q;
  private Object r;
  private long s;
  private long t;
  private int u;
  private byte v = -1;
  private int w = -1;

  static
  {
    gh localgh = new gh();
    k = localgh;
    localgh.m = "";
    localgh.n = "";
    localgh.o = "";
    localgh.p = "";
    localgh.q = 0L;
    localgh.r = "";
    localgh.s = 0L;
    localgh.t = 0L;
    localgh.u = 0;
  }

  private gh()
  {
  }

  private gh(gi paramgi, byte paramByte)
  {
    super(paramgi);
  }

  private static gh K()
  {
    return k;
  }

  private i L()
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

  private i M()
  {
    Object localObject = this.n;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.n = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i N()
  {
    Object localObject = this.o;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.o = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i O()
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

  private i P()
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

  private void Q()
  {
    this.m = "";
    this.n = "";
    this.o = "";
    this.p = "";
    this.q = 0L;
    this.r = "";
    this.s = 0L;
    this.t = 0L;
    this.u = 0;
  }

  private static gi R()
  {
    return gi.i();
  }

  private static gi S()
  {
    return gi.i();
  }

  private gi T()
  {
    return gi.i().a(this);
  }

  private static gh a(i parami)
  {
    return gi.a((gi)gi.i().a(parami));
  }

  private static gh a(i parami, df paramdf)
  {
    return gi.a((gi)gi.i().a(parami, paramdf));
  }

  private static gh a(m paramm)
  {
    return gi.a((gi)gi.i().a(paramm));
  }

  private static gh a(m paramm, df paramdf)
  {
    return gi.a(gi.i().e(paramm, paramdf));
  }

  private static gh a(InputStream paramInputStream)
  {
    return gi.a((gi)gi.i().a(paramInputStream));
  }

  private static gh a(InputStream paramInputStream, df paramdf)
  {
    return gi.a((gi)gi.i().a(paramInputStream, paramdf));
  }

  private static gh a(byte[] paramArrayOfByte)
  {
    return gi.a((gi)gi.i().a(paramArrayOfByte));
  }

  private static gh a(byte[] paramArrayOfByte, df paramdf)
  {
    return gi.a((gi)gi.i().a(paramArrayOfByte, paramdf));
  }

  private static gi a(gh paramgh)
  {
    return gi.i().a(paramgh);
  }

  private static gh b(InputStream paramInputStream)
  {
    gi localgi = gi.i();
    if (localgi.b(paramInputStream));
    for (gh localgh = gi.a(localgi); ; localgh = null)
      return localgh;
  }

  private static gh b(InputStream paramInputStream, df paramdf)
  {
    gi localgi = gi.i();
    if (localgi.b(paramInputStream, paramdf));
    for (gh localgh = gi.a(localgi); ; localgh = null)
      return localgh;
  }

  private static gi b(dp paramdp)
  {
    return new gi(paramdp);
  }

  public static gh h()
  {
    return k;
  }

  public static final cj i()
  {
    return gc.f();
  }

  public final int A()
  {
    return this.u;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.l) == 1)
      paramn.a(1, L());
    if ((0x2 & this.l) == 2)
      paramn.a(2, M());
    if ((0x4 & this.l) == 4)
      paramn.a(3, N());
    if ((0x8 & this.l) == 8)
      paramn.a(4, O());
    if ((0x10 & this.l) == 16)
      paramn.b(5, this.q);
    if ((0x20 & this.l) == 32)
      paramn.a(6, P());
    if ((0x40 & this.l) == 64)
      paramn.b(7, this.s);
    if ((0x80 & this.l) == 128)
      paramn.b(8, this.t);
    if ((0x100 & this.l) == 256)
      paramn.a(9, this.u);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.v;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.v = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int j = this.w;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.l;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, L());
      if ((0x2 & this.l) == 2)
        i2 += n.c(2, M());
      if ((0x4 & this.l) == 4)
        i2 += n.c(3, N());
      if ((0x8 & this.l) == 8)
        i2 += n.c(4, O());
      if ((0x10 & this.l) == 16)
        i2 += n.e(5, this.q);
      if ((0x20 & this.l) == 32)
        i2 += n.c(6, P());
      if ((0x40 & this.l) == 64)
        i2 += n.e(7, this.s);
      if ((0x80 & this.l) == 128)
        i2 += n.e(8, this.t);
      if ((0x100 & this.l) == 256)
        i2 += n.d(9, this.u);
      j = i2 + b_().b();
      this.w = j;
    }
  }

  protected final dv g()
  {
    return gc.g();
  }

  public final boolean j()
  {
    if ((0x1 & this.l) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x2 & this.l) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject1 = this.n;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.n = str;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.l) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.o;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.o = str;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.l) == 8);
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
    if ((0x10 & this.l) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
  {
    return this.q;
  }

  public final boolean t()
  {
    if ((0x20 & this.l) == 32);
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
    if ((0x40 & this.l) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long w()
  {
    return this.s;
  }

  public final boolean x()
  {
    if ((0x80 & this.l) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long y()
  {
    return this.t;
  }

  public final boolean z()
  {
    if ((0x100 & this.l) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gh
 * JD-Core Version:    0.6.2
 */