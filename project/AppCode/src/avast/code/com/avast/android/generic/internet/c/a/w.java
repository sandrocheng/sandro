package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class w extends n
  implements z
{
  private int a;
  private Object b = "";
  private x c = x.a;
  private Object d = "";

  private w()
  {
    f();
  }

  private void f()
  {
  }

  private static w k()
  {
    return new w();
  }

  public w a()
  {
    return k().a(d());
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

  public w a(x paramx)
  {
    if (paramx == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramx;
    return this;
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
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 16:
        x localx = x.a(paramd.n());
        if (localx == null)
          continue;
        this.a = (0x2 | this.a);
        this.c = localx;
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
    this.a = (0x1 | this.a);
    this.b = paramString;
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
      v.a(localv, i);
      return localv;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.w
 * JD-Core Version:    0.6.2
 */