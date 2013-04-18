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

public final class jn extends dk
  implements jp
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final jn e;
  private static final long n;
  private int f;
  private ge g;
  private Object h;
  private int i;
  private Object k;
  private byte l = -1;
  private int m = -1;

  static
  {
    jn localjn = new jn();
    e = localjn;
    localjn.g = ge.h();
    localjn.h = "";
    localjn.i = 0;
    localjn.k = "";
  }

  private jn()
  {
  }

  private jn(jo paramjo, byte paramByte)
  {
    super(paramjo);
  }

  private static jn a(i parami)
  {
    return jo.a((jo)jo.i().a(parami));
  }

  private static jn a(i parami, df paramdf)
  {
    return jo.a((jo)jo.i().a(parami, paramdf));
  }

  private static jn a(m paramm)
  {
    return jo.a((jo)jo.i().a(paramm));
  }

  private static jn a(m paramm, df paramdf)
  {
    return jo.a(jo.i().e(paramm, paramdf));
  }

  public static jn a(InputStream paramInputStream)
  {
    return jo.a((jo)jo.i().a(paramInputStream));
  }

  private static jn a(InputStream paramInputStream, df paramdf)
  {
    return jo.a((jo)jo.i().a(paramInputStream, paramdf));
  }

  private static jn a(byte[] paramArrayOfByte)
  {
    return jo.a((jo)jo.i().a(paramArrayOfByte));
  }

  private static jn a(byte[] paramArrayOfByte, df paramdf)
  {
    return jo.a((jo)jo.i().a(paramArrayOfByte, paramdf));
  }

  private static jo a(jn paramjn)
  {
    return jo.i().a(paramjn);
  }

  private static jn b(InputStream paramInputStream)
  {
    jo localjo = jo.i();
    if (localjo.b(paramInputStream));
    for (jn localjn = jo.a(localjo); ; localjn = null)
      return localjn;
  }

  private static jn b(InputStream paramInputStream, df paramdf)
  {
    jo localjo = jo.i();
    if (localjo.b(paramInputStream, paramdf));
    for (jn localjn = jo.a(localjo); ; localjn = null)
      return localjn;
  }

  private static jo b(dp paramdp)
  {
    return new jo(paramdp);
  }

  public static jn h()
  {
    return e;
  }

  public static final cj i()
  {
    return ih.d();
  }

  private static jn t()
  {
    return e;
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

  private void w()
  {
    this.g = ge.h();
    this.h = "";
    this.i = 0;
    this.k = "";
  }

  private static jo x()
  {
    return jo.i();
  }

  private static jo y()
  {
    return jo.i();
  }

  private jo z()
  {
    return jo.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.b(1, this.g);
    if ((0x2 & this.f) == 2)
      paramn.a(2, u());
    if ((0x4 & this.f) == 4)
      paramn.a(3, this.i);
    if ((0x8 & this.f) == 8)
      paramn.a(4, v());
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
      else if (!this.g.a())
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
        i2 = 0 + n.e(1, this.g);
      if ((0x2 & this.f) == 2)
        i2 += n.c(2, u());
      if ((0x4 & this.f) == 4)
        i2 += n.d(3, this.i);
      if ((0x8 & this.f) == 8)
        i2 += n.c(4, v());
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return ih.e();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.g;
  }

  public final gg l()
  {
    return this.g;
  }

  public final boolean m()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String n()
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

  public final boolean o()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int p()
  {
    return this.i;
  }

  public final boolean q()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String r()
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jn
 * JD-Core Version:    0.6.2
 */