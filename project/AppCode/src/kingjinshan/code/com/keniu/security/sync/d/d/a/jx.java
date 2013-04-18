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

public final class jx extends dn
  implements jy
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private Object e = "";

  private jx()
  {
    jw.r();
  }

  private jx(dp paramdp, byte paramByte)
  {
    super(paramdp);
    jw.r();
  }

  private jx A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = jw.h().k();
    af_();
    return this;
  }

  private jx D()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = jw.h().m();
    af_();
    return this;
  }

  private jx E()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = jw.h().o();
    af_();
    return this;
  }

  private jx N()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = jw.h().q();
    af_();
    return this;
  }

  private jx a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private jx b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private jx c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private jx d(ev paramev)
  {
    if ((paramev instanceof jw));
    for (jx localjx = a((jw)paramev); ; localjx = this)
    {
      return localjx;
      super.a(paramev);
    }
  }

  private jx d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
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

  private static cj r()
  {
    return ih.f();
  }

  private static void s()
  {
    jw.r();
  }

  private static jx t()
  {
    return new jx();
  }

  private jx u()
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
    return this;
  }

  private jx v()
  {
    return new jx().a(z());
  }

  private static jw w()
  {
    return jw.h();
  }

  private jw x()
  {
    jw localjw = z();
    if (!localjw.a())
      throw b(localjw);
    return localjw;
  }

  private jw y()
  {
    jw localjw = z();
    if (!localjw.a())
      throw b(localjw).a();
    return localjw;
  }

  private jw z()
  {
    jw localjw = new jw(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    jw.a(localjw, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    jw.b(localjw, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    jw.c(localjw, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x8; ; m = k)
    {
      jw.d(localjw, this.e);
      jw.a(localjw, m);
      ab_();
      return localjw;
    }
  }

  protected final dv B()
  {
    return ih.g();
  }

  public final cj C()
  {
    return jw.i();
  }

  public final jx a(jw paramjw)
  {
    if (paramjw == jw.h());
    for (jx localjx = this; ; localjx = this)
    {
      return localjx;
      if (paramjw.j())
      {
        String str4 = paramjw.k();
        if (str4 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str4;
        af_();
      }
      if (paramjw.l())
      {
        String str3 = paramjw.m();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str3;
        af_();
      }
      if (paramjw.n())
      {
        String str2 = paramjw.o();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str2;
        af_();
      }
      if (paramjw.p())
      {
        String str1 = paramjw.q();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x8 | this.a);
        this.e = str1;
        af_();
      }
      e(paramjw.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final jx e(m paramm, df paramdf)
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
        for (jx localjx = this; ; localjx = this)
        {
          return localjx;
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.jx
 * JD-Core Version:    0.6.2
 */