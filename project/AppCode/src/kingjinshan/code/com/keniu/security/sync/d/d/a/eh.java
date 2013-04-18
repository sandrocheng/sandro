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

public final class eh extends dn
  implements ei
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;

  private eh()
  {
    eg.r();
  }

  private eh(dp paramdp, byte paramByte)
  {
    super(paramdp);
    eg.r();
  }

  private eh A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = eg.h().k();
    af_();
    return this;
  }

  private eh D()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = eg.h().m();
    af_();
    return this;
  }

  private eh E()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = eg.h().o();
    af_();
    return this;
  }

  private eh N()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private eh a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private eh a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private eh b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private eh c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private eh d(ev paramev)
  {
    if ((paramev instanceof eg));
    for (eh localeh = a((eg)paramev); ; localeh = this)
    {
      return localeh;
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

  private static cj r()
  {
    return a.aj();
  }

  private static void s()
  {
    eg.r();
  }

  private static eh t()
  {
    return new eh();
  }

  private eh u()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    this.a = (0xFFFFFFF7 & this.a);
    return this;
  }

  private eh v()
  {
    return new eh().a(z());
  }

  private static eg w()
  {
    return eg.h();
  }

  private eg x()
  {
    eg localeg = z();
    if (!localeg.a())
      throw b(localeg);
    return localeg;
  }

  private eg y()
  {
    eg localeg = z();
    if (!localeg.a())
      throw b(localeg).a();
    return localeg;
  }

  private eg z()
  {
    eg localeg = new eg(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    eg.a(localeg, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    eg.b(localeg, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    eg.c(localeg, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x8; ; m = k)
    {
      eg.a(localeg, this.e);
      eg.b(localeg, m);
      ab_();
      return localeg;
    }
  }

  protected final dv B()
  {
    return a.ak();
  }

  public final cj C()
  {
    return eg.i();
  }

  public final eh a(eg parameg)
  {
    if (parameg == eg.h());
    for (eh localeh = this; ; localeh = this)
    {
      return localeh;
      if (parameg.j())
      {
        String str3 = parameg.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (parameg.l())
      {
        String str2 = parameg.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (parameg.n())
      {
        String str1 = parameg.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      if (parameg.p())
      {
        int i = parameg.q();
        this.a = (0x8 | this.a);
        this.e = i;
        af_();
      }
      e(parameg.b_());
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

  public final eh e(m paramm, df paramdf)
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
        for (eh localeh = this; ; localeh = this)
        {
          return localeh;
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
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.f();
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

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.eh
 * JD-Core Version:    0.6.2
 */