package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class r extends n
  implements s
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private boolean e;
  private boolean f;
  private boolean g;
  private Object h = "";

  private r()
  {
    f();
  }

  private void f()
  {
  }

  private static r k()
  {
    return new r();
  }

  public r a()
  {
    return k().a(d());
  }

  public r a(q paramq)
  {
    if (paramq == q.a());
    while (true)
    {
      return this;
      if (paramq.b())
        a(paramq.c());
      if (paramq.d())
        b(paramq.e());
      if (paramq.f())
        c(paramq.g());
      if (paramq.h())
        a(paramq.i());
      if (paramq.j())
        b(paramq.k());
      if (paramq.l())
        c(paramq.m());
      if (paramq.n())
        d(paramq.o());
    }
  }

  public r a(d paramd, g paramg)
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
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramd.j();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramd.j();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.g = paramd.j();
        break;
      case 58:
      }
      this.a = (0x40 | this.a);
      this.h = paramd.l();
    }
  }

  public r a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public r a(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.e = paramBoolean;
    return this;
  }

  public q b()
  {
    return q.a();
  }

  public r b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public r b(boolean paramBoolean)
  {
    this.a = (0x10 | this.a);
    this.f = paramBoolean;
    return this;
  }

  public q c()
  {
    q localq = d();
    if (!localq.v())
      throw a(localq);
    return localq;
  }

  public r c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public r c(boolean paramBoolean)
  {
    this.a = (0x20 | this.a);
    this.g = paramBoolean;
    return this;
  }

  public q d()
  {
    int i = 1;
    q localq = new q(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      q.a(localq, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      q.b(localq, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      q.c(localq, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      q.a(localq, this.e);
      if ((j & 0x10) == 16)
        i |= 16;
      q.b(localq, this.f);
      if ((j & 0x20) == 32)
        i |= 32;
      q.c(localq, this.g);
      if ((j & 0x40) == 64)
        i |= 64;
      q.d(localq, this.h);
      q.a(localq, i);
      return localq;
      i = 0;
    }
  }

  public r d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.r
 * JD-Core Version:    0.6.2
 */