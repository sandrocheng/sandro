package com.avast.a.a.a;

import com.google.a.al;
import com.google.a.d;
import com.google.a.n;

public final class f extends n
  implements g
{
  private int a;
  private c b = c.a;
  private int c;
  private boolean d;
  private boolean e;

  private f()
  {
    f();
  }

  private void f()
  {
  }

  private static f k()
  {
    return new f();
  }

  private e l()
  {
    e locale = d();
    if (!locale.v())
      throw a(locale).a();
    return locale;
  }

  public f a()
  {
    return k().a(d());
  }

  public f a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    return this;
  }

  public f a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public f a(e parame)
  {
    if (parame == e.a());
    while (true)
    {
      return this;
      if (parame.b())
        a(parame.c());
      if (parame.d())
        a(parame.e());
      if (parame.f())
        a(parame.g());
      if (parame.h())
        b(parame.i());
    }
  }

  public f a(d paramd, com.google.a.g paramg)
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
        c localc = c.a(paramd.n());
        if (localc == null)
          continue;
        this.a = (0x1 | this.a);
        this.b = localc;
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.g();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramd.j();
        break;
      case 32:
      }
      this.a = (0x8 | this.a);
      this.e = paramd.j();
    }
  }

  public f a(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    return this;
  }

  public e b()
  {
    return e.a();
  }

  public f b(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.e = paramBoolean;
    return this;
  }

  public e c()
  {
    e locale = d();
    if (!locale.v())
      throw a(locale);
    return locale;
  }

  public e d()
  {
    int i = 1;
    e locale = new e(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      e.a(locale, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      e.a(locale, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      e.a(locale, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      e.b(locale, this.e);
      e.b(locale, i);
      return locale;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.f
 * JD-Core Version:    0.6.2
 */