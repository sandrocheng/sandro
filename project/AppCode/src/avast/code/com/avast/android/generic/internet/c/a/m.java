package com.avast.android.generic.internet.c.a;

import com.google.a.al;
import com.google.a.d;
import com.google.a.g;

public final class m extends com.google.a.n
  implements p
{
  private int a;
  private n b = n.a;

  private m()
  {
    f();
  }

  private void f()
  {
  }

  private static m k()
  {
    return new m();
  }

  private l l()
  {
    l locall = d();
    if (!locall.v())
      throw a(locall).a();
    return locall;
  }

  public m a()
  {
    return k().a(d());
  }

  public m a(l paraml)
  {
    if (paraml == l.a());
    while (true)
    {
      return this;
      if (paraml.b())
        a(paraml.c());
    }
  }

  public m a(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramn;
    return this;
  }

  public m a(d paramd, g paramg)
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
      case 8:
      }
      n localn = n.a(paramd.n());
      if (localn != null)
      {
        this.a = (0x1 | this.a);
        this.b = localn;
      }
    }
  }

  public l b()
  {
    return l.a();
  }

  public l c()
  {
    l locall = d();
    if (!locall.v())
      throw a(locall);
    return locall;
  }

  public l d()
  {
    int i = 1;
    l locall = new l(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      l.a(locall, this.b);
      l.a(locall, i);
      return locall;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.m
 * JD-Core Version:    0.6.2
 */