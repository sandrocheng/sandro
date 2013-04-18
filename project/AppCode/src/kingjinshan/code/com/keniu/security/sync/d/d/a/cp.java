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

public final class cp extends dn
  implements cq
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;
  private int f;

  private cp()
  {
    co.t();
  }

  private cp(dp paramdp, byte paramByte)
  {
    super(paramdp);
    co.t();
  }

  private co A()
  {
    co localco = D();
    if (!localco.a())
      throw b(localco).a();
    return localco;
  }

  private co D()
  {
    co localco = new co(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    co.a(localco, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    co.b(localco, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    co.c(localco, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    co.a(localco, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      co.b(localco, this.f);
      co.c(localco, m);
      ab_();
      return localco;
    }
  }

  private cp E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = co.h().k();
    af_();
    return this;
  }

  private cp N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = co.h().m();
    af_();
    return this;
  }

  private cp U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = co.h().o();
    af_();
    return this;
  }

  private cp V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private cp W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private cp a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private cp a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private cp b(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  private cp b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private cp c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private cp d(ev paramev)
  {
    if ((paramev instanceof co));
    for (cp localcp = a((co)paramev); ; localcp = this)
    {
      return localcp;
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

  private static cj t()
  {
    return a.v();
  }

  private static void u()
  {
    co.t();
  }

  private static cp v()
  {
    return new cp();
  }

  private cp w()
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
    this.f = 0;
    this.a = (0xFFFFFFEF & this.a);
    return this;
  }

  private cp x()
  {
    return new cp().a(D());
  }

  private static co y()
  {
    return co.h();
  }

  private co z()
  {
    co localco = D();
    if (!localco.a())
      throw b(localco);
    return localco;
  }

  protected final dv B()
  {
    return a.w();
  }

  public final cj C()
  {
    return co.i();
  }

  public final cp a(co paramco)
  {
    if (paramco == co.h());
    for (cp localcp = this; ; localcp = this)
    {
      return localcp;
      if (paramco.j())
      {
        String str3 = paramco.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramco.l())
      {
        String str2 = paramco.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramco.n())
      {
        String str1 = paramco.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      if (paramco.p())
      {
        int j = paramco.q();
        this.a = (0x8 | this.a);
        this.e = j;
        af_();
      }
      if (paramco.r())
      {
        int i = paramco.s();
        this.a = (0x10 | this.a);
        this.f = i;
        af_();
      }
      e(paramco.b_());
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
      else if (!p())
        bool = false;
      else
        bool = true;
    }
  }

  public final cp e(m paramm, df paramdf)
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
        for (cp localcp = this; ; localcp = this)
        {
          return localcp;
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
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramm.f();
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

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cp
 * JD-Core Version:    0.6.2
 */