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
import com.b.a.m;

public final class j extends dn
  implements k
{
  private int a;
  private Object b = "";
  private Object c = "";

  private j()
  {
    i.n();
  }

  private j(dp paramdp, byte paramByte)
  {
    super(paramdp);
    i.n();
  }

  private j a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private j b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private j d(ev paramev)
  {
    if ((paramev instanceof i));
    for (j localj = a((i)paramev); ; localj = this)
    {
      return localj;
      super.a(paramev);
    }
  }

  private void e(com.b.a.i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(com.b.a.i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private static cj n()
  {
    return a.az();
  }

  private static void o()
  {
    i.n();
  }

  private static j p()
  {
    return new j();
  }

  private j q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private j r()
  {
    return new j().a(v());
  }

  private static i s()
  {
    return i.h();
  }

  private i t()
  {
    i locali = v();
    if (!locali.a())
      throw b(locali);
    return locali;
  }

  private i u()
  {
    i locali = v();
    if (!locali.a())
      throw b(locali).a();
    return locali;
  }

  private i v()
  {
    i locali = new i(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    i.a(locali, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      i.b(locali, this.c);
      i.a(locali, m);
      ab_();
      return locali;
    }
  }

  private j w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = i.h().k();
    af_();
    return this;
  }

  private j x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = i.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aA();
  }

  public final cj C()
  {
    return i.i();
  }

  public final j a(i parami)
  {
    if (parami == i.h());
    for (j localj = this; ; localj = this)
    {
      return localj;
      if (parami.j())
      {
        String str2 = parami.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (parami.l())
      {
        String str1 = parami.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(parami.b_());
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

  public final j e(m paramm, df paramdf)
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
        for (j localj = this; ; localj = this)
        {
          return localj;
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
      str = ((com.b.a.i)localObject).b();
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
      str = ((com.b.a.i)localObject).b();
      this.c = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.j
 * JD-Core Version:    0.6.2
 */