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

public final class fl extends dn
  implements fm
{
  private int a;
  private Object b = "";

  private fl()
  {
    fk.l();
  }

  private fl(dp paramdp, byte paramByte)
  {
    super(paramdp);
    fk.l();
  }

  private fl a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private fl d(ev paramev)
  {
    if ((paramev instanceof fk));
    for (fl localfl = a((fk)paramev); ; localfl = this)
    {
      return localfl;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj l()
  {
    return a.bf();
  }

  private static void m()
  {
    fk.l();
  }

  private static fl n()
  {
    return new fl();
  }

  private fl o()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    return this;
  }

  private fl p()
  {
    return new fl().a(t());
  }

  private static fk q()
  {
    return fk.h();
  }

  private fk r()
  {
    fk localfk = t();
    if (!localfk.a())
      throw b(localfk);
    return localfk;
  }

  private fk s()
  {
    fk localfk = t();
    if (!localfk.a())
      throw b(localfk).a();
    return localfk;
  }

  private fk t()
  {
    fk localfk = new fk(this);
    if ((0x1 & this.a) == 1);
    for (int i = 1; ; i = 0)
    {
      fk.a(localfk, this.b);
      fk.a(localfk, i);
      ab_();
      return localfk;
    }
  }

  private fl u()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = fk.h().k();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.bg();
  }

  public final cj C()
  {
    return fk.i();
  }

  public final fl a(fk paramfk)
  {
    if (paramfk == fk.h());
    for (fl localfl = this; ; localfl = this)
    {
      return localfl;
      if (paramfk.j())
      {
        String str = paramfk.k();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str;
        af_();
      }
      e(paramfk.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final fl e(m paramm, df paramdf)
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
        for (fl localfl = this; ; localfl = this)
        {
          return localfl;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fl
 * JD-Core Version:    0.6.2
 */