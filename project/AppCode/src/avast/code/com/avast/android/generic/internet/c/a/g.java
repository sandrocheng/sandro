package com.avast.android.generic.internet.c.a;

import com.google.a.al;
import com.google.a.c;
import com.google.a.d;
import com.google.a.n;

public final class g extends n
  implements h
{
  private int a;
  private c b = c.a;
  private c c = c.a;
  private int d;
  private Object e = "";
  private c f = c.a;
  private t g = t.a();

  private g()
  {
    l();
  }

  private void l()
  {
  }

  private static g m()
  {
    return new g();
  }

  private f n()
  {
    f localf = d();
    if (!localf.v())
      throw a(localf).a();
    return localf;
  }

  public g a()
  {
    return m().a(d());
  }

  public g a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    return this;
  }

  public g a(f paramf)
  {
    if (paramf == f.a());
    while (true)
    {
      return this;
      if (paramf.b())
        a(paramf.c());
      if (paramf.d())
        b(paramf.e());
      if (paramf.f())
        a(paramf.g());
      if (paramf.h())
        a(paramf.i());
      if (paramf.j())
        c(paramf.k());
      if (paramf.l())
        b(paramf.m());
    }
  }

  public g a(t paramt)
  {
    if (paramt == null)
      throw new NullPointerException();
    this.g = paramt;
    this.a = (0x20 | this.a);
    return this;
  }

  public g a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public g a(d paramd, com.google.a.g paramg)
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
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramd.g();
        break;
      case 34:
        this.a = (0x10 | this.a);
        this.f = paramd.l();
        break;
      case 50:
        this.a = (0x8 | this.a);
        this.e = paramd.l();
        break;
      case 58:
      }
      u localu = t.h();
      if (e())
        localu.a(f());
      paramd.a(localu, paramg);
      a(localu.d());
    }
  }

  public g a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public f b()
  {
    return f.a();
  }

  public g b(t paramt)
  {
    if (((0x20 & this.a) == 32) && (this.g != t.a()));
    for (this.g = t.a(this.g).a(paramt).d(); ; this.g = paramt)
    {
      this.a = (0x20 | this.a);
      return this;
    }
  }

  public g b(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramc;
    return this;
  }

  public f c()
  {
    f localf = d();
    if (!localf.v())
      throw a(localf);
    return localf;
  }

  public g c(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramc;
    return this;
  }

  public f d()
  {
    int i = 1;
    f localf = new f(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      f.a(localf, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      f.b(localf, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      f.a(localf, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      f.a(localf, this.e);
      if ((j & 0x10) == 16)
        i |= 16;
      f.c(localf, this.f);
      if ((j & 0x20) == 32)
        i |= 32;
      f.a(localf, this.g);
      f.b(localf, i);
      return localf;
      i = 0;
    }
  }

  public boolean e()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public t f()
  {
    return this.g;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.g
 * JD-Core Version:    0.6.2
 */