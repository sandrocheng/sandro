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

public final class ab extends dn
  implements ac
{
  private int a;
  private Object b = "";
  private Object c = "";
  private int d;
  private int e;

  private ab()
  {
    aa.s();
  }

  private ab(dp paramdp, byte paramByte)
  {
    super(paramdp);
    aa.s();
  }

  private ab A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = aa.h().k();
    af_();
    return this;
  }

  private ab D()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = aa.h().m();
    af_();
    return this;
  }

  private ab E()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private ab N()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private ab d(ev paramev)
  {
    if ((paramev instanceof aa));
    for (ab localab = a((aa)paramev); ; localab = this)
    {
      return localab;
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

  private static cj s()
  {
    return a.j();
  }

  private static void t()
  {
    aa.s();
  }

  private static ab u()
  {
    return new ab();
  }

  private ab v()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    this.a = (0xFFFFFFF7 & this.a);
    return this;
  }

  private ab w()
  {
    return new ab().a(z());
  }

  private static aa x()
  {
    return aa.h();
  }

  private aa y()
  {
    aa localaa = z();
    if (!localaa.a())
      throw b(localaa).a();
    return localaa;
  }

  private aa z()
  {
    aa localaa = new aa(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    aa.a(localaa, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    aa.b(localaa, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    aa.a(localaa, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x8; ; m = k)
    {
      aa.b(localaa, this.e);
      aa.c(localaa, m);
      ab_();
      return localaa;
    }
  }

  protected final dv B()
  {
    return a.k();
  }

  public final cj C()
  {
    return aa.i();
  }

  public final ab a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  public final ab a(aa paramaa)
  {
    if (paramaa == aa.h());
    for (ab localab = this; ; localab = this)
    {
      return localab;
      if (paramaa.j())
        a(paramaa.k());
      if (paramaa.l())
        b(paramaa.m());
      if (paramaa.n())
        a(paramaa.o());
      if (paramaa.p())
        b(paramaa.q());
      e(paramaa.b_());
    }
  }

  public final ab a(String paramString)
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

  public final ab b(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  public final ab b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final ab e(m paramm, df paramdf)
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
        for (ab localab = this; ; localab = this)
        {
          return localab;
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
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.f();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.f();
      }
    }
  }

  public final aa i()
  {
    aa localaa = z();
    if (!localaa.a())
      throw b(localaa);
    return localaa;
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

  public final int o()
  {
    return this.d;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ab
 * JD-Core Version:    0.6.2
 */