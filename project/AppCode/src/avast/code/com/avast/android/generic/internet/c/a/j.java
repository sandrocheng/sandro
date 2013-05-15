package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class j extends n
  implements k
{
  private int a;
  private Object b = "";

  private j()
  {
    f();
  }

  private void f()
  {
  }

  private static j k()
  {
    return new j();
  }

  public j a()
  {
    return k().a(d());
  }

  public j a(i parami)
  {
    if (parami == i.a());
    while (true)
    {
      return this;
      if (parami.b())
        a(parami.c());
    }
  }

  public j a(d paramd, g paramg)
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
      }
      this.a = (0x1 | this.a);
      this.b = paramd.l();
    }
  }

  public j a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public i b()
  {
    return i.a();
  }

  public i c()
  {
    i locali = d();
    if (!locali.v())
      throw a(locali);
    return locali;
  }

  public i d()
  {
    int i = 1;
    i locali = new i(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      i.a(locali, this.b);
      i.a(locali, i);
      return locali;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.j
 * JD-Core Version:    0.6.2
 */