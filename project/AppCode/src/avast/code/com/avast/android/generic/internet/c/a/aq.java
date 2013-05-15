package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class aq extends n
  implements ar
{
  private int a;
  private av b = av.a;
  private int c;
  private int d;

  private aq()
  {
    f();
  }

  private void f()
  {
  }

  private static aq k()
  {
    return new aq();
  }

  public aq a()
  {
    return k().a(d());
  }

  public aq a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    return this;
  }

  public aq a(ap paramap)
  {
    if (paramap == ap.a());
    while (true)
    {
      return this;
      if (paramap.b())
        a(paramap.c());
      if (paramap.d())
        a(paramap.e());
      if (paramap.f())
        b(paramap.g());
    }
  }

  public aq a(av paramav)
  {
    if (paramav == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramav;
    return this;
  }

  public aq a(d paramd, g paramg)
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
        av localav = av.a(paramd.n());
        if (localav == null)
          continue;
        this.a = (0x1 | this.a);
        this.b = localav;
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.g();
        break;
      case 24:
      }
      this.a = (0x4 | this.a);
      this.d = paramd.g();
    }
  }

  public ap b()
  {
    return ap.a();
  }

  public aq b(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    return this;
  }

  public ap c()
  {
    ap localap = d();
    if (!localap.v())
      throw a(localap);
    return localap;
  }

  public ap d()
  {
    int i = 1;
    ap localap = new ap(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      ap.a(localap, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      ap.a(localap, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      ap.b(localap, this.d);
      ap.c(localap, i);
      return localap;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.aq
 * JD-Core Version:    0.6.2
 */