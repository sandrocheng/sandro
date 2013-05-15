package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.am;
import com.google.a.d;
import com.google.a.n;
import com.google.a.y;
import com.google.a.z;

public final class f extends n
  implements g
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private Object e = "";
  private Object f = "";
  private com.google.a.c g = com.google.a.c.a;
  private Object h = "";
  private Object i = "";
  private z j = y.a;
  private c k = c.a;

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

  private void l()
  {
    if ((0x100 & this.a) != 256)
    {
      this.j = new y(this.j);
      this.a = (0x100 | this.a);
    }
  }

  public f a()
  {
    return k().a(d());
  }

  public f a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramc;
    return this;
  }

  public f a(e parame)
  {
    if (parame == e.a());
    label200: label219: 
    while (true)
    {
      return this;
      if (parame.b())
        a(parame.c());
      if (parame.d())
        b(parame.e());
      if (parame.f())
        c(parame.g());
      if (parame.h())
        d(parame.i());
      if (parame.j())
        e(parame.k());
      if (parame.l())
        a(parame.m());
      if (parame.n())
        f(parame.o());
      if (parame.p())
        g(parame.q());
      if (!e.b(parame).isEmpty())
      {
        if (!this.j.isEmpty())
          break label200;
        this.j = e.b(parame);
        this.a = (0xFFFFFEFF & this.a);
      }
      while (true)
      {
        if (!parame.s())
          break label219;
        a(parame.t());
        break;
        l();
        this.j.addAll(e.b(parame));
      }
    }
  }

  public f a(com.google.a.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramc;
    return this;
  }

  public f a(d paramd, com.google.a.g paramg)
  {
    while (true)
    {
      int m = paramd.a();
      switch (m)
      {
      default:
        if (a(paramd, paramg, m))
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
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramd.l();
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 72:
        c localc = c.a(paramd.n());
        if (localc == null)
          continue;
        this.a = (0x200 | this.a);
        this.k = localc;
        break;
      case 82:
      }
      l();
      this.j.a(paramd.l());
    }
  }

  public f a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public e b()
  {
    return e.a();
  }

  public f b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public e c()
  {
    e locale = d();
    if (!locale.v())
      throw a(locale);
    return locale;
  }

  public f c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public e d()
  {
    int m = 1;
    e locale = new e(this, null);
    int n = this.a;
    if ((n & 0x1) == m);
    while (true)
    {
      e.a(locale, this.b);
      if ((n & 0x2) == 2)
        m |= 2;
      e.b(locale, this.c);
      if ((n & 0x4) == 4)
        m |= 4;
      e.c(locale, this.d);
      if ((n & 0x8) == 8)
        m |= 8;
      e.d(locale, this.e);
      if ((n & 0x10) == 16)
        m |= 16;
      e.e(locale, this.f);
      if ((n & 0x20) == 32)
        m |= 32;
      e.a(locale, this.g);
      if ((n & 0x40) == 64)
        m |= 64;
      e.f(locale, this.h);
      if ((n & 0x80) == 128)
        m |= 128;
      e.g(locale, this.i);
      if ((0x100 & this.a) == 256)
      {
        this.j = new am(this.j);
        this.a = (0xFFFFFEFF & this.a);
      }
      e.a(locale, this.j);
      if ((n & 0x200) == 512)
        m |= 256;
      e.a(locale, this.k);
      e.a(locale, m);
      return locale;
      m = 0;
    }
  }

  public f d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public f e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public f f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public f g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    return this;
  }

  public f h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    l();
    this.j.add(paramString);
    return this;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.f
 * JD-Core Version:    0.6.2
 */