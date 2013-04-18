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

public final class br extends dn
  implements bs
{
  private int a;
  private Object b = "";
  private Object c = "";

  private br()
  {
    bq.n();
  }

  private br(dp paramdp, byte paramByte)
  {
    super(paramdp);
    bq.n();
  }

  private br a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private br b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private br d(ev paramev)
  {
    if ((paramev instanceof bq));
    for (br localbr = a((bq)paramev); ; localbr = this)
    {
      return localbr;
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
    return a.ar();
  }

  private static void o()
  {
    bq.n();
  }

  private static br p()
  {
    return new br();
  }

  private br q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private br r()
  {
    return new br().a(v());
  }

  private static bq s()
  {
    return bq.h();
  }

  private bq t()
  {
    bq localbq = v();
    if (!localbq.a())
      throw b(localbq);
    return localbq;
  }

  private bq u()
  {
    bq localbq = v();
    if (!localbq.a())
      throw b(localbq).a();
    return localbq;
  }

  private bq v()
  {
    bq localbq = new bq(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    bq.a(localbq, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      bq.b(localbq, this.c);
      bq.a(localbq, m);
      ab_();
      return localbq;
    }
  }

  private br w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bq.h().k();
    af_();
    return this;
  }

  private br x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = bq.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.as();
  }

  public final cj C()
  {
    return bq.i();
  }

  public final br a(bq parambq)
  {
    if (parambq == bq.h());
    for (br localbr = this; ; localbr = this)
    {
      return localbr;
      if (parambq.j())
      {
        String str2 = parambq.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (parambq.l())
      {
        String str1 = parambq.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(parambq.b_());
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

  public final br e(m paramm, df paramdf)
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
        for (br localbr = this; ; localbr = this)
        {
          return localbr;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.br
 * JD-Core Version:    0.6.2
 */