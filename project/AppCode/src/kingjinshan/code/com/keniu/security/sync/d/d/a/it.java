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

public final class it extends dn
  implements iu
{
  private int a;
  private Object b = "";
  private Object c = "";

  private it()
  {
    is.n();
  }

  private it(dp paramdp, byte paramByte)
  {
    super(paramdp);
    is.n();
  }

  private it a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private it b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private it d(ev paramev)
  {
    if ((paramev instanceof is));
    for (it localit = a((is)paramev); ; localit = this)
    {
      return localit;
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
    return ih.F();
  }

  private static void o()
  {
    is.n();
  }

  private static it p()
  {
    return new it();
  }

  private it q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private it r()
  {
    return new it().a(v());
  }

  private static is s()
  {
    return is.h();
  }

  private is t()
  {
    is localis = v();
    if (!localis.a())
      throw b(localis);
    return localis;
  }

  private is u()
  {
    is localis = v();
    if (!localis.a())
      throw b(localis).a();
    return localis;
  }

  private is v()
  {
    is localis = new is(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    is.a(localis, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      is.b(localis, this.c);
      is.a(localis, m);
      ab_();
      return localis;
    }
  }

  private it w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = is.h().k();
    af_();
    return this;
  }

  private it x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = is.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.G();
  }

  public final cj C()
  {
    return is.i();
  }

  public final it a(is paramis)
  {
    if (paramis == is.h());
    for (it localit = this; ; localit = this)
    {
      return localit;
      if (paramis.j())
      {
        String str2 = paramis.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramis.l())
      {
        String str1 = paramis.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramis.b_());
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

  public final it e(m paramm, df paramdf)
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
        for (it localit = this; ; localit = this)
        {
          return localit;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.it
 * JD-Core Version:    0.6.2
 */