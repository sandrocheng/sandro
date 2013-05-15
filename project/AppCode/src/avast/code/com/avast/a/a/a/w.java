package com.avast.a.a.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class w extends n
  implements x
{
  private int a;
  private int b;
  private Object c = "";
  private Object d = "";

  private w()
  {
    m();
  }

  private void m()
  {
  }

  private static w n()
  {
    return new w();
  }

  public w a()
  {
    return n().a(d());
  }

  public w a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    return this;
  }

  public w a(v paramv)
  {
    if (paramv == v.a());
    while (true)
    {
      return this;
      if (paramv.b())
        a(paramv.c());
      if (paramv.d())
        a(paramv.e());
      if (paramv.f())
        b(paramv.g());
    }
  }

  public w a(d paramd, g paramg)
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
        this.b = paramd.g();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 26:
      }
      this.a = (0x4 | this.a);
      this.d = paramd.l();
    }
  }

  public w a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public v b()
  {
    return v.a();
  }

  public w b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public v c()
  {
    v localv = d();
    if (!localv.v())
      throw a(localv);
    return localv;
  }

  public v d()
  {
    int i = 1;
    v localv = new v(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      v.a(localv, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      v.a(localv, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      v.b(localv, this.d);
      v.b(localv, i);
      return localv;
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
          bool2 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.w
 * JD-Core Version:    0.6.2
 */