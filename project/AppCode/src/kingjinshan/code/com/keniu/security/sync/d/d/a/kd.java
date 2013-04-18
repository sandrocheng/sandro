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

public final class kd extends dn
  implements ke
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private kd()
  {
    kc.p();
  }

  private kd(dp paramdp, byte paramByte)
  {
    super(paramdp);
    kc.p();
  }

  private kd A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = kc.h().o();
    af_();
    return this;
  }

  private kd a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private kd b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private kd c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private kd d(ev paramev)
  {
    if ((paramev instanceof kc));
    for (kd localkd = a((kc)paramev); ; localkd = this)
    {
      return localkd;
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
    return ih.B();
  }

  private static void q()
  {
    kc.p();
  }

  private static kd r()
  {
    return new kd();
  }

  private kd s()
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

  private kd t()
  {
    return new kd().a(x());
  }

  private static kc u()
  {
    return kc.h();
  }

  private kc v()
  {
    kc localkc = x();
    if (!localkc.a())
      throw b(localkc);
    return localkc;
  }

  private kc w()
  {
    kc localkc = x();
    if (!localkc.a())
      throw b(localkc).a();
    return localkc;
  }

  private kc x()
  {
    kc localkc = new kc(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    kc.a(localkc, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    kc.b(localkc, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      kc.c(localkc, this.d);
      kc.a(localkc, m);
      ab_();
      return localkc;
    }
  }

  private kd y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = kc.h().k();
    af_();
    return this;
  }

  private kd z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = kc.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.C();
  }

  public final cj C()
  {
    return kc.i();
  }

  public final kd a(kc paramkc)
  {
    if (paramkc == kc.h());
    for (kd localkd = this; ; localkd = this)
    {
      return localkd;
      if (paramkc.j())
      {
        String str3 = paramkc.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramkc.l())
      {
        String str2 = paramkc.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramkc.n())
      {
        String str1 = paramkc.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramkc.b_());
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

  public final kd e(m paramm, df paramdf)
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
        for (kd localkd = this; ; localkd = this)
        {
          return localkd;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.kd
 * JD-Core Version:    0.6.2
 */