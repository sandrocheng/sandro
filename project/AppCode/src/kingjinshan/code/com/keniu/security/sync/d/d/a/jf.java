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

public final class jf extends dn
  implements jg
{
  private int a;
  private Object b = "";
  private Object c = "";

  private jf()
  {
    je.n();
  }

  private jf(dp paramdp, byte paramByte)
  {
    super(paramdp);
    je.n();
  }

  private jf a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private jf b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private jf d(ev paramev)
  {
    if ((paramev instanceof je));
    for (jf localjf = a((je)paramev); ; localjf = this)
    {
      return localjf;
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

  private static cj n()
  {
    return ih.r();
  }

  private static void o()
  {
    je.n();
  }

  private static jf p()
  {
    return new jf();
  }

  private jf q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private jf r()
  {
    return new jf().a(v());
  }

  private static je s()
  {
    return je.h();
  }

  private je t()
  {
    je localje = v();
    if (!localje.a())
      throw b(localje);
    return localje;
  }

  private je u()
  {
    je localje = v();
    if (!localje.a())
      throw b(localje).a();
    return localje;
  }

  private je v()
  {
    je localje = new je(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    je.a(localje, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      je.b(localje, this.c);
      je.a(localje, m);
      ab_();
      return localje;
    }
  }

  private jf w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = je.h().k();
    af_();
    return this;
  }

  private jf x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = je.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.s();
  }

  public final cj C()
  {
    return je.i();
  }

  public final jf a(je paramje)
  {
    if (paramje == je.h());
    for (jf localjf = this; ; localjf = this)
    {
      return localjf;
      if (paramje.j())
      {
        String str2 = paramje.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramje.l())
      {
        String str1 = paramje.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramje.b_());
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

  public final jf e(m paramm, df paramdf)
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
        for (jf localjf = this; ; localjf = this)
        {
          return localjf;
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.jf
 * JD-Core Version:    0.6.2
 */