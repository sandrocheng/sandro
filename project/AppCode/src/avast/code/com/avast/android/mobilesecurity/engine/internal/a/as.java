package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class as extends n
  implements at
{
  private int a;
  private int b;
  private int c;
  private int d;
  private long e;

  private as()
  {
    f();
  }

  private void f()
  {
  }

  private static as k()
  {
    return new as();
  }

  public as a()
  {
    return k().a(d());
  }

  public as a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    return this;
  }

  public as a(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    return this;
  }

  public as a(ar paramar)
  {
    if (paramar == ar.a());
    while (true)
    {
      return this;
      if (paramar.b())
        a(paramar.c());
      if (paramar.d())
        b(paramar.e());
      if (paramar.f())
        c(paramar.g());
      if (paramar.h())
        a(paramar.i());
    }
  }

  public as a(d paramd, g paramg)
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
        this.a = (0x1 | this.a);
        this.b = paramd.q();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.q();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramd.q();
        break;
      case 32:
      }
      this.a = (0x8 | this.a);
      this.e = paramd.f();
    }
  }

  public ar b()
  {
    return ar.a();
  }

  public as b(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    return this;
  }

  public ar c()
  {
    ar localar = d();
    if (!localar.v())
      throw a(localar);
    return localar;
  }

  public as c(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    return this;
  }

  public ar d()
  {
    int i = 1;
    ar localar = new ar(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      ar.a(localar, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      ar.b(localar, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      ar.c(localar, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      ar.a(localar, this.e);
      ar.d(localar, i);
      return localar;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.as
 * JD-Core Version:    0.6.2
 */