package com.keniu.security.sync.d.d.a;

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

public final class cj extends dn
  implements ck
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;
  private long f;

  private cj()
  {
    ci.u();
  }

  private cj(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ci.u();
  }

  private ci A()
  {
    ci localci = D();
    if (!localci.a())
      throw b(localci).a();
    return localci;
  }

  private ci D()
  {
    ci localci = new ci(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ci.a(localci, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    ci.b(localci, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    ci.c(localci, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    ci.a(localci, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      ci.a(localci, this.f);
      ci.b(localci, m);
      ab_();
      return localci;
    }
  }

  private cj E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ci.h().k();
    af_();
    return this;
  }

  private cj N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ci.h().m();
    af_();
    return this;
  }

  private cj U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = ci.h().o();
    af_();
    return this;
  }

  private cj V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private cj W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private cj d(ev paramev)
  {
    if ((paramev instanceof ci));
    for (cj localcj = a((ci)paramev); ; localcj = this)
    {
      return localcj;
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

  private static com.b.a.cj u()
  {
    return a.r();
  }

  private static void v()
  {
    ci.u();
  }

  private static cj w()
  {
    return new cj();
  }

  private cj x()
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
    this.f = 0L;
    this.a = (0xFFFFFFEF & this.a);
    return this;
  }

  private cj y()
  {
    return new cj().a(D());
  }

  private static ci z()
  {
    return ci.h();
  }

  protected final dv B()
  {
    return a.s();
  }

  public final com.b.a.cj C()
  {
    return ci.i();
  }

  public final cj a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  public final cj a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  public final cj a(ci paramci)
  {
    if (paramci == ci.h());
    for (cj localcj = this; ; localcj = this)
    {
      return localcj;
      if (paramci.j())
        a(paramci.k());
      if (paramci.l())
        b(paramci.m());
      if (paramci.n())
        c(paramci.o());
      if (paramci.p())
        a(paramci.q());
      if (paramci.r())
        a(paramci.s());
      e(paramci.b_());
    }
  }

  public final cj a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
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

  public final cj b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final cj c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  public final cj e(m paramm, df paramdf)
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
        for (cj localcj = this; ; localcj = this)
        {
          return localcj;
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
        this.f = paramm.e();
      }
    }
  }

  public final ci i()
  {
    ci localci = D();
    if (!localci.a())
      throw b(localci);
    return localci;
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

  public final long s()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cj
 * JD-Core Version:    0.6.2
 */