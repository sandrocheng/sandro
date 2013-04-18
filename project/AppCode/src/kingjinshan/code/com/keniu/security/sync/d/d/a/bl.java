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

public final class bl extends dn
  implements bm
{
  private int a;
  private Object b = "";
  private Object c = "";
  private int d;
  private long e;

  private bl()
  {
    bk.s();
  }

  private bl(dp paramdp, byte paramByte)
  {
    super(paramdp);
    bk.s();
  }

  private bl A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bk.h().k();
    af_();
    return this;
  }

  private bl D()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = bk.h().m();
    af_();
    return this;
  }

  private bl E()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private bl N()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private bl d(ev paramev)
  {
    if ((paramev instanceof bk));
    for (bl localbl = a((bk)paramev); ; localbl = this)
    {
      return localbl;
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
    return a.L();
  }

  private static void t()
  {
    bk.s();
  }

  private static bl u()
  {
    return new bl();
  }

  private bl v()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    this.a = (0xFFFFFFF7 & this.a);
    return this;
  }

  private bl w()
  {
    return new bl().a(z());
  }

  private static bk x()
  {
    return bk.h();
  }

  private bk y()
  {
    bk localbk = z();
    if (!localbk.a())
      throw b(localbk).a();
    return localbk;
  }

  private bk z()
  {
    bk localbk = new bk(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    bk.a(localbk, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    bk.b(localbk, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    bk.a(localbk, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x8; ; m = k)
    {
      bk.a(localbk, this.e);
      bk.b(localbk, m);
      ab_();
      return localbk;
    }
  }

  protected final dv B()
  {
    return a.M();
  }

  public final cj C()
  {
    return bk.i();
  }

  public final bl a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  public final bl a(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  public final bl a(bk parambk)
  {
    if (parambk == bk.h());
    for (bl localbl = this; ; localbl = this)
    {
      return localbl;
      if (parambk.j())
        a(parambk.k());
      if (parambk.l())
        b(parambk.m());
      if (parambk.n())
        a(parambk.o());
      if (parambk.p())
        a(parambk.q());
      e(parambk.b_());
    }
  }

  public final bl a(String paramString)
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
      else
        bool = true;
    }
  }

  public final bl b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final bl e(m paramm, df paramdf)
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
        for (bl localbl = this; ; localbl = this)
        {
          return localbl;
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
        this.e = paramm.e();
      }
    }
  }

  public final bk i()
  {
    bk localbk = z();
    if (!localbk.a())
      throw b(localbk);
    return localbk;
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

  public final long q()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bl
 * JD-Core Version:    0.6.2
 */