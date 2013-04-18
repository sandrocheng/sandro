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

public final class db extends dn
  implements de
{
  private int a;
  private Object b = "";
  private int c;

  private db()
  {
    da.n();
  }

  private db(dp paramdp, byte paramByte)
  {
    super(paramdp);
    da.n();
  }

  private db a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private db a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private db d(ev paramev)
  {
    if ((paramev instanceof da));
    for (db localdb = a((da)paramev); ; localdb = this)
    {
      return localdb;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj n()
  {
    return a.bn();
  }

  private static void o()
  {
    da.n();
  }

  private static db p()
  {
    return new db();
  }

  private db q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private db r()
  {
    return new db().a(v());
  }

  private static da s()
  {
    return da.h();
  }

  private da t()
  {
    da localda = v();
    if (!localda.a())
      throw b(localda);
    return localda;
  }

  private da u()
  {
    da localda = v();
    if (!localda.a())
      throw b(localda).a();
    return localda;
  }

  private da v()
  {
    da localda = new da(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    da.a(localda, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      da.a(localda, this.c);
      da.b(localda, m);
      ab_();
      return localda;
    }
  }

  private db w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = da.h().k();
    af_();
    return this;
  }

  private db x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.bo();
  }

  public final cj C()
  {
    return da.i();
  }

  public final db a(da paramda)
  {
    if (paramda == da.h());
    for (db localdb = this; ; localdb = this)
    {
      return localdb;
      if (paramda.j())
      {
        String str = paramda.k();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str;
        af_();
      }
      if (paramda.l())
      {
        int i = paramda.m();
        this.a = (0x2 | this.a);
        this.c = i;
        af_();
      }
      e(paramda.b_());
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

  public final db e(m paramm, df paramdf)
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
        for (db localdb = this; ; localdb = this)
        {
          return localdb;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.f();
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

  public final int m()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.db
 * JD-Core Version:    0.6.2
 */