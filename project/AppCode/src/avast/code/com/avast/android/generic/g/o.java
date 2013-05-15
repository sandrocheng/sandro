package com.avast.android.generic.g;

import com.google.a.g;

public final class o extends com.google.a.n
  implements p
{
  private int a;
  private com.google.a.c b = com.google.a.c.a;
  private q c = q.a;
  private Object d = "";
  private Object e = "";
  private Object f = "";
  private c g = c.a();
  private com.google.a.c h = com.google.a.c.a;
  private com.google.a.c i = com.google.a.c.a;

  private o()
  {
    l();
  }

  private void l()
  {
  }

  private static o m()
  {
    return new o();
  }

  public o a()
  {
    return m().a(d());
  }

  public o a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.g = paramc;
    this.a = (0x20 | this.a);
    return this;
  }

  public o a(n paramn)
  {
    if (paramn == n.a());
    while (true)
    {
      return this;
      if (paramn.b())
        a(paramn.c());
      if (paramn.d())
        a(paramn.e());
      if (paramn.f())
        a(paramn.g());
      if (paramn.h())
        b(paramn.i());
      if (paramn.j())
        c(paramn.k());
      if (paramn.l())
        b(paramn.m());
      if (paramn.n())
        b(paramn.o());
      if (paramn.p())
        c(paramn.q());
    }
  }

  public o a(q paramq)
  {
    if (paramq == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramq;
    return this;
  }

  public o a(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public o a(com.google.a.d paramd, g paramg)
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
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 16:
        q localq = q.a(paramd.n());
        if (localq == null)
          continue;
        this.a = (0x2 | this.a);
        this.c = localq;
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
        d locald = c.H();
        if (e())
          locald.a(f());
        paramd.a(locald, paramg);
        a(locald.d());
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramd.l();
        break;
      case 66:
      }
      this.a = (0x80 | this.a);
      this.i = paramd.l();
    }
  }

  public o a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public n b()
  {
    return n.a();
  }

  public o b(c paramc)
  {
    if (((0x20 & this.a) == 32) && (this.g != c.a()));
    for (this.g = c.a(this.g).a(paramc).d(); ; this.g = paramc)
    {
      this.a = (0x20 | this.a);
      return this;
    }
  }

  public o b(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramc;
    return this;
  }

  public o b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public n c()
  {
    n localn = d();
    if (!localn.v())
      throw a(localn);
    return localn;
  }

  public o c(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramc;
    return this;
  }

  public o c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public n d()
  {
    int j = 1;
    n localn = new n(this, null);
    int k = this.a;
    if ((k & 0x1) == j);
    while (true)
    {
      n.a(localn, this.b);
      if ((k & 0x2) == 2)
        j |= 2;
      n.a(localn, this.c);
      if ((k & 0x4) == 4)
        j |= 4;
      n.a(localn, this.d);
      if ((k & 0x8) == 8)
        j |= 8;
      n.b(localn, this.e);
      if ((k & 0x10) == 16)
        j |= 16;
      n.c(localn, this.f);
      if ((k & 0x20) == 32)
        j |= 32;
      n.a(localn, this.g);
      if ((k & 0x40) == 64)
        j |= 64;
      n.b(localn, this.h);
      if ((k & 0x80) == 128)
        j |= 128;
      n.c(localn, this.i);
      n.a(localn, j);
      return localn;
      j = 0;
    }
  }

  public boolean e()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c f()
  {
    return this.g;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.g.o
 * JD-Core Version:    0.6.2
 */