package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import com.google.a.l;

public final class o extends l
  implements t
{
  private static final o a = new o(true);
  private int b;
  private int c;
  private q d;
  private byte e = -1;
  private int f = -1;

  static
  {
    a.i();
  }

  private o(p paramp)
  {
    super(paramp);
  }

  private o(boolean paramBoolean)
  {
  }

  public static o a()
  {
    return a;
  }

  public static o a(byte[] paramArrayOfByte)
  {
    return p.a((p)f().a(paramArrayOfByte));
  }

  public static p a(o paramo)
  {
    return f().a(paramo);
  }

  public static p f()
  {
    return p.l();
  }

  private void i()
  {
    this.c = 0;
    this.d = q.a();
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.b(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.b(2, this.d);
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

  public q e()
  {
    return this.d;
  }

  public p g()
  {
    return f();
  }

  public p h()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.e;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      if (!b())
      {
        this.e = 0;
        i = 0;
      }
      else if ((d()) && (!e().v()))
      {
        this.e = 0;
        i = 0;
      }
      else
      {
        this.e = i;
      }
    }
  }

  public int w()
  {
    int i = this.f;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.f(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.d(2, this.d);
      this.f = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.o
 * JD-Core Version:    0.6.2
 */