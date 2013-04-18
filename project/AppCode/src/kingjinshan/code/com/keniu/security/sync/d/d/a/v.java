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

public final class v extends dn
  implements w
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;
  private int f;

  private v()
  {
    u.t();
  }

  private v(dp paramdp, byte paramByte)
  {
    super(paramdp);
    u.t();
  }

  private u A()
  {
    u localu = D();
    if (!localu.a())
      throw b(localu).a();
    return localu;
  }

  private u D()
  {
    u localu = new u(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    u.a(localu, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    u.b(localu, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    u.c(localu, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    u.a(localu, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      u.b(localu, this.f);
      u.c(localu, m);
      ab_();
      return localu;
    }
  }

  private v E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = u.h().k();
    af_();
    return this;
  }

  private v N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = u.h().m();
    af_();
    return this;
  }

  private v U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = u.h().o();
    af_();
    return this;
  }

  private v V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private v W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private v a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private v a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private v b(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  private v b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private v c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private v d(ev paramev)
  {
    if ((paramev instanceof u));
    for (v localv = a((u)paramev); ; localv = this)
    {
      return localv;
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
    return a.z();
  }

  private static void u()
  {
    u.t();
  }

  private static v v()
  {
    return new v();
  }

  private v w()
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

  private v x()
  {
    return new v().a(D());
  }

  private static u y()
  {
    return u.h();
  }

  private u z()
  {
    u localu = D();
    if (!localu.a())
      throw b(localu);
    return localu;
  }

  protected final dv B()
  {
    return a.A();
  }

  public final cj C()
  {
    return u.i();
  }

  public final v a(u paramu)
  {
    if (paramu == u.h());
    for (v localv = this; ; localv = this)
    {
      return localv;
      if (paramu.j())
      {
        String str3 = paramu.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramu.l())
      {
        String str2 = paramu.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramu.n())
      {
        String str1 = paramu.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      if (paramu.p())
      {
        int j = paramu.q();
        this.a = (0x8 | this.a);
        this.e = j;
        af_();
      }
      if (paramu.r())
      {
        int i = paramu.s();
        this.a = (0x10 | this.a);
        this.f = i;
        af_();
      }
      e(paramu.b_());
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

  public final v e(m paramm, df paramdf)
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
        for (v localv = this; ; localv = this)
        {
          return localv;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.v
 * JD-Core Version:    0.6.2
 */