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

public final class az extends dn
  implements ba
{
  private int a;
  private Object b = "";

  private az()
  {
    ay.m();
  }

  private az(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ay.m();
  }

  private az d(ev paramev)
  {
    if ((paramev instanceof ay));
    for (az localaz = a((ay)paramev); ; localaz = this)
    {
      return localaz;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj m()
  {
    return a.b();
  }

  private static void n()
  {
    ay.m();
  }

  private static az o()
  {
    return new az();
  }

  private az p()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    return this;
  }

  private az q()
  {
    return new az().a(t());
  }

  private static ay r()
  {
    return ay.h();
  }

  private ay s()
  {
    ay localay = t();
    if (!localay.a())
      throw b(localay).a();
    return localay;
  }

  private ay t()
  {
    ay localay = new ay(this);
    if ((0x1 & this.a) == 1);
    for (int i = 1; ; i = 0)
    {
      ay.a(localay, this.b);
      ay.a(localay, i);
      ab_();
      return localay;
    }
  }

  private az u()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ay.h().k();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.c();
  }

  public final cj C()
  {
    return ay.i();
  }

  public final az a(ay paramay)
  {
    if (paramay == ay.h());
    for (az localaz = this; ; localaz = this)
    {
      return localaz;
      if (paramay.j())
        a(paramay.k());
      e(paramay.b_());
    }
  }

  public final az a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final az e(m paramm, df paramdf)
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
        for (az localaz = this; ; localaz = this)
        {
          return localaz;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
      }
    }
  }

  public final ay i()
  {
    ay localay = t();
    if (!localay.a())
      throw b(localay);
    return localay;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.az
 * JD-Core Version:    0.6.2
 */