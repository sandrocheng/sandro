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

public final class eb extends dn
  implements ec
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private eb()
  {
    ea.p();
  }

  private eb(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ea.p();
  }

  private eb A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = ea.h().o();
    af_();
    return this;
  }

  private eb a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private eb b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private eb c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private eb d(ev paramev)
  {
    if ((paramev instanceof ea));
    for (eb localeb = a((ea)paramev); ; localeb = this)
    {
      return localeb;
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
    return a.aL();
  }

  private static void q()
  {
    ea.p();
  }

  private static eb r()
  {
    return new eb();
  }

  private eb s()
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

  private eb t()
  {
    return new eb().a(x());
  }

  private static ea u()
  {
    return ea.h();
  }

  private ea v()
  {
    ea localea = x();
    if (!localea.a())
      throw b(localea);
    return localea;
  }

  private ea w()
  {
    ea localea = x();
    if (!localea.a())
      throw b(localea).a();
    return localea;
  }

  private ea x()
  {
    ea localea = new ea(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ea.a(localea, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    ea.b(localea, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      ea.c(localea, this.d);
      ea.a(localea, m);
      ab_();
      return localea;
    }
  }

  private eb y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ea.h().k();
    af_();
    return this;
  }

  private eb z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ea.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aM();
  }

  public final cj C()
  {
    return ea.i();
  }

  public final eb a(ea paramea)
  {
    if (paramea == ea.h());
    for (eb localeb = this; ; localeb = this)
    {
      return localeb;
      if (paramea.j())
      {
        String str3 = paramea.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramea.l())
      {
        String str2 = paramea.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramea.n())
      {
        String str1 = paramea.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramea.b_());
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

  public final eb e(m paramm, df paramdf)
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
        for (eb localeb = this; ; localeb = this)
        {
          return localeb;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.eb
 * JD-Core Version:    0.6.2
 */