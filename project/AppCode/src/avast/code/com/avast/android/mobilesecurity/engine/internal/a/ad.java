package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class ad extends n
  implements ae
{
  private int a;
  private int b;
  private int c;
  private int d;

  private ad()
  {
    f();
  }

  private void f()
  {
  }

  private static ad k()
  {
    return new ad();
  }

  public ad a()
  {
    return k().a(d());
  }

  public ad a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    return this;
  }

  public ad a(ac paramac)
  {
    if (paramac == ac.a());
    while (true)
    {
      return this;
      if (paramac.b())
        a(paramac.c());
      if (paramac.d())
        b(paramac.e());
      if (paramac.f())
        c(paramac.g());
    }
  }

  public ad a(d paramd, g paramg)
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
        this.b = paramd.q();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.q();
        break;
      case 24:
      }
      this.a = (0x4 | this.a);
      this.d = paramd.q();
    }
  }

  public ac b()
  {
    return ac.a();
  }

  public ad b(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    return this;
  }

  public ac c()
  {
    ac localac = d();
    if (!localac.v())
      throw a(localac);
    return localac;
  }

  public ad c(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    return this;
  }

  public ac d()
  {
    int i = 1;
    ac localac = new ac(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      ac.a(localac, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      ac.b(localac, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      ac.c(localac, this.d);
      ac.d(localac, i);
      return localac;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ad
 * JD-Core Version:    0.6.2
 */