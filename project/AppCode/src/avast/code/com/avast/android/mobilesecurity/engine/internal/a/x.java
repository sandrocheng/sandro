package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class x extends n
  implements y
{
  private int a;
  private long b;

  private x()
  {
    f();
  }

  private void f()
  {
  }

  private static x k()
  {
    return new x();
  }

  public x a()
  {
    return k().a(d());
  }

  public x a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    return this;
  }

  public x a(w paramw)
  {
    if (paramw == w.a());
    while (true)
    {
      return this;
      if (paramw.b())
        a(paramw.c());
    }
  }

  public x a(d paramd, g paramg)
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
      this.a = (0x1 | this.a);
      this.b = paramd.r();
    }
  }

  public w b()
  {
    return w.a();
  }

  public w c()
  {
    w localw = d();
    if (!localw.v())
      throw a(localw);
    return localw;
  }

  public w d()
  {
    int i = 1;
    w localw = new w(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      w.a(localw, this.b);
      w.a(localw, i);
      return localw;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.x
 * JD-Core Version:    0.6.2
 */