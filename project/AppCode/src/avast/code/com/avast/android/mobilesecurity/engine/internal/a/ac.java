package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import com.google.a.l;

public final class ac extends l
  implements ae
{
  private static final ac a = new ac(true);
  private int b;
  private int c;
  private int d;
  private int e;
  private byte f = -1;
  private int g = -1;

  static
  {
    a.k();
  }

  private ac(ad paramad)
  {
    super(paramad);
  }

  private ac(boolean paramBoolean)
  {
  }

  public static ac a()
  {
    return a;
  }

  public static ad a(ac paramac)
  {
    return h().a(paramac);
  }

  public static ad h()
  {
    return ad.e();
  }

  private void k()
  {
    this.c = 0;
    this.d = 0;
    this.e = 0;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.d(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.d(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.d(3, this.e);
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

  public int c()
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

  public ad i()
  {
    return h();
  }

  public ad j()
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
        i = 0 + e.h(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.h(2, this.d);
      if ((0x4 & this.b) == 4)
        i += e.h(3, this.e);
      this.g = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ac
 * JD-Core Version:    0.6.2
 */