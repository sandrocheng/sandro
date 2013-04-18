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

public final class aa extends dk
  implements ac
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final aa e;
  private static final long n;
  private int f;
  private Object g;
  private Object h;
  private int i;
  private int k;
  private byte l = -1;
  private int m = -1;

  static
  {
    aa localaa = new aa();
    e = localaa;
    localaa.g = "";
    localaa.h = "";
    localaa.i = 0;
    localaa.k = 0;
  }

  private aa()
  {
  }

  private aa(ab paramab, byte paramByte)
  {
    super(paramab);
  }

  private static aa a(i parami)
  {
    return ab.a((ab)ab.r().a(parami));
  }

  private static aa a(i parami, df paramdf)
  {
    return ab.a((ab)ab.r().a(parami, paramdf));
  }

  private static aa a(m paramm)
  {
    return ab.a((ab)ab.r().a(paramm));
  }

  private static aa a(m paramm, df paramdf)
  {
    return ab.a(ab.r().e(paramm, paramdf));
  }

  private static aa a(InputStream paramInputStream)
  {
    return ab.a((ab)ab.r().a(paramInputStream));
  }

  private static aa a(InputStream paramInputStream, df paramdf)
  {
    return ab.a((ab)ab.r().a(paramInputStream, paramdf));
  }

  private static aa a(byte[] paramArrayOfByte)
  {
    return ab.a((ab)ab.r().a(paramArrayOfByte));
  }

  private static aa a(byte[] paramArrayOfByte, df paramdf)
  {
    return ab.a((ab)ab.r().a(paramArrayOfByte, paramdf));
  }

  private static ab a(aa paramaa)
  {
    return ab.r().a(paramaa);
  }

  private static aa b(InputStream paramInputStream)
  {
    ab localab = ab.r();
    if (localab.b(paramInputStream));
    for (aa localaa = ab.a(localab); ; localaa = null)
      return localaa;
  }

  private static aa b(InputStream paramInputStream, df paramdf)
  {
    ab localab = ab.r();
    if (localab.b(paramInputStream, paramdf));
    for (aa localaa = ab.a(localab); ; localaa = null)
      return localaa;
  }

  private static ab b(dp paramdp)
  {
    return new ab(paramdp);
  }

  public static aa h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.j();
  }

  public static ab r()
  {
    return ab.r();
  }

  private static aa t()
  {
    return e;
  }

  private i u()
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

  private i v()
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

  private void w()
  {
    this.g = "";
    this.h = "";
    this.i = 0;
    this.k = 0;
  }

  private static ab x()
  {
    return ab.r();
  }

  private ab y()
  {
    return ab.r().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.a(1, u());
    if ((0x2 & this.f) == 2)
      paramn.a(2, v());
    if ((0x4 & this.f) == 4)
      paramn.a(3, this.i);
    if ((0x8 & this.f) == 8)
      paramn.a(4, this.k);
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
      else if (!l())
      {
        this.l = 0;
        bool = false;
      }
      else if (!n())
      {
        this.l = 0;
        bool = false;
      }
      else if (!p())
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
        i2 = 0 + n.c(1, u());
      if ((0x2 & this.f) == 2)
        i2 += n.c(2, v());
      if ((0x4 & this.f) == 4)
        i2 += n.d(3, this.i);
      if ((0x8 & this.f) == 8)
        i2 += n.d(4, this.k);
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return a.k();
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

  public final int o()
  {
    return this.i;
  }

  public final boolean p()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.aa
 * JD-Core Version:    0.6.2
 */