package com.avast.a.a.a;

import com.avast.a.a.a.a.m;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class t extends n
  implements u
{
  private int a;
  private Object b = "";
  private m c = m.a;
  private boolean d;
  private Object e = "";
  private Object f = "";

  private t()
  {
    k();
  }

  private void k()
  {
  }

  private static t l()
  {
    return new t();
  }

  public t a()
  {
    return l().a(d());
  }

  public t a(m paramm)
  {
    if (paramm == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramm;
    return this;
  }

  public t a(s params)
  {
    if (params == s.a());
    while (true)
    {
      return this;
      if (params.b())
        a(params.c());
      if (params.d())
        a(params.e());
      if (params.f())
        a(params.g());
      if (params.h())
        b(params.i());
      if (params.j())
        c(params.k());
    }
  }

  public t a(d paramd, g paramg)
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
        m localm = m.a(paramd.n());
        if (localm == null)
          continue;
        this.a = (0x2 | this.a);
        this.c = localm;
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
      }
      this.a = (0x10 | this.a);
      this.f = paramd.l();
    }
  }

  public t a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public t a(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    return this;
  }

  public s b()
  {
    return s.a();
  }

  public t b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public s c()
  {
    s locals = d();
    if (!locals.v())
      throw a(locals);
    return locals;
  }

  public t c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public s d()
  {
    int i = 1;
    s locals = new s(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      s.a(locals, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      s.a(locals, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      s.a(locals, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      s.b(locals, this.e);
      if ((j & 0x10) == 16)
        i |= 16;
      s.c(locals, this.f);
      s.a(locals, i);
      return locals;
      i = 0;
    }
  }

  public boolean e()
  {
    int i = 1;
    if ((0x1 & this.a) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final boolean v()
  {
    if (!e());
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.t
 * JD-Core Version:    0.6.2
 */