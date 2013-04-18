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

public final class cd extends dn
  implements ce
{
  private int a;
  private Object b = "";
  private Object c = "";
  private long d;
  private int e;
  private int f;

  private cd()
  {
    cc.u();
  }

  private cd(dp paramdp, byte paramByte)
  {
    super(paramdp);
    cc.u();
  }

  private cc A()
  {
    cc localcc = D();
    if (!localcc.a())
      throw b(localcc).a();
    return localcc;
  }

  private cc D()
  {
    cc localcc = new cc(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    cc.a(localcc, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    cc.b(localcc, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    cc.a(localcc, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    cc.a(localcc, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      cc.b(localcc, this.f);
      cc.c(localcc, m);
      ab_();
      return localcc;
    }
  }

  private cd E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = cc.h().k();
    af_();
    return this;
  }

  private cd N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = cc.h().m();
    af_();
    return this;
  }

  private cd U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private cd V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private cd W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private cd d(ev paramev)
  {
    if ((paramev instanceof cc));
    for (cd localcd = a((cc)paramev); ; localcd = this)
    {
      return localcd;
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

  private static cj u()
  {
    return a.H();
  }

  private static void v()
  {
    cc.u();
  }

  private static cd w()
  {
    return new cd();
  }

  private cd x()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0;
    this.a = (0xFFFFFFEF & this.a);
    return this;
  }

  private cd y()
  {
    return new cd().a(D());
  }

  private static cc z()
  {
    return cc.h();
  }

  protected final dv B()
  {
    return a.I();
  }

  public final cj C()
  {
    return cc.i();
  }

  public final cd a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  public final cd a(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  public final cd a(cc paramcc)
  {
    if (paramcc == cc.h());
    for (cd localcd = this; ; localcd = this)
    {
      return localcd;
      if (paramcc.j())
        a(paramcc.k());
      if (paramcc.l())
        b(paramcc.m());
      if (paramcc.n())
        a(paramcc.o());
      if (paramcc.p())
        a(paramcc.q());
      if (paramcc.r())
        b(paramcc.s());
      e(paramcc.b_());
    }
  }

  public final cd a(String paramString)
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
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!l())
        bool = false;
      else if (!p())
        bool = false;
      else if (!r())
        bool = false;
      else
        bool = true;
    }
  }

  public final cd b(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  public final cd b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final cd e(m paramm, df paramdf)
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
        for (cd localcd = this; ; localcd = this)
        {
          return localcd;
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
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.e();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.f();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramm.f();
      }
    }
  }

  public final cc i()
  {
    cc localcc = D();
    if (!localcc.a())
      throw b(localcc);
    return localcc;
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

  public final long o()
  {
    return this.d;
  }

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.e;
  }

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cd
 * JD-Core Version:    0.6.2
 */