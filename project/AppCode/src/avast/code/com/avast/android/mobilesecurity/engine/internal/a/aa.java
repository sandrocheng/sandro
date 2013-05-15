package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class aa extends n
  implements ab
{
  private int a;
  private c b = c.a;
  private c c = c.a;
  private c d = c.a;
  private c e = c.a;
  private c f = c.a;
  private int g;

  private aa()
  {
    f();
  }

  private void f()
  {
  }

  private static aa k()
  {
    return new aa();
  }

  public aa a()
  {
    return k().a(d());
  }

  public aa a(int paramInt)
  {
    this.a = (0x20 | this.a);
    this.g = paramInt;
    return this;
  }

  public aa a(z paramz)
  {
    if (paramz == z.a());
    while (true)
    {
      return this;
      if (paramz.b())
        a(paramz.c());
      if (paramz.d())
        b(paramz.e());
      if (paramz.f())
        c(paramz.g());
      if (paramz.h())
        d(paramz.i());
      if (paramz.j())
        e(paramz.k());
      if (paramz.l())
        a(paramz.m());
    }
  }

  public aa a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public aa a(d paramd, g paramg)
  {
    while (true)
    {
      int i = paramd.a();
      switch (i)
      {
      default:
        if (a(paramd, paramg, i))
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
      case 48:
      }
      this.a = (0x20 | this.a);
      this.g = paramd.q();
    }
  }

  public aa b(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramc;
    return this;
  }

  public z b()
  {
    return z.a();
  }

  public aa c(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramc;
    return this;
  }

  public z c()
  {
    z localz = d();
    if (!localz.v())
      throw a(localz);
    return localz;
  }

  public aa d(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramc;
    return this;
  }

  public z d()
  {
    int i = 1;
    z localz = new z(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      z.a(localz, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      z.b(localz, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      z.c(localz, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      z.d(localz, this.e);
      if ((j & 0x10) == 16)
        i |= 16;
      z.e(localz, this.f);
      if ((j & 0x20) == 32)
        i |= 32;
      z.a(localz, this.g);
      z.b(localz, i);
      return localz;
      i = 0;
    }
  }

  public aa e(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramc;
    return this;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.aa
 * JD-Core Version:    0.6.2
 */