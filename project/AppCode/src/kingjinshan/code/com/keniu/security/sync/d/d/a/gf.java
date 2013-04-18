package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class gf extends dn
  implements gg
{
  private int a;
  private int b;
  private Object c = "";

  private gf()
  {
    ge.o();
  }

  private gf(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ge.o();
  }

  private gf a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    af_();
    return this;
  }

  private gf a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private gf d(ev paramev)
  {
    if ((paramev instanceof ge));
    for (gf localgf = a((ge)paramev); ; localgf = this)
    {
      return localgf;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private static cj p()
  {
    return gc.b();
  }

  private static void q()
  {
    ge.o();
  }

  private static gf r()
  {
    return new gf();
  }

  private gf s()
  {
    super.F();
    this.b = 0;
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private gf t()
  {
    return new gf().a(n());
  }

  private static ge u()
  {
    return ge.h();
  }

  private ge v()
  {
    ge localge = n();
    if (!localge.a())
      throw b(localge).a();
    return localge;
  }

  private gf w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = 0;
    af_();
    return this;
  }

  private gf x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ge.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return gc.c();
  }

  public final cj C()
  {
    return ge.i();
  }

  public final gf a(ge paramge)
  {
    if (paramge == ge.h());
    for (gf localgf = this; ; localgf = this)
    {
      return localgf;
      if (paramge.j())
      {
        int i = paramge.k();
        this.a = (0x1 | this.a);
        this.b = i;
        af_();
      }
      if (paramge.l())
      {
        String str = paramge.m();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str;
        af_();
      }
      e(paramge.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final gf e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
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
        for (gf localgf = this; ; localgf = this)
        {
          return localgf;
          d(localgi.b());
          af_();
        }
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramm.f();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
      }
    }
  }

  public final ge i()
  {
    ge localge = n();
    if (!localge.a())
      throw b(localge);
    return localge;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int k()
  {
    return this.b;
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

  public final ge n()
  {
    ge localge = new ge(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ge.a(localge, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      ge.a(localge, this.c);
      ge.b(localge, m);
      ab_();
      return localge;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gf
 * JD-Core Version:    0.6.2
 */