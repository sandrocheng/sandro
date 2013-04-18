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

public final class ez extends dn
  implements fa
{
  private int a;
  private Object b = "";
  private Object c = "";

  private ez()
  {
    ey.n();
  }

  private ez(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ey.n();
  }

  private ez a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ez b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private ez d(ev paramev)
  {
    if ((paramev instanceof ey));
    for (ez localez = a((ey)paramev); ; localez = this)
    {
      return localez;
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
    return a.aD();
  }

  private static void o()
  {
    ey.n();
  }

  private static ez p()
  {
    return new ez();
  }

  private ez q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private ez r()
  {
    return new ez().a(v());
  }

  private static ey s()
  {
    return ey.h();
  }

  private ey t()
  {
    ey localey = v();
    if (!localey.a())
      throw b(localey);
    return localey;
  }

  private ey u()
  {
    ey localey = v();
    if (!localey.a())
      throw b(localey).a();
    return localey;
  }

  private ey v()
  {
    ey localey = new ey(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ey.a(localey, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      ey.b(localey, this.c);
      ey.a(localey, m);
      ab_();
      return localey;
    }
  }

  private ez w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ey.h().k();
    af_();
    return this;
  }

  private ez x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ey.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aE();
  }

  public final cj C()
  {
    return ey.i();
  }

  public final ez a(ey paramey)
  {
    if (paramey == ey.h());
    for (ez localez = this; ; localez = this)
    {
      return localez;
      if (paramey.j())
      {
        String str2 = paramey.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramey.l())
      {
        String str1 = paramey.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramey.b_());
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

  public final ez e(m paramm, df paramdf)
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
        for (ez localez = this; ; localez = this)
        {
          return localez;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ez
 * JD-Core Version:    0.6.2
 */