package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class at extends n
  implements au
{
  private int a;
  private c b = c.a;
  private long c;
  private c d = c.a;
  private c e = c.a;

  private at()
  {
    f();
  }

  private void f()
  {
  }

  private static at k()
  {
    return new at();
  }

  public at a()
  {
    return k().a(d());
  }

  public at a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public at a(as paramas)
  {
    if (paramas == as.a());
    while (true)
    {
      return this;
      if (paramas.b())
        a(paramas.c());
      if (paramas.d())
        a(paramas.e());
      if (paramas.f())
        b(paramas.g());
      if (paramas.h())
        c(paramas.i());
    }
  }

  public at a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public at a(d paramd, g paramg)
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
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.f();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 34:
      }
      this.a = (0x8 | this.a);
      this.e = paramd.l();
    }
  }

  public as b()
  {
    return as.a();
  }

  public at b(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramc;
    return this;
  }

  public as c()
  {
    as localas = d();
    if (!localas.v())
      throw a(localas);
    return localas;
  }

  public at c(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramc;
    return this;
  }

  public as d()
  {
    int i = 1;
    as localas = new as(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      as.a(localas, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      as.a(localas, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      as.b(localas, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      as.c(localas, this.e);
      as.a(localas, i);
      return localas;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.at
 * JD-Core Version:    0.6.2
 */