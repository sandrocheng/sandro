package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.al;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class i extends n
  implements l
{
  private int a;
  private j b = j.a;

  private i()
  {
    f();
  }

  private void f()
  {
  }

  private static i k()
  {
    return new i();
  }

  private h l()
  {
    h localh = d();
    if (!localh.v())
      throw a(localh).a();
    return localh;
  }

  public i a()
  {
    return k().a(d());
  }

  public i a(h paramh)
  {
    if (paramh == h.a());
    while (true)
    {
      return this;
      if (paramh.b())
        a(paramh.c());
    }
  }

  public i a(j paramj)
  {
    if (paramj == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramj;
    return this;
  }

  public i a(d paramd, g paramg)
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
      j localj = j.a(paramd.n());
      if (localj != null)
      {
        this.a = (0x1 | this.a);
        this.b = localj;
      }
    }
  }

  public h b()
  {
    return h.a();
  }

  public h c()
  {
    h localh = d();
    if (!localh.v())
      throw a(localh);
    return localh;
  }

  public h d()
  {
    int i = 1;
    h localh = new h(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      h.a(localh, this.b);
      h.a(localh, i);
      return localh;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.i
 * JD-Core Version:    0.6.2
 */