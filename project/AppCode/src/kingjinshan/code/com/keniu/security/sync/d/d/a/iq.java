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

public final class iq extends dn
  implements ir
{
  private int a;
  private Object b = "";
  private int c;
  private Object d = "";
  private Object e = "";
  private Object f = "";

  private iq()
  {
    ip.u();
  }

  private iq(dp paramdp, byte paramByte)
  {
    super(paramdp);
    ip.u();
  }

  private static ip A()
  {
    return ip.h();
  }

  private ip D()
  {
    ip localip = t();
    if (!localip.a())
      throw b(localip).a();
    return localip;
  }

  private iq E()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = ip.h().k();
    af_();
    return this;
  }

  private iq N()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  private iq U()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = ip.h().o();
    af_();
    return this;
  }

  private iq V()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = ip.h().q();
    af_();
    return this;
  }

  private iq W()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = ip.h().s();
    af_();
    return this;
  }

  private iq a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private iq a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private iq b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private iq c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  private iq d(ev paramev)
  {
    if ((paramev instanceof ip));
    for (iq localiq = a((ip)paramev); ; localiq = this)
    {
      return localiq;
      super.a(paramev);
    }
  }

  private iq d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x8 | this.a);
    this.e = parami;
    af_();
  }

  private void h(i parami)
  {
    this.a = (0x10 | this.a);
    this.f = parami;
    af_();
  }

  private static cj v()
  {
    return ih.t();
  }

  private static void w()
  {
    ip.u();
  }

  private static iq x()
  {
    return new iq();
  }

  private iq y()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = "";
    this.a = (0xFFFFFFF7 & this.a);
    this.f = "";
    this.a = (0xFFFFFFEF & this.a);
    return this;
  }

  private iq z()
  {
    return new iq().a(t());
  }

  protected final dv B()
  {
    return ih.u();
  }

  public final cj C()
  {
    return ip.i();
  }

  public final iq a(ip paramip)
  {
    if (paramip == ip.h());
    for (iq localiq = this; ; localiq = this)
    {
      return localiq;
      if (paramip.j())
      {
        String str4 = paramip.k();
        if (str4 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str4;
        af_();
      }
      if (paramip.l())
      {
        int i = paramip.m();
        this.a = (0x2 | this.a);
        this.c = i;
        af_();
      }
      if (paramip.n())
      {
        String str3 = paramip.o();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str3;
        af_();
      }
      if (paramip.p())
      {
        String str2 = paramip.q();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x8 | this.a);
        this.e = str2;
        af_();
      }
      if (paramip.r())
      {
        String str1 = paramip.s();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x10 | this.a);
        this.f = str1;
        af_();
      }
      e(paramip.b_());
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

  public final iq e(m paramm, df paramdf)
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
        for (iq localiq = this; ; localiq = this)
        {
          return localiq;
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
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramm.k();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramm.k();
      }
    }
  }

  public final ip i()
  {
    ip localip = t();
    if (!localip.a())
      throw b(localip);
    return localip;
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

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String q()
  {
    Object localObject = this.e;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.e = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String s()
  {
    Object localObject = this.f;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.f = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final ip t()
  {
    ip localip = new ip(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    ip.a(localip, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    ip.a(localip, this.c);
    if ((i & 0x4) == 4)
      k |= 4;
    ip.b(localip, this.d);
    if ((i & 0x8) == 8)
      k |= 8;
    ip.c(localip, this.e);
    if ((i & 0x10) == 16);
    for (int m = k | 0x10; ; m = k)
    {
      ip.d(localip, this.f);
      ip.b(localip, m);
      ab_();
      return localip;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.iq
 * JD-Core Version:    0.6.2
 */