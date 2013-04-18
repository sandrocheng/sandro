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

public final class bf extends dn
  implements bg
{
  private int a;
  private Object b = "";
  private Object c = "";

  private bf()
  {
    be.n();
  }

  private bf(dp paramdp, byte paramByte)
  {
    super(paramdp);
    be.n();
  }

  private bf a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bf b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private bf d(ev paramev)
  {
    if ((paramev instanceof be));
    for (bf localbf = a((be)paramev); ; localbf = this)
    {
      return localbf;
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
    return a.aP();
  }

  private static void o()
  {
    be.n();
  }

  private static bf p()
  {
    return new bf();
  }

  private bf q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private bf r()
  {
    return new bf().a(v());
  }

  private static be s()
  {
    return be.h();
  }

  private be t()
  {
    be localbe = v();
    if (!localbe.a())
      throw b(localbe);
    return localbe;
  }

  private be u()
  {
    be localbe = v();
    if (!localbe.a())
      throw b(localbe).a();
    return localbe;
  }

  private be v()
  {
    be localbe = new be(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    be.a(localbe, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      be.b(localbe, this.c);
      be.a(localbe, m);
      ab_();
      return localbe;
    }
  }

  private bf w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = be.h().k();
    af_();
    return this;
  }

  private bf x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = be.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aQ();
  }

  public final cj C()
  {
    return be.i();
  }

  public final bf a(be parambe)
  {
    if (parambe == be.h());
    for (bf localbf = this; ; localbf = this)
    {
      return localbf;
      if (parambe.j())
      {
        String str2 = parambe.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (parambe.l())
      {
        String str1 = parambe.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(parambe.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final bf e(m paramm, df paramdf)
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
        for (bf localbf = this; ; localbf = this)
        {
          return localbf;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.bf
 * JD-Core Version:    0.6.2
 */