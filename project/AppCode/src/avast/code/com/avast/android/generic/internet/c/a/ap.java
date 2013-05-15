package com.avast.android.generic.internet.c.a;

import com.google.a.e;
import com.google.a.l;

public final class ap extends l
  implements ar
{
  private static final ap a = new ap(true);
  private int b;
  private av c;
  private int d;
  private int e;
  private byte f = -1;
  private int g = -1;

  static
  {
    a.k();
  }

  private ap(aq paramaq)
  {
    super(paramaq);
  }

  private ap(boolean paramBoolean)
  {
  }

  public static ap a()
  {
    return a;
  }

  public static aq a(ap paramap)
  {
    return h().a(paramap);
  }

  public static aq h()
  {
    return aq.e();
  }

  private void k()
  {
    this.c = av.a;
    this.d = 0;
    this.e = 0;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
    if ((0x2 & this.b) == 2)
      parame.a(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
  }

  public boolean b()
  {
    int i = 1;
    if ((0x1 & this.b) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public av c()
  {
    return this.c;
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int g()
  {
    return this.e;
  }

  public aq i()
  {
    return h();
  }

  public aq j()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.f;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.f = i;
    }
  }

  public int w()
  {
    int i = this.g;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.g(1, this.c.a());
      if ((0x2 & this.b) == 2)
        i += e.e(2, this.d);
      if ((0x4 & this.b) == 4)
        i += e.e(3, this.e);
      this.g = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.ap
 * JD-Core Version:    0.6.2
 */