package com.avast.a.a.a.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class z extends n
  implements aa
{
  private int a;
  private long b;
  private long c;
  private boolean d;
  private Object e = "";
  private Object f = "";
  private Object g = "";
  private long h;
  private Object i = "";

  private z()
  {
    l();
  }

  private void l()
  {
  }

  private static z m()
  {
    return new z();
  }

  public z a()
  {
    return m().a(d());
  }

  public z a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    return this;
  }

  public z a(y paramy)
  {
    if (paramy == y.a());
    while (true)
    {
      return this;
      if (paramy.b())
        a(paramy.c());
      if (paramy.d())
        b(paramy.e());
      if (paramy.f())
        a(paramy.g());
      if (paramy.h())
        a(paramy.i());
      if (paramy.j())
        b(paramy.k());
      if (paramy.l())
        c(paramy.m());
      if (paramy.n())
        c(paramy.o());
      if (paramy.p())
        d(paramy.q());
    }
  }

  public z a(d paramd, g paramg)
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
        this.a = (0x4 | this.a);
        this.d = paramd.j();
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

  public z a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public z a(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    return this;
  }

  public y b()
  {
    return y.a();
  }

  public z b(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public z b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public y c()
  {
    y localy = d();
    if (!localy.v())
      throw a(localy);
    return localy;
  }

  public z c(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    return this;
  }

  public z c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public y d()
  {
    int j = 1;
    y localy = new y(this, null);
    int k = this.a;
    if ((k & 0x1) == j);
    while (true)
    {
      y.a(localy, this.b);
      if ((k & 0x2) == 2)
        j |= 2;
      y.b(localy, this.c);
      if ((k & 0x4) == 4)
        j |= 4;
      y.a(localy, this.d);
      if ((k & 0x8) == 8)
        j |= 8;
      y.a(localy, this.e);
      if ((k & 0x10) == 16)
        j |= 16;
      y.b(localy, this.f);
      if ((k & 0x20) == 32)
        j |= 32;
      y.c(localy, this.g);
      if ((k & 0x40) == 64)
        j |= 64;
      y.c(localy, this.h);
      if ((k & 0x80) == 128)
        j |= 128;
      y.d(localy, this.i);
      y.a(localy, j);
      return localy;
      j = 0;
    }
  }

  public z d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
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
 * Qualified Name:     com.avast.a.a.a.a.z
 * JD-Core Version:    0.6.2
 */