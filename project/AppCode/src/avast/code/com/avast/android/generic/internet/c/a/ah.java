package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class ah extends n
  implements ai
{
  private int a;
  private float b;

  private ah()
  {
    f();
  }

  private void f()
  {
  }

  private static ah k()
  {
    return new ah();
  }

  public ah a()
  {
    return k().a(d());
  }

  public ah a(float paramFloat)
  {
    this.a = (0x1 | this.a);
    this.b = paramFloat;
    return this;
  }

  public ah a(ag paramag)
  {
    if (paramag == ag.a());
    while (true)
    {
      return this;
      if (paramag.b())
        a(paramag.c());
    }
  }

  public ah a(d paramd, g paramg)
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
      case 13:
      }
      this.a = (0x1 | this.a);
      this.b = paramd.d();
    }
  }

  public ag b()
  {
    return ag.a();
  }

  public ag c()
  {
    ag localag = d();
    if (!localag.v())
      throw a(localag);
    return localag;
  }

  public ag d()
  {
    int i = 1;
    ag localag = new ag(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      ag.a(localag, this.b);
      ag.a(localag, i);
      return localag;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.ah
 * JD-Core Version:    0.6.2
 */