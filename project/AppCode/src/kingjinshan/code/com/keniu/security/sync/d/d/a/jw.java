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

public final class jw extends dk
  implements jy
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final jw e;
  private static final long n;
  private int f;
  private Object g;
  private Object h;
  private Object i;
  private Object k;
  private byte l = -1;
  private int m = -1;

  static
  {
    jw localjw = new jw();
    e = localjw;
    localjw.g = "";
    localjw.h = "";
    localjw.i = "";
    localjw.k = "";
  }

  private jw()
  {
  }

  private jw(jx paramjx, byte paramByte)
  {
    super(paramjx);
  }

  private jx A()
  {
    return jx.i().a(this);
  }

  private static jw a(i parami)
  {
    return jx.a((jx)jx.i().a(parami));
  }

  private static jw a(i parami, df paramdf)
  {
    return jx.a((jx)jx.i().a(parami, paramdf));
  }

  private static jw a(m paramm)
  {
    return jx.a((jx)jx.i().a(paramm));
  }

  private static jw a(m paramm, df paramdf)
  {
    return jx.a(jx.i().e(paramm, paramdf));
  }

  private static jw a(InputStream paramInputStream)
  {
    return jx.a((jx)jx.i().a(paramInputStream));
  }

  private static jw a(InputStream paramInputStream, df paramdf)
  {
    return jx.a((jx)jx.i().a(paramInputStream, paramdf));
  }

  private static jw a(byte[] paramArrayOfByte)
  {
    return jx.a((jx)jx.i().a(paramArrayOfByte));
  }

  private static jw a(byte[] paramArrayOfByte, df paramdf)
  {
    return jx.a((jx)jx.i().a(paramArrayOfByte, paramdf));
  }

  private static jx a(jw paramjw)
  {
    return jx.i().a(paramjw);
  }

  private static jw b(InputStream paramInputStream)
  {
    jx localjx = jx.i();
    if (localjx.b(paramInputStream));
    for (jw localjw = jx.a(localjx); ; localjw = null)
      return localjw;
  }

  private static jw b(InputStream paramInputStream, df paramdf)
  {
    jx localjx = jx.i();
    if (localjx.b(paramInputStream, paramdf));
    for (jw localjw = jx.a(localjx); ; localjw = null)
      return localjw;
  }

  private static jx b(dp paramdp)
  {
    return new jx(paramdp);
  }

  public static jw h()
  {
    return e;
  }

  public static final cj i()
  {
    return ih.f();
  }

  private static jw s()
  {
    return e;
  }

  private i t()
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

  private i u()
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

  private i v()
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

  private i w()
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

  private void x()
  {
    this.g = "";
    this.h = "";
    this.i = "";
    this.k = "";
  }

  private static jx y()
  {
    return jx.i();
  }

  private static jx z()
  {
    return jx.i();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.a(1, t());
    if ((0x2 & this.f) == 2)
      paramn.a(2, u());
    if ((0x4 & this.f) == 4)
      paramn.a(3, v());
    if ((0x8 & this.f) == 8)
      paramn.a(4, w());
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
      if (!j())
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
        i2 = 0 + n.c(1, t());
      if ((0x2 & this.f) == 2)
        i2 += n.c(2, u());
      if ((0x4 & this.f) == 4)
        i2 += n.c(3, v());
      if ((0x8 & this.f) == 8)
        i2 += n.c(4, w());
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return ih.g();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
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

  public final boolean n()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
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

  public final boolean p()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String q()
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.jw
 * JD-Core Version:    0.6.2
 */