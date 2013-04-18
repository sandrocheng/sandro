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

public final class d extends dn
  implements e
{
  private int a;
  private Object b = "";
  private Object c = "";

  private d()
  {
    c.n();
  }

  private d(dp paramdp, byte paramByte)
  {
    super(paramdp);
    c.n();
  }

  private d a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private d b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private d d(ev paramev)
  {
    if ((paramev instanceof c));
    for (d locald = a((c)paramev); ; locald = this)
    {
      return locald;
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
    return a.av();
  }

  private static void o()
  {
    c.n();
  }

  private static d p()
  {
    return new d();
  }

  private d q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private d r()
  {
    return new d().a(v());
  }

  private static c s()
  {
    return c.h();
  }

  private c t()
  {
    c localc = v();
    if (!localc.a())
      throw b(localc);
    return localc;
  }

  private c u()
  {
    c localc = v();
    if (!localc.a())
      throw b(localc).a();
    return localc;
  }

  private c v()
  {
    c localc = new c(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    c.a(localc, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      c.b(localc, this.c);
      c.a(localc, m);
      ab_();
      return localc;
    }
  }

  private d w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = c.h().k();
    af_();
    return this;
  }

  private d x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = c.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aw();
  }

  public final cj C()
  {
    return c.i();
  }

  public final d a(c paramc)
  {
    if (paramc == c.h());
    for (d locald = this; ; locald = this)
    {
      return locald;
      if (paramc.j())
      {
        String str2 = paramc.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramc.l())
      {
        String str1 = paramc.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramc.b_());
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

  public final d e(m paramm, df paramdf)
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
        for (d locald = this; ; locald = this)
        {
          return locald;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.d
 * JD-Core Version:    0.6.2
 */