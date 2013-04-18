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

public final class at extends dn
  implements au
{
  private int a;
  private Object b = "";

  private at()
  {
    as.l();
  }

  private at(dp paramdp, byte paramByte)
  {
    super(paramdp);
    as.l();
  }

  private at a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private at d(ev paramev)
  {
    if ((paramev instanceof as));
    for (at localat = a((as)paramev); ; localat = this)
    {
      return localat;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj l()
  {
    return a.f();
  }

  private static void m()
  {
    as.l();
  }

  private static at n()
  {
    return new at();
  }

  private at o()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    return this;
  }

  private at p()
  {
    return new at().a(t());
  }

  private static as q()
  {
    return as.h();
  }

  private as r()
  {
    as localas = t();
    if (!localas.a())
      throw b(localas);
    return localas;
  }

  private as s()
  {
    as localas = t();
    if (!localas.a())
      throw b(localas).a();
    return localas;
  }

  private as t()
  {
    as localas = new as(this);
    if ((0x1 & this.a) == 1);
    for (int i = 1; ; i = 0)
    {
      as.a(localas, this.b);
      as.a(localas, i);
      ab_();
      return localas;
    }
  }

  private at u()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = as.h().k();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.g();
  }

  public final cj C()
  {
    return as.i();
  }

  public final at a(as paramas)
  {
    if (paramas == as.h());
    for (at localat = this; ; localat = this)
    {
      return localat;
      if (paramas.j())
      {
        String str = paramas.k();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str;
        af_();
      }
      e(paramas.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final at e(m paramm, df paramdf)
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
        for (at localat = this; ; localat = this)
        {
          return localat;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.at
 * JD-Core Version:    0.6.2
 */