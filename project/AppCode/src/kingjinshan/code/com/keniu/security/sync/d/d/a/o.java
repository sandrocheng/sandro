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

public final class o extends dk
  implements q
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  private static final o g;
  private static final long r;
  private int h;
  private Object i;
  private gn k;
  private Object l;
  private int m;
  private long n;
  private int o;
  private byte p = -1;
  private int q = -1;

  static
  {
    o localo = new o();
    g = localo;
    localo.i = "";
    localo.k = gn.h();
    localo.l = "";
    localo.m = 0;
    localo.n = 0L;
    localo.o = 0;
  }

  private o()
  {
  }

  private o(p paramp, byte paramByte)
  {
    super(paramp);
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

  private void J()
  {
    this.i = "";
    this.k = gn.h();
    this.l = "";
    this.m = 0;
    this.n = 0L;
    this.o = 0;
  }

  private static p K()
  {
    return p.w();
  }

  private p L()
  {
    return p.w().a(this);
  }

  private static o a(i parami)
  {
    return p.a((p)p.w().a(parami));
  }

  private static o a(i parami, df paramdf)
  {
    return p.a((p)p.w().a(parami, paramdf));
  }

  private static o a(m paramm)
  {
    return p.a((p)p.w().a(paramm));
  }

  private static o a(m paramm, df paramdf)
  {
    return p.a(p.w().e(paramm, paramdf));
  }

  private static o a(InputStream paramInputStream)
  {
    return p.a((p)p.w().a(paramInputStream));
  }

  private static o a(InputStream paramInputStream, df paramdf)
  {
    return p.a((p)p.w().a(paramInputStream, paramdf));
  }

  private static o a(byte[] paramArrayOfByte)
  {
    return p.a((p)p.w().a(paramArrayOfByte));
  }

  private static o a(byte[] paramArrayOfByte, df paramdf)
  {
    return p.a((p)p.w().a(paramArrayOfByte, paramdf));
  }

  private static p a(o paramo)
  {
    return p.w().a(paramo);
  }

  private static o b(InputStream paramInputStream)
  {
    p localp = p.w();
    if (localp.b(paramInputStream));
    for (o localo = p.a(localp); ; localo = null)
      return localo;
  }

  private static o b(InputStream paramInputStream, df paramdf)
  {
    p localp = p.w();
    if (localp.b(paramInputStream, paramdf));
    for (o localo = p.a(localp); ; localo = null)
      return localo;
  }

  private static p b(dp paramdp)
  {
    return new p(paramdp);
  }

  public static o h()
  {
    return g;
  }

  public static final cj i()
  {
    return a.T();
  }

  public static p w()
  {
    return p.w();
  }

  private static o y()
  {
    return g;
  }

  private i z()
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

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.h) == 1)
      paramn.a(1, z());
    if ((0x2 & this.h) == 2)
      paramn.b(2, this.k);
    if ((0x4 & this.h) == 4)
      paramn.a(3, A());
    if ((0x8 & this.h) == 8)
      paramn.a(4, this.m);
    if ((0x10 & this.h) == 16)
      paramn.b(5, this.n);
    if ((0x20 & this.h) == 32)
      paramn.a(6, this.o);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.p;
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
        this.p = 0;
        bool = false;
      }
      else if (!l())
      {
        this.p = 0;
        bool = false;
      }
      else if (!o())
      {
        this.p = 0;
        bool = false;
      }
      else if (!q())
      {
        this.p = 0;
        bool = false;
      }
      else if (!this.k.a())
      {
        this.p = 0;
        bool = false;
      }
      else
      {
        this.p = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.q;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.h;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, z());
      if ((0x2 & this.h) == 2)
        i2 += n.e(2, this.k);
      if ((0x4 & this.h) == 4)
        i2 += n.c(3, A());
      if ((0x8 & this.h) == 8)
        i2 += n.d(4, this.m);
      if ((0x10 & this.h) == 16)
        i2 += n.e(5, this.n);
      if ((0x20 & this.h) == 32)
        i2 += n.d(6, this.o);
      j = i2 + b_().b();
      this.q = j;
    }
  }

  protected final dv g()
  {
    return a.U();
  }

  public final boolean j()
  {
    if ((0x1 & this.h) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x2 & this.h) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn m()
  {
    return this.k;
  }

  public final gp n()
  {
    return this.k;
  }

  public final boolean o()
  {
    if ((0x4 & this.h) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String p()
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

  public final boolean q()
  {
    if ((0x8 & this.h) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int r()
  {
    return this.m;
  }

  public final boolean s()
  {
    if ((0x10 & this.h) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long t()
  {
    return this.n;
  }

  public final boolean u()
  {
    if ((0x20 & this.h) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int v()
  {
    return this.o;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.o
 * JD-Core Version:    0.6.2
 */