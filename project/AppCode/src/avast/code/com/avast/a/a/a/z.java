package com.avast.a.a.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class z extends n
  implements ac
{
  private int a;
  private aa b = aa.a;

  private z()
  {
    k();
  }

  private void k()
  {
  }

  private static z l()
  {
    return new z();
  }

  public z a()
  {
    return l().a(d());
  }

  public z a(aa paramaa)
  {
    if (paramaa == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramaa;
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
    }
  }

  public z a(d paramd, g paramg)
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
      }
      aa localaa = aa.a(paramd.n());
      if (localaa != null)
      {
        this.a = (0x1 | this.a);
        this.b = localaa;
      }
    }
  }

  public y b()
  {
    return y.a();
  }

  public y c()
  {
    y localy = d();
    if (!localy.v())
      throw a(localy);
    return localy;
  }

  public y d()
  {
    int i = 1;
    y localy = new y(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      y.a(localy, this.b);
      y.a(localy, i);
      return localy;
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
 * Qualified Name:     com.avast.a.a.a.z
 * JD-Core Version:    0.6.2
 */