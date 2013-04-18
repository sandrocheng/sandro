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

public final class ah extends dn
  implements ai
{
  private int a;
  private Object b = "";
  private Object c = "";

  private ah()
  {
    ag.n();
  }

  private ah(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ag.n();
  }

  private ah a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private ah b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private ah d(ev paramev)
  {
    if ((paramev instanceof ag));
    for (ah localah = a((ag)paramev); ; localah = this)
    {
      return localah;
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
    return a.bb();
  }

  private static void o()
  {
    ag.n();
  }

  private static ah p()
  {
    return new ah();
  }

  private ah q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private ah r()
  {
    return new ah().a(v());
  }

  private static ag s()
  {
    return ag.h();
  }

  private ag t()
  {
    ag localag = v();
    if (!localag.a())
      throw b(localag);
    return localag;
  }

  private ag u()
  {
    ag localag = v();
    if (!localag.a())
      throw b(localag).a();
    return localag;
  }

  private ag v()
  {
    ag localag = new ag(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ag.a(localag, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      ag.b(localag, this.c);
      ag.a(localag, m);
      ab_();
      return localag;
    }
  }

  private ah w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ag.h().k();
    af_();
    return this;
  }

  private ah x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = ag.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.bc();
  }

  public final cj C()
  {
    return ag.i();
  }

  public final ah a(ag paramag)
  {
    if (paramag == ag.h());
    for (ah localah = this; ; localah = this)
    {
      return localah;
      if (paramag.j())
      {
        String str2 = paramag.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramag.l())
      {
        String str1 = paramag.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramag.b_());
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

  public final ah e(m paramm, df paramdf)
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
        for (ah localah = this; ; localah = this)
        {
          return localah;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.ah
 * JD-Core Version:    0.6.2
 */