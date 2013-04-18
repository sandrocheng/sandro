package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class f extends dk
  implements h
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  private static final f f;
  private static final long p;
  private int g;
  private ge h;
  private gj i;
  private gy k;
  private hc l;
  private Object m;
  private byte n = -1;
  private int o = -1;

  static
  {
    f localf = new f();
    f = localf;
    localf.h = ge.h();
    localf.i = gj.h();
    localf.k = gy.h();
    localf.l = hc.h();
    localf.m = "";
  }

  private f()
  {
  }

  private f(g paramg, byte paramByte)
  {
    super(paramg);
  }

  private void A()
  {
    this.h = ge.h();
    this.i = gj.h();
    this.k = gy.h();
    this.l = hc.h();
    this.m = "";
  }

  private static g J()
  {
    return g.i();
  }

  private static g K()
  {
    return g.i();
  }

  private g L()
  {
    return g.i().a(this);
  }

  private static f a(i parami)
  {
    return g.a((g)g.i().a(parami));
  }

  private static f a(i parami, df paramdf)
  {
    return g.a((g)g.i().a(parami, paramdf));
  }

  private static f a(m paramm)
  {
    return g.a((g)g.i().a(paramm));
  }

  private static f a(m paramm, df paramdf)
  {
    return g.a(g.i().e(paramm, paramdf));
  }

  private static f a(InputStream paramInputStream)
  {
    return g.a((g)g.i().a(paramInputStream));
  }

  private static f a(InputStream paramInputStream, df paramdf)
  {
    return g.a((g)g.i().a(paramInputStream, paramdf));
  }

  private static f a(byte[] paramArrayOfByte)
  {
    return g.a((g)g.i().a(paramArrayOfByte));
  }

  private static f a(byte[] paramArrayOfByte, df paramdf)
  {
    return g.a((g)g.i().a(paramArrayOfByte, paramdf));
  }

  private static g a(f paramf)
  {
    return g.i().a(paramf);
  }

  private static f b(InputStream paramInputStream)
  {
    g localg = g.i();
    if (localg.b(paramInputStream));
    for (f localf = g.a(localg); ; localf = null)
      return localf;
  }

  private static f b(InputStream paramInputStream, df paramdf)
  {
    g localg = g.i();
    if (localg.b(paramInputStream, paramdf));
    for (f localf = g.a(localg); ; localf = null)
      return localf;
  }

  private static g b(dp paramdp)
  {
    return new g(paramdp);
  }

  public static f h()
  {
    return f;
  }

  public static final cj i()
  {
    return a.ax();
  }

  private static f y()
  {
    return f;
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
      paramn.b(1, this.h);
    if ((0x2 & this.g) == 2)
      paramn.b(2, this.i);
    if ((0x4 & this.g) == 4)
      paramn.b(3, this.k);
    if ((0x8 & this.g) == 8)
      paramn.b(4, this.l);
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
      else if (!this.h.a())
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
        i2 = 0 + n.e(1, this.h);
      if ((0x2 & this.g) == 2)
        i2 += n.e(2, this.i);
      if ((0x4 & this.g) == 4)
        i2 += n.e(3, this.k);
      if ((0x8 & this.g) == 8)
        i2 += n.e(4, this.l);
      if ((0x10 & this.g) == 16)
        i2 += n.c(5, z());
      j = i2 + b_().b();
      this.o = j;
    }
  }

  protected final dv g()
  {
    return a.ay();
  }

  public final boolean j()
  {
    if ((0x1 & this.g) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.h;
  }

  public final gg l()
  {
    return this.h;
  }

  public final boolean m()
  {
    if ((0x2 & this.g) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj n()
  {
    return this.i;
  }

  public final gl o()
  {
    return this.i;
  }

  public final boolean p()
  {
    if ((0x4 & this.g) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.k;
  }

  public final ha r()
  {
    return this.k;
  }

  public final boolean s()
  {
    if ((0x8 & this.g) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hc t()
  {
    return this.l;
  }

  public final hg u()
  {
    return this.l;
  }

  public final boolean v()
  {
    if ((0x10 & this.g) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String w()
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.f
 * JD-Core Version:    0.6.2
 */