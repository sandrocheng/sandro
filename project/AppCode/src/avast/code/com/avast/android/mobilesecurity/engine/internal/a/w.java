package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import com.google.a.l;

public final class w extends l
  implements y
{
  private static final w a = new w(true);
  private int b;
  private long c;
  private byte d = -1;
  private int e = -1;

  static
  {
    a.g();
  }

  private w(x paramx)
  {
    super(paramx);
  }

  private w(boolean paramBoolean)
  {
  }

  public static w a()
  {
    return a;
  }

  public static x a(w paramw)
  {
    return d().a(paramw);
  }

  public static x d()
  {
    return x.e();
  }

  private void g()
  {
    this.c = 0L;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c);
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

  public long c()
  {
    return this.c;
  }

  public x e()
  {
    return d();
  }

  public x f()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.d;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.d = i;
    }
  }

  public int w()
  {
    int i = this.e;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.f(1, this.c);
      this.e = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.w
 * JD-Core Version:    0.6.2
 */