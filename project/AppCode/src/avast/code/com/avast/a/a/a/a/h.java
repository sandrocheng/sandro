package com.avast.a.a.a.a;

import com.google.a.d;
import com.google.a.n;

public final class h extends n
  implements i
{
  private int a;
  private long b;
  private long c;
  private e d = e.a;
  private long e;
  private Object f = "";
  private Object g = "";
  private long h;
  private Object i = "";

  private h()
  {
    l();
  }

  private void l()
  {
  }

  private static h m()
  {
    return new h();
  }

  public h a()
  {
    return m().a(d());
  }

  public h a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    return this;
  }

  public h a(e parame)
  {
    if (parame == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = parame;
    return this;
  }

  public h a(g paramg)
  {
    if (paramg == g.a());
    while (true)
    {
      return this;
      if (paramg.b())
        a(paramg.c());
      if (paramg.d())
        b(paramg.e());
      if (paramg.f())
        a(paramg.g());
      if (paramg.h())
        c(paramg.i());
      if (paramg.j())
        a(paramg.k());
      if (paramg.l())
        b(paramg.m());
      if (paramg.n())
        d(paramg.o());
      if (paramg.p())
        c(paramg.q());
    }
  }

  public h a(d paramd, com.google.a.g paramg)
  {
    while (true)
    {
      int j = paramd.a();
      switch (j)
      {
      default:
        if (a(paramd, paramg, j))
          continue;
      case 0:
        return this;
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramd.f();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.f();
        break;
      case 24:
        e locale = e.a(paramd.n());
        if (locale == null)
          continue;
        this.a = (0x4 | this.a);
        this.d = locale;
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramd.f();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramd.l();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramd.f();
        break;
      case 66:
      }
      this.a = (0x80 | this.a);
      this.i = paramd.l();
    }
  }

  public h a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public g b()
  {
    return g.a();
  }

  public h b(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public h b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public g c()
  {
    g localg = d();
    if (!localg.v())
      throw a(localg);
    return localg;
  }

  public h c(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    return this;
  }

  public h c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    return this;
  }

  public g d()
  {
    int j = 1;
    g localg = new g(this, null);
    int k = this.a;
    if ((k & 0x1) == j);
    while (true)
    {
      g.a(localg, this.b);
      if ((k & 0x2) == 2)
        j |= 2;
      g.b(localg, this.c);
      if ((k & 0x4) == 4)
        j |= 4;
      g.a(localg, this.d);
      if ((k & 0x8) == 8)
        j |= 8;
      g.c(localg, this.e);
      if ((k & 0x10) == 16)
        j |= 16;
      g.a(localg, this.f);
      if ((k & 0x20) == 32)
        j |= 32;
      g.b(localg, this.g);
      if ((k & 0x40) == 64)
        j |= 64;
      g.d(localg, this.h);
      if ((k & 0x80) == 128)
        j |= 128;
      g.c(localg, this.i);
      g.a(localg, j);
      return localg;
      j = 0;
    }
  }

  public h d(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    return this;
  }

  public boolean e()
  {
    int j = 1;
    if ((0x1 & this.a) == j);
    while (true)
    {
      return j;
      int k = 0;
    }
  }

  public boolean f()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v()
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = f();
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.h
 * JD-Core Version:    0.6.2
 */