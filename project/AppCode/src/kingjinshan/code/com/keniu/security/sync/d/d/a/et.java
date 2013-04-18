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

public final class et extends dn
  implements eu
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;
  private long f;

  private et()
  {
    es.t();
  }

  private et(dp paramdp, byte paramByte)
  {
    super(paramdp);
    es.t();
  }

  private es A()
  {
    es locales = D();
    if (!locales.a())
      throw b(locales).a();
    return locales;
  }

  private es D()
  {
    es locales = new es(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    es.a(locales, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    es.b(locales, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    es.c(locales, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    es.a(locales, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      es.a(locales, this.f);
      es.b(locales, m);
      ab_();
      return locales;
    }
  }

  private et E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = es.h().k();
    af_();
    return this;
  }

  private et N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = es.h().m();
    af_();
    return this;
  }

  private et U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = es.h().o();
    af_();
    return this;
  }

  private et V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private et W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private et a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private et a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private et a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private et b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private et c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private et d(ev paramev)
  {
    if ((paramev instanceof es));
    for (et localet = a((es)paramev); ; localet = this)
    {
      return localet;
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
    return a.n();
  }

  private static void u()
  {
    es.t();
  }

  private static et v()
  {
    return new et();
  }

  private et w()
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

  private et x()
  {
    return new et().a(D());
  }

  private static es y()
  {
    return es.h();
  }

  private es z()
  {
    es locales = D();
    if (!locales.a())
      throw b(locales);
    return locales;
  }

  protected final dv B()
  {
    return a.o();
  }

  public final cj C()
  {
    return es.i();
  }

  public final et a(es parames)
  {
    if (parames == es.h());
    for (et localet = this; ; localet = this)
    {
      return localet;
      if (parames.j())
      {
        String str3 = parames.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (parames.l())
      {
        String str2 = parames.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (parames.n())
      {
        String str1 = parames.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      if (parames.p())
      {
        int i = parames.q();
        this.a = (0x8 | this.a);
        this.e = i;
        af_();
      }
      if (parames.r())
      {
        long l = parames.s();
        this.a = (0x10 | this.a);
        this.f = l;
        af_();
      }
      e(parames.b_());
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

  public final et e(m paramm, df paramdf)
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
        for (et localet = this; ; localet = this)
        {
          return localet;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.et
 * JD-Core Version:    0.6.2
 */