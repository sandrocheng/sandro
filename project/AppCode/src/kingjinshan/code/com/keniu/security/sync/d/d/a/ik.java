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

public final class ik extends dn
  implements il
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private ik()
  {
    ij.p();
  }

  private ik(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ij.p();
  }

  private ik A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = ij.h().o();
    af_();
    return this;
  }

  private ik a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ik b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private ik c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private ik d(ev paramev)
  {
    if ((paramev instanceof ij));
    for (ik localik = a((ij)paramev); ; localik = this)
    {
      return localik;
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
    return ih.n();
  }

  private static void q()
  {
    ij.p();
  }

  private static ik r()
  {
    return new ik();
  }

  private ik s()
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

  private ik t()
  {
    return new ik().a(x());
  }

  private static ij u()
  {
    return ij.h();
  }

  private ij v()
  {
    ij localij = x();
    if (!localij.a())
      throw b(localij);
    return localij;
  }

  private ij w()
  {
    ij localij = x();
    if (!localij.a())
      throw b(localij).a();
    return localij;
  }

  private ij x()
  {
    ij localij = new ij(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ij.a(localij, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    ij.b(localij, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      ij.c(localij, this.d);
      ij.a(localij, m);
      ab_();
      return localij;
    }
  }

  private ik y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ij.h().k();
    af_();
    return this;
  }

  private ik z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ij.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.o();
  }

  public final cj C()
  {
    return ij.i();
  }

  public final ik a(ij paramij)
  {
    if (paramij == ij.h());
    for (ik localik = this; ; localik = this)
    {
      return localik;
      if (paramij.j())
      {
        String str3 = paramij.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramij.l())
      {
        String str2 = paramij.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramij.n())
      {
        String str1 = paramij.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramij.b_());
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

  public final ik e(m paramm, df paramdf)
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
        for (ik localik = this; ; localik = this)
        {
          return localik;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ik
 * JD-Core Version:    0.6.2
 */