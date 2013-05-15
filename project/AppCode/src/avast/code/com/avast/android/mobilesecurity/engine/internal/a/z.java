package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;

public final class z extends l
  implements ab
{
  private static final z a = new z(true);
  private int b;
  private c c;
  private c d;
  private c e;
  private c f;
  private c g;
  private int h;
  private byte i = -1;
  private int j = -1;

  static
  {
    a.q();
  }

  private z(aa paramaa)
  {
    super(paramaa);
  }

  private z(boolean paramBoolean)
  {
  }

  public static aa a(z paramz)
  {
    return n().a(paramz);
  }

  public static z a()
  {
    return a;
  }

  public static aa n()
  {
    return aa.e();
  }

  private void q()
  {
    this.c = c.a;
    this.d = c.a;
    this.e = c.a;
    this.f = c.a;
    this.g = c.a;
    this.h = 0;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.a(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, this.f);
    if ((0x10 & this.b) == 16)
      parame.a(5, this.g);
    if ((0x20 & this.b) == 32)
      parame.d(6, this.h);
  }

  public boolean b()
  {
    int k = 1;
    if ((0x1 & this.b) == k);
    while (true)
    {
      return k;
      int m = 0;
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

  public c e()
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

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c k()
  {
    return this.g;
  }

  public boolean l()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int m()
  {
    return this.h;
  }

  public aa o()
  {
    return n();
  }

  public aa p()
  {
    return a(this);
  }

  public final boolean v()
  {
    int k = 1;
    int m = this.i;
    if (m != -1)
      if (m != k);
    while (true)
    {
      return k;
      k = 0;
      continue;
      this.i = k;
    }
  }

  public int w()
  {
    int k = this.j;
    if (k != -1);
    while (true)
    {
      return k;
      int m = 0x1 & this.b;
      k = 0;
      if (m == 1)
        k = 0 + e.b(1, this.c);
      if ((0x2 & this.b) == 2)
        k += e.b(2, this.d);
      if ((0x4 & this.b) == 4)
        k += e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        k += e.b(4, this.f);
      if ((0x10 & this.b) == 16)
        k += e.b(5, this.g);
      if ((0x20 & this.b) == 32)
        k += e.h(6, this.h);
      this.j = k;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.z
 * JD-Core Version:    0.6.2
 */