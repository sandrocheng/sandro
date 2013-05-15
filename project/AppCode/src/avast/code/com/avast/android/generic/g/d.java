package com.avast.android.generic.g;

import com.google.a.n;

public final class d extends n
  implements k
{
  private int a;
  private com.google.a.c b = com.google.a.c.a;
  private e c = e.a;
  private com.google.a.c d = com.google.a.c.a;
  private com.google.a.c e = com.google.a.c.a;
  private com.google.a.c f = com.google.a.c.a;
  private com.google.a.c g = com.google.a.c.a;
  private com.google.a.c h = com.google.a.c.a;
  private com.google.a.c i = com.google.a.c.a;
  private com.google.a.c j = com.google.a.c.a;
  private g k = g.a;
  private i l = i.a;
  private com.google.a.c m = com.google.a.c.a;
  private com.google.a.c n = com.google.a.c.a;
  private com.google.a.c o = com.google.a.c.a;

  private d()
  {
    f();
  }

  private void f()
  {
  }

  private static d k()
  {
    return new d();
  }

  public d a()
  {
    return k().a(d());
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
        a(paramc.e());
      if (paramc.f())
        b(paramc.g());
      if (paramc.h())
        c(paramc.i());
      if (paramc.j())
        d(paramc.k());
      if (paramc.l())
        e(paramc.m());
      if (paramc.n())
        f(paramc.o());
      if (paramc.p())
        g(paramc.q());
      if (paramc.r())
        h(paramc.s());
      if (paramc.t())
        a(paramc.u());
      if (paramc.x())
        a(paramc.y());
      if (paramc.z())
        i(paramc.C());
      if (paramc.D())
        j(paramc.E());
      if (paramc.F())
        k(paramc.G());
    }
  }

  public d a(e parame)
  {
    if (parame == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = parame;
    return this;
  }

  public d a(g paramg)
  {
    if (paramg == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramg;
    return this;
  }

  public d a(i parami)
  {
    if (parami == null)
      throw new NullPointerException();
    this.a = (0x400 | this.a);
    this.l = parami;
    return this;
  }

  public d a(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public d a(com.google.a.d paramd, com.google.a.g paramg)
  {
    while (true)
    {
      int i1 = paramd.a();
      switch (i1)
      {
      default:
        if (a(paramd, paramg, i1))
          continue;
      case 0:
        return this;
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 16:
        e locale = e.a(paramd.n());
        if (locale == null)
          continue;
        this.a = (0x2 | this.a);
        this.c = locale;
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramd.l();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramd.l();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramd.l();
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 74:
        this.a = (0x100 | this.a);
        this.j = paramd.l();
        break;
      case 80:
        g localg = g.a(paramd.n());
        if (localg == null)
          continue;
        this.a = (0x200 | this.a);
        this.k = localg;
        break;
      case 88:
        i locali = i.a(paramd.n());
        if (locali == null)
          continue;
        this.a = (0x400 | this.a);
        this.l = locali;
        break;
      case 98:
        this.a = (0x800 | this.a);
        this.m = paramd.l();
        break;
      case 106:
        this.a = (0x1000 | this.a);
        this.n = paramd.l();
        break;
      case 114:
      }
      this.a = (0x2000 | this.a);
      this.o = paramd.l();
    }
  }

  public c b()
  {
    return c.a();
  }

  public d b(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramc;
    return this;
  }

  public c c()
  {
    c localc = d();
    if (!localc.v())
      throw a(localc);
    return localc;
  }

  public d c(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramc;
    return this;
  }

  public c d()
  {
    int i1 = 1;
    c localc = new c(this, null);
    int i2 = this.a;
    if ((i2 & 0x1) == i1);
    while (true)
    {
      c.a(localc, this.b);
      if ((i2 & 0x2) == 2)
        i1 |= 2;
      c.a(localc, this.c);
      if ((i2 & 0x4) == 4)
        i1 |= 4;
      c.b(localc, this.d);
      if ((i2 & 0x8) == 8)
        i1 |= 8;
      c.c(localc, this.e);
      if ((i2 & 0x10) == 16)
        i1 |= 16;
      c.d(localc, this.f);
      if ((i2 & 0x20) == 32)
        i1 |= 32;
      c.e(localc, this.g);
      if ((i2 & 0x40) == 64)
        i1 |= 64;
      c.f(localc, this.h);
      if ((i2 & 0x80) == 128)
        i1 |= 128;
      c.g(localc, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 256;
      c.h(localc, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 512;
      c.a(localc, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 1024;
      c.a(localc, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 2048;
      c.i(localc, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 4096;
      c.j(localc, this.n);
      if ((i2 & 0x2000) == 8192)
        i1 |= 8192;
      c.k(localc, this.o);
      c.a(localc, i1);
      return localc;
      i1 = 0;
    }
  }

  public d d(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramc;
    return this;
  }

  public d e(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramc;
    return this;
  }

  public d f(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramc;
    return this;
  }

  public d g(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramc;
    return this;
  }

  public d h(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramc;
    return this;
  }

  public d i(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x800 | this.a);
    this.m = paramc;
    return this;
  }

  public d j(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1000 | this.a);
    this.n = paramc;
    return this;
  }

  public d k(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x2000 | this.a);
    this.o = paramc;
    return this;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.g.d
 * JD-Core Version:    0.6.2
 */