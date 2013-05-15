package com.avast.android.generic.internet.c.a;

import com.google.a.g;
import com.google.a.n;

public final class d extends n
  implements e
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private int e;
  private Object f = "";
  private Object g = "";
  private Object h = "";
  private com.google.a.c i = com.google.a.c.a;
  private com.google.a.c j = com.google.a.c.a;
  private q k = q.a();

  private d()
  {
    l();
  }

  private void l()
  {
  }

  private static d m()
  {
    return new d();
  }

  public d a()
  {
    return m().a(d());
  }

  public d a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    return this;
  }

  public d a(c paramc)
  {
    if (paramc == c.a());
    while (true)
    {
      return this;
      if (paramc.b())
        a(paramc.c());
      if (paramc.d())
        b(paramc.e());
      if (paramc.f())
        c(paramc.g());
      if (paramc.h())
        a(paramc.i());
      if (paramc.j())
        d(paramc.k());
      if (paramc.l())
        e(paramc.m());
      if (paramc.n())
        f(paramc.o());
      if (paramc.p())
        a(paramc.q());
      if (paramc.r())
        b(paramc.s());
      if (paramc.t())
        b(paramc.u());
    }
  }

  public d a(q paramq)
  {
    if (paramq == null)
      throw new NullPointerException();
    this.k = paramq;
    this.a = (0x200 | this.a);
    return this;
  }

  public d a(r paramr)
  {
    this.k = paramr.c();
    this.a = (0x200 | this.a);
    return this;
  }

  public d a(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramc;
    return this;
  }

  public d a(com.google.a.d paramd, g paramg)
  {
    while (true)
    {
      int m = paramd.a();
      switch (m)
      {
      default:
        if (a(paramd, paramg, m))
          continue;
      case 0:
        return this;
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 24:
        this.a = (0x8 | this.a);
        this.e = paramd.g();
        break;
      case 34:
        this.a = (0x10 | this.a);
        this.f = paramd.l();
        break;
      case 42:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 50:
        this.a = (0x40 | this.a);
        this.h = paramd.l();
        break;
      case 58:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 66:
        this.a = (0x100 | this.a);
        this.j = paramd.l();
        break;
      case 74:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 82:
      }
      r localr = q.p();
      if (e())
        localr.a(f());
      paramd.a(localr, paramg);
      a(localr.d());
    }
  }

  public d a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public c b()
  {
    return c.a();
  }

  public d b(q paramq)
  {
    if (((0x200 & this.a) == 512) && (this.k != q.a()));
    for (this.k = q.a(this.k).a(paramq).d(); ; this.k = paramq)
    {
      this.a = (0x200 | this.a);
      return this;
    }
  }

  public d b(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramc;
    return this;
  }

  public d b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public c c()
  {
    c localc = d();
    if (!localc.v())
      throw a(localc);
    return localc;
  }

  public d c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public c d()
  {
    int m = 1;
    c localc = new c(this, null);
    int n = this.a;
    if ((n & 0x1) == m);
    while (true)
    {
      c.a(localc, this.b);
      if ((n & 0x2) == 2)
        m |= 2;
      c.b(localc, this.c);
      if ((n & 0x4) == 4)
        m |= 4;
      c.c(localc, this.d);
      if ((n & 0x8) == 8)
        m |= 8;
      c.a(localc, this.e);
      if ((n & 0x10) == 16)
        m |= 16;
      c.d(localc, this.f);
      if ((n & 0x20) == 32)
        m |= 32;
      c.e(localc, this.g);
      if ((n & 0x40) == 64)
        m |= 64;
      c.f(localc, this.h);
      if ((n & 0x80) == 128)
        m |= 128;
      c.a(localc, this.i);
      if ((n & 0x100) == 256)
        m |= 256;
      c.b(localc, this.j);
      if ((n & 0x200) == 512)
        m |= 512;
      c.a(localc, this.k);
      c.b(localc, m);
      return localc;
      m = 0;
    }
  }

  public d d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public d e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public boolean e()
  {
    if ((0x200 & this.a) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public d f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public q f()
  {
    return this.k;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.d
 * JD-Core Version:    0.6.2
 */