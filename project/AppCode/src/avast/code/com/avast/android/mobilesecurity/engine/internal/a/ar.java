package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import com.google.a.l;

public final class ar extends l
  implements at
{
  private static final ar a = new ar(true);
  private int b;
  private int c;
  private int d;
  private int e;
  private long f;
  private byte g = -1;
  private int h = -1;

  static
  {
    a.m();
  }

  private ar(as paramas)
  {
    super(paramas);
  }

  private ar(boolean paramBoolean)
  {
  }

  public static ar a()
  {
    return a;
  }

  public static as a(ar paramar)
  {
    return j().a(paramar);
  }

  public static as j()
  {
    return as.e();
  }

  private void m()
  {
    this.c = 0;
    this.d = 0;
    this.e = 0;
    this.f = 0L;
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
    if ((0x8 & this.b) == 8)
      parame.b(4, this.f);
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

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long i()
  {
    return this.f;
  }

  public as k()
  {
    return j();
  }

  public as l()
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
        i = 0 + e.h(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.h(2, this.d);
      if ((0x4 & this.b) == 4)
        i += e.h(3, this.e);
      if ((0x8 & this.b) == 8)
        i += e.e(4, this.f);
      this.h = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ar
 * JD-Core Version:    0.6.2
 */