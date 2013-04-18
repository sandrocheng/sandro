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

public final class an extends dn
  implements ao
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private an()
  {
    am.p();
  }

  private an(dp paramdp, byte paramByte)
  {
    super(paramdp);
    am.p();
  }

  private an A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = am.h().o();
    af_();
    return this;
  }

  private an a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private an b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private an c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private an d(ev paramev)
  {
    if ((paramev instanceof am));
    for (an localan = a((am)paramev); ; localan = this)
    {
      return localan;
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
    return a.aH();
  }

  private static void q()
  {
    am.p();
  }

  private static an r()
  {
    return new an();
  }

  private an s()
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

  private an t()
  {
    return new an().a(x());
  }

  private static am u()
  {
    return am.h();
  }

  private am v()
  {
    am localam = x();
    if (!localam.a())
      throw b(localam);
    return localam;
  }

  private am w()
  {
    am localam = x();
    if (!localam.a())
      throw b(localam).a();
    return localam;
  }

  private am x()
  {
    am localam = new am(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    am.a(localam, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    am.b(localam, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      am.c(localam, this.d);
      am.a(localam, m);
      ab_();
      return localam;
    }
  }

  private an y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = am.h().k();
    af_();
    return this;
  }

  private an z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = am.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aI();
  }

  public final cj C()
  {
    return am.i();
  }

  public final an a(am paramam)
  {
    if (paramam == am.h());
    for (an localan = this; ; localan = this)
    {
      return localan;
      if (paramam.j())
      {
        String str3 = paramam.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramam.l())
      {
        String str2 = paramam.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramam.n())
      {
        String str1 = paramam.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramam.b_());
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
      else
        bool = true;
    }
  }

  public final an e(m paramm, df paramdf)
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
        for (an localan = this; ; localan = this)
        {
          return localan;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.an
 * JD-Core Version:    0.6.2
 */