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

public final class cv extends dn
  implements cw
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private Object e = "";
  private int f;

  private cv()
  {
    cu.u();
  }

  private cv(dp paramdp, byte paramByte)
  {
    super(paramdp);
    cu.u();
  }

  private cu A()
  {
    cu localcu = D();
    if (!localcu.a())
      throw b(localcu).a();
    return localcu;
  }

  private cu D()
  {
    cu localcu = new cu(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    cu.a(localcu, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    cu.b(localcu, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    cu.c(localcu, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    cu.d(localcu, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      cu.a(localcu, this.f);
      cu.b(localcu, m);
      ab_();
      return localcu;
    }
  }

  private cv E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = cu.h().k();
    af_();
    return this;
  }

  private cv N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = cu.h().m();
    af_();
    return this;
  }

  private cv U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = cu.h().o();
    af_();
    return this;
  }

  private cv V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = cu.h().q();
    af_();
    return this;
  }

  private cv W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private cv d(ev paramev)
  {
    if ((paramev instanceof cu));
    for (cv localcv = a((cu)paramev); ; localcv = this)
    {
      return localcv;
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

  private void h(i parami)
  {
    this.a = (0x8 | this.a);
    this.e = parami;
    af_();
  }

  private static cj u()
  {
    return a.X();
  }

  private static void v()
  {
    cu.u();
  }

  private static cv w()
  {
    return new cv();
  }

  private cv x()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = "";
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0;
    this.a = (0xFFFFFFEF & this.a);
    return this;
  }

  private cv y()
  {
    return new cv().a(D());
  }

  private static cu z()
  {
    return cu.h();
  }

  protected final dv B()
  {
    return a.Y();
  }

  public final cj C()
  {
    return cu.i();
  }

  public final cv a(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  public final cv a(cu paramcu)
  {
    if (paramcu == cu.h());
    for (cv localcv = this; ; localcv = this)
    {
      return localcv;
      if (paramcu.j())
        a(paramcu.k());
      if (paramcu.l())
        b(paramcu.m());
      if (paramcu.n())
        c(paramcu.o());
      if (paramcu.p())
        d(paramcu.q());
      if (paramcu.r())
        a(paramcu.s());
      e(paramcu.b_());
    }
  }

  public final cv a(String paramString)
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
      else if (!r())
        bool = false;
      else
        bool = true;
    }
  }

  public final cv b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final cv c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  public final cv d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  public final cv e(m paramm, df paramdf)
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
        for (cv localcv = this; ; localcv = this)
        {
          return localcv;
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
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramm.k();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramm.f();
      }
    }
  }

  public final cu i()
  {
    cu localcu = D();
    if (!localcu.a())
      throw b(localcu);
    return localcu;
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

  public final String q()
  {
    Object localObject = this.e;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.e = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.cv
 * JD-Core Version:    0.6.2
 */