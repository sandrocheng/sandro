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

public final class ff extends dn
  implements fg
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private ff()
  {
    fe.p();
  }

  private ff(dp paramdp, byte paramByte)
  {
    super(paramdp);
    fe.p();
  }

  private ff A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = fe.h().o();
    af_();
    return this;
  }

  private ff a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ff b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private ff c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private ff d(ev paramev)
  {
    if ((paramev instanceof fe));
    for (ff localff = a((fe)paramev); ; localff = this)
    {
      return localff;
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
    return a.D();
  }

  private static void q()
  {
    fe.p();
  }

  private static ff r()
  {
    return new ff();
  }

  private ff s()
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

  private ff t()
  {
    return new ff().a(x());
  }

  private static fe u()
  {
    return fe.h();
  }

  private fe v()
  {
    fe localfe = x();
    if (!localfe.a())
      throw b(localfe);
    return localfe;
  }

  private fe w()
  {
    fe localfe = x();
    if (!localfe.a())
      throw b(localfe).a();
    return localfe;
  }

  private fe x()
  {
    fe localfe = new fe(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    fe.a(localfe, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    fe.b(localfe, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      fe.c(localfe, this.d);
      fe.a(localfe, m);
      ab_();
      return localfe;
    }
  }

  private ff y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = fe.h().k();
    af_();
    return this;
  }

  private ff z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = fe.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.E();
  }

  public final cj C()
  {
    return fe.i();
  }

  public final ff a(fe paramfe)
  {
    if (paramfe == fe.h());
    for (ff localff = this; ; localff = this)
    {
      return localff;
      if (paramfe.j())
      {
        String str3 = paramfe.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramfe.l())
      {
        String str2 = paramfe.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramfe.n())
      {
        String str1 = paramfe.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramfe.b_());
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
      else
        bool = true;
    }
  }

  public final ff e(m paramm, df paramdf)
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
        for (ff localff = this; ; localff = this)
        {
          return localff;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ff
 * JD-Core Version:    0.6.2
 */