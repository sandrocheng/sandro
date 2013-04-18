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

public final class jr extends dn
  implements js
{
  private int a;
  private Object b = "";

  private jr()
  {
    jq.m();
  }

  private jr(dp paramdp, byte paramByte)
  {
    super(paramdp);
    jq.m();
  }

  private jr d(ev paramev)
  {
    if ((paramev instanceof jq));
    for (jr localjr = a((jq)paramev); ; localjr = this)
    {
      return localjr;
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
    return ih.j();
  }

  private static void n()
  {
    jq.m();
  }

  private static jr o()
  {
    return new jr();
  }

  private jr p()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    return this;
  }

  private jr q()
  {
    return new jr().a(t());
  }

  private static jq r()
  {
    return jq.h();
  }

  private jq s()
  {
    jq localjq = t();
    if (!localjq.a())
      throw b(localjq).a();
    return localjq;
  }

  private jq t()
  {
    jq localjq = new jq(this);
    if ((0x1 & this.a) == 1);
    for (int i = 1; ; i = 0)
    {
      jq.a(localjq, this.b);
      jq.a(localjq, i);
      ab_();
      return localjq;
    }
  }

  private jr u()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = jq.h().k();
    af_();
    return this;
  }

  protected final dv B()
  {
    return ih.k();
  }

  public final cj C()
  {
    return jq.i();
  }

  public final jr a(jq paramjq)
  {
    if (paramjq == jq.h());
    for (jr localjr = this; ; localjr = this)
    {
      return localjr;
      if (paramjq.j())
        a(paramjq.k());
      e(paramjq.b_());
    }
  }

  public final jr a(String paramString)
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

  public final jr e(m paramm, df paramdf)
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
        for (jr localjr = this; ; localjr = this)
        {
          return localjr;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
      }
    }
  }

  public final jq i()
  {
    jq localjq = t();
    if (!localjq.a())
      throw b(localjq);
    return localjq;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jr
 * JD-Core Version:    0.6.2
 */