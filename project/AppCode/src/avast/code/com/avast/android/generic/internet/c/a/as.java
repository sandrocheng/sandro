package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;

public final class as extends l
  implements au
{
  private static final as a = new as(true);
  private int b;
  private c c;
  private long d;
  private c e;
  private c f;
  private byte g = -1;
  private int h = -1;

  static
  {
    a.m();
  }

  private as(at paramat)
  {
    super(paramat);
  }

  private as(boolean paramBoolean)
  {
  }

  public static as a()
  {
    return a;
  }

  public static at a(as paramas)
  {
    return j().a(paramas);
  }

  public static at j()
  {
    return at.e();
  }

  private void m()
  {
    this.c = c.a;
    this.d = 0L;
    this.e = c.a;
    this.f = c.a;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.b(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, this.f);
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

  public c c()
  {
    return this.c;
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c i()
  {
    return this.f;
  }

  public at k()
  {
    return j();
  }

  public at l()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.g;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.g = i;
    }
  }

  public int w()
  {
    int i = this.h;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.b(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.e(2, this.d);
      if ((0x4 & this.b) == 4)
        i += e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        i += e.b(4, this.f);
      this.h = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.as
 * JD-Core Version:    0.6.2
 */