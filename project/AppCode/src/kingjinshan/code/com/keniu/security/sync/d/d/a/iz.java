package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class iz extends dn
  implements ja
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private iz()
  {
    iy.p();
  }

  private iz(dp paramdp, byte paramByte)
  {
    super(paramdp);
    iy.p();
  }

  private iz A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = iy.h().o();
    af_();
    return this;
  }

  private iz a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private iz b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private iz c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private iz d(ev paramev)
  {
    if ((paramev instanceof iy));
    for (iz localiz = a((iy)paramev); ; localiz = this)
    {
      return localiz;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private static cj p()
  {
    return ih.x();
  }

  private static void q()
  {
    iy.p();
  }

  private static iz r()
  {
    return new iz();
  }

  private iz s()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    return this;
  }

  private iz t()
  {
    return new iz().a(x());
  }

  private static iy u()
  {
    return iy.h();
  }

  private iy v()
  {
    iy localiy = x();
    if (!localiy.a())
      throw b(localiy);
    return localiy;
  }

  private iy w()
  {
    iy localiy = x();
    if (!localiy.a())
      throw b(localiy).a();
    return localiy;
  }

  private iy x()
  {
    iy localiy = new iy(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    iy.a(localiy, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    iy.b(localiy, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      iy.c(localiy, this.d);
      iy.a(localiy, m);
      ab_();
      return localiy;
    }
  }

  private iz y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = iy.h().k();
    af_();
    return this;
  }

  private iz z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = iy.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.y();
  }

  public final cj C()
  {
    return iy.i();
  }

  public final iz a(iy paramiy)
  {
    if (paramiy == iy.h());
    for (iz localiz = this; ; localiz = this)
    {
      return localiz;
      if (paramiy.j())
      {
        String str3 = paramiy.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramiy.l())
      {
        String str2 = paramiy.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramiy.n())
      {
        String str1 = paramiy.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramiy.b_());
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!l())
        bool = false;
      else if (!n())
        bool = false;
      else
        bool = true;
    }
  }

  public final iz e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i = paramm.a();
      switch (i)
      {
      default:
        if (!a(paramm, localgi, paramdf, i))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (iz localiz = this; ; localiz = this)
        {
          return localiz;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
      }
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject = this.b;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.b = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject = this.c;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.c = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject = this.d;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.d = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.iz
 * JD-Core Version:    0.6.2
 */