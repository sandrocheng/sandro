package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import java.io.InputStream;

public final class h extends com.google.a.l
  implements l
{
  private static final h a = new h(true);
  private int b;
  private j c;
  private byte d = -1;
  private int e = -1;

  static
  {
    a.g();
  }

  private h(i parami)
  {
    super(parami);
  }

  private h(boolean paramBoolean)
  {
  }

  public static h a()
  {
    return a;
  }

  public static h a(InputStream paramInputStream)
  {
    return i.a((i)d().a(paramInputStream));
  }

  public static i a(h paramh)
  {
    return d().a(paramh);
  }

  public static i d()
  {
    return i.e();
  }

  private void g()
  {
    this.c = j.a;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
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

  public j c()
  {
    return this.c;
  }

  public i e()
  {
    return d();
  }

  public i f()
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
        i = 0 + e.g(1, this.c.a());
      this.e = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.h
 * JD-Core Version:    0.6.2
 */