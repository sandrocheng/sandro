package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class p extends dn
  implements q
{
  private int a;
  private Object b = "";
  private gn c = gn.h();
  private fp d;
  private Object e = "";
  private int f;
  private long g;
  private int h;

  private p()
  {
    y();
  }

  private p(dp paramdp, byte paramByte)
  {
    super(paramdp);
    y();
  }

  private p A()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    if (this.d == null)
      this.c = gn.h();
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      this.e = "";
      this.a = (0xFFFFFFFB & this.a);
      this.f = 0;
      this.a = (0xFFFFFFF7 & this.a);
      this.g = 0L;
      this.a = (0xFFFFFFEF & this.a);
      this.h = 0;
      this.a = (0xFFFFFFDF & this.a);
      return this;
      this.d.g();
    }
  }

  private p D()
  {
    return new p().a(U());
  }

  private static o E()
  {
    return o.h();
  }

  private o N()
  {
    o localo = U();
    if (!localo.a())
      throw b(localo).a();
    return localo;
  }

  private o U()
  {
    o localo = new o(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    o.a(localo, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      if (this.d == null)
      {
        o.a(localo, this.c);
        if ((i & 0x4) != 4)
          break label195;
      }
      label195: for (int n = m | 0x4; ; n = m)
      {
        o.b(localo, this.e);
        if ((i & 0x8) == 8)
          n |= 8;
        o.a(localo, this.f);
        if ((i & 0x10) == 16)
          n |= 16;
        o.a(localo, this.g);
        if ((i & 0x20) == 32)
          n |= 32;
        o.b(localo, this.h);
        o.c(localo, n);
        ab_();
        return localo;
        o.a(localo, (gn)this.d.d());
        break;
      }
    }
  }

  private p V()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = o.h().k();
    af_();
    return this;
  }

  private p W()
  {
    if (this.d == null)
    {
      this.c = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.d.g();
    }
  }

  private go X()
  {
    this.a = (0x2 | this.a);
    af_();
    return (go)Y().e();
  }

  private fp Y()
  {
    if (this.d == null)
    {
      this.d = new fp(this.c, ae_(), ad_());
      this.c = null;
    }
    return this.d;
  }

  private p Z()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = o.h().p();
    af_();
    return this;
  }

  private p a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.g = paramLong;
    af_();
    return this;
  }

  private p a(go paramgo)
  {
    if (this.d == null)
    {
      this.c = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d.a(paramgo.i());
    }
  }

  private p aa()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private p ab()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.g = 0L;
    af_();
    return this;
  }

  private p ac()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0;
    af_();
    return this;
  }

  private p b(gn paramgn)
  {
    if (this.d == null)
      if (((0x2 & this.a) == 2) && (this.c != gn.h()))
      {
        this.c = gn.a(this.c).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.c = paramgn;
      break;
      this.d.b(paramgn);
    }
  }

  private p d(ev paramev)
  {
    if ((paramev instanceof o));
    for (p localp = a((o)paramev); ; localp = this)
    {
      return localp;
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
    this.a = (0x4 | this.a);
    this.e = parami;
    af_();
  }

  private static cj x()
  {
    return a.T();
  }

  private void y()
  {
    if (o.x())
      Y();
  }

  private static p z()
  {
    return new p();
  }

  protected final dv B()
  {
    return a.U();
  }

  public final cj C()
  {
    return o.i();
  }

  public final p a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  public final p a(gn paramgn)
  {
    if (this.d == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.c = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      return this;
      this.d.a(paramgn);
    }
  }

  public final p a(o paramo)
  {
    p localp;
    if (paramo == o.h())
    {
      localp = this;
      return localp;
    }
    if (paramo.j())
      a(paramo.k());
    gn localgn;
    if (paramo.l())
    {
      localgn = paramo.m();
      if (this.d != null)
        break label205;
      if (((0x2 & this.a) != 2) || (this.c == gn.h()))
        break label196;
      this.c = gn.a(this.c).a(localgn).D();
      label86: af_();
    }
    while (true)
    {
      this.a = (0x2 | this.a);
      if (paramo.o())
        b(paramo.p());
      if (paramo.q())
        a(paramo.r());
      if (paramo.s())
      {
        long l = paramo.t();
        this.a = (0x10 | this.a);
        this.g = l;
        af_();
      }
      if (paramo.u())
        b(paramo.v());
      e(paramo.b_());
      localp = this;
      break;
      label196: this.c = localgn;
      break label86;
      label205: this.d.b(localgn);
    }
  }

  public final p a(String paramString)
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
      else if (!o())
        bool = false;
      else if (!q())
        bool = false;
      else if (!m().a())
        bool = false;
      else
        bool = true;
    }
  }

  public final p b(int paramInt)
  {
    this.a = (0x20 | this.a);
    this.h = paramInt;
    af_();
    return this;
  }

  public final p b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  public final p e(m paramm, df paramdf)
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
        for (p localp = this; ; localp = this)
        {
          return localp;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        go localgo = gn.Z();
        if (l())
          localgo.a(m());
        paramm.a(localgo, paramdf);
        a(localgo.D());
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.e = paramm.k();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.f = paramm.f();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.g = paramm.e();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.h = paramm.f();
      }
    }
  }

  public final o i()
  {
    o localo = U();
    if (!localo.a())
      throw b(localo);
    return localo;
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

  public final gn m()
  {
    if (this.d == null);
    for (gn localgn = this.c; ; localgn = (gn)this.d.c())
      return localgn;
  }

  public final gp n()
  {
    if (this.d != null);
    for (Object localObject = (gp)this.d.f(); ; localObject = this.c)
      return localObject;
  }

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String p()
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

  public final boolean q()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int r()
  {
    return this.f;
  }

  public final boolean s()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long t()
  {
    return this.g;
  }

  public final boolean u()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int v()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.p
 * JD-Core Version:    0.6.2
 */