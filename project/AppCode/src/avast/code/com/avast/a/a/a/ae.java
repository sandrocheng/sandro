package com.avast.a.a.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class ae extends n
  implements af
{
  private int a;
  private Object b = "";
  private Object c = "";
  private int d;
  private Object e = "";
  private Object f = "";

  private ae()
  {
    o();
  }

  private void o()
  {
  }

  private static ae p()
  {
    return new ae();
  }

  public ae a()
  {
    return p().a(d());
  }

  public ae a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    return this;
  }

  public ae a(ad paramad)
  {
    if (paramad == ad.a());
    while (true)
    {
      return this;
      if (paramad.b())
        a(paramad.c());
      if (paramad.d())
        b(paramad.e());
      if (paramad.f())
        a(paramad.g());
      if (paramad.h())
        c(paramad.i());
      if (paramad.j())
        d(paramad.k());
    }
  }

  public ae a(d paramd, g paramg)
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
        this.a = (0x8 | this.a);
        this.e = paramd.l();
        break;
      case 42:
      }
      this.a = (0x10 | this.a);
      this.f = paramd.l();
    }
  }

  public ae a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public ad b()
  {
    return ad.a();
  }

  public ae b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public ad c()
  {
    ad localad = d();
    if (!localad.v())
      throw a(localad);
    return localad;
  }

  public ae c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public ad d()
  {
    int i = 1;
    ad localad = new ad(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      ad.a(localad, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      ad.b(localad, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      ad.a(localad, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      ad.c(localad, this.e);
      if ((j & 0x10) == 16)
        i |= 16;
      ad.d(localad, this.f);
      ad.b(localad, i);
      return localad;
      i = 0;
    }
  }

  public ae d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
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

  public boolean f()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean k()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean l()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean m()
  {
    if ((0x10 & this.a) == 16);
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
      {
        boolean bool4 = k();
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = l();
          bool2 = false;
          if (bool5)
          {
            boolean bool6 = m();
            bool2 = false;
            if (bool6)
              bool2 = true;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.ae
 * JD-Core Version:    0.6.2
 */