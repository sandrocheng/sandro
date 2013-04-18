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

public final class fr extends dn
  implements fs
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private fr()
  {
    fq.p();
  }

  private fr(dp paramdp, byte paramByte)
  {
    super(paramdp);
    fq.p();
  }

  private fr A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = fq.h().o();
    af_();
    return this;
  }

  private fr a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private fr b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private fr c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private fr d(ev paramev)
  {
    if ((paramev instanceof fq));
    for (fr localfr = a((fq)paramev); ; localfr = this)
    {
      return localfr;
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
    return a.bj();
  }

  private static void q()
  {
    fq.p();
  }

  private static fr r()
  {
    return new fr();
  }

  private fr s()
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

  private fr t()
  {
    return new fr().a(x());
  }

  private static fq u()
  {
    return fq.h();
  }

  private fq v()
  {
    fq localfq = x();
    if (!localfq.a())
      throw b(localfq);
    return localfq;
  }

  private fq w()
  {
    fq localfq = x();
    if (!localfq.a())
      throw b(localfq).a();
    return localfq;
  }

  private fq x()
  {
    fq localfq = new fq(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    fq.a(localfq, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    fq.b(localfq, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      fq.c(localfq, this.d);
      fq.a(localfq, m);
      ab_();
      return localfq;
    }
  }

  private fr y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = fq.h().k();
    af_();
    return this;
  }

  private fr z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = fq.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.bk();
  }

  public final cj C()
  {
    return fq.i();
  }

  public final fr a(fq paramfq)
  {
    if (paramfq == fq.h());
    for (fr localfr = this; ; localfr = this)
    {
      return localfr;
      if (paramfq.j())
      {
        String str3 = paramfq.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramfq.l())
      {
        String str2 = paramfq.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramfq.n())
      {
        String str1 = paramfq.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramfq.b_());
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

  public final fr e(m paramm, df paramdf)
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
        for (fr localfr = this; ; localfr = this)
        {
          return localfr;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.fr
 * JD-Core Version:    0.6.2
 */