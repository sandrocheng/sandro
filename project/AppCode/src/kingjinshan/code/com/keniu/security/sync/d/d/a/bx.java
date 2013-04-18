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

public final class bx extends dn
  implements by
{
  private int a;
  private Object b = "";

  private bx()
  {
    bw.l();
  }

  private bx(dp paramdp, byte paramByte)
  {
    super(paramdp);
    bw.l();
  }

  private bx a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bx d(ev paramev)
  {
    if ((paramev instanceof bw));
    for (bx localbx = a((bw)paramev); ; localbx = this)
    {
      return localbx;
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
    return a.an();
  }

  private static void m()
  {
    bw.l();
  }

  private static bx n()
  {
    return new bx();
  }

  private bx o()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    return this;
  }

  private bx p()
  {
    return new bx().a(t());
  }

  private static bw q()
  {
    return bw.h();
  }

  private bw r()
  {
    bw localbw = t();
    if (!localbw.a())
      throw b(localbw);
    return localbw;
  }

  private bw s()
  {
    bw localbw = t();
    if (!localbw.a())
      throw b(localbw).a();
    return localbw;
  }

  private bw t()
  {
    bw localbw = new bw(this);
    if ((0x1 & this.a) == 1);
    for (int i = 1; ; i = 0)
    {
      bw.a(localbw, this.b);
      bw.a(localbw, i);
      ab_();
      return localbw;
    }
  }

  private bx u()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bw.h().k();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.ao();
  }

  public final cj C()
  {
    return bw.i();
  }

  public final bx a(bw parambw)
  {
    if (parambw == bw.h());
    for (bx localbx = this; ; localbx = this)
    {
      return localbx;
      if (parambw.j())
      {
        String str = parambw.k();
        if (str == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str;
        af_();
      }
      e(parambw.b_());
    }
  }

  public final boolean a()
  {
    if (!j());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final bx e(m paramm, df paramdf)
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
        for (bx localbx = this; ; localbx = this)
        {
          return localbx;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.bx
 * JD-Core Version:    0.6.2
 */