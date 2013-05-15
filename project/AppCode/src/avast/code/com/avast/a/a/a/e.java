package com.avast.a.a.a;

import com.google.a.l;

public final class e extends l
  implements g
{
  private static final e a = new e(true);
  private int b;
  private c c;
  private int d;
  private boolean e;
  private boolean f;
  private byte g = -1;
  private int h = -1;

  static
  {
    a.m();
  }

  private e(f paramf)
  {
    super(paramf);
  }

  private e(boolean paramBoolean)
  {
  }

  public static e a()
  {
    return a;
  }

  public static e a(byte[] paramArrayOfByte)
  {
    return f.a((f)j().a(paramArrayOfByte));
  }

  public static f a(e parame)
  {
    return j().a(parame);
  }

  public static f j()
  {
    return f.e();
  }

  private void m()
  {
    this.c = c.a;
    this.d = 0;
    this.e = false;
    this.f = false;
  }

  public void a(com.google.a.e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
    if ((0x2 & this.b) == 2)
      parame.a(2, this.d);
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

  public boolean g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean i()
  {
    return this.f;
  }

  public f k()
  {
    return j();
  }

  public f l()
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
        i = 0 + com.google.a.e.g(1, this.c.a());
      if ((0x2 & this.b) == 2)
        i += com.google.a.e.e(2, this.d);
      if ((0x4 & this.b) == 4)
        i += com.google.a.e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        i += com.google.a.e.b(4, this.f);
      this.h = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.e
 * JD-Core Version:    0.6.2
 */