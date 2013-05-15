package com.avast.android.generic.internet.c.a;

import com.google.a.e;
import java.io.InputStream;

public final class l extends com.google.a.l
  implements p
{
  private static final l a = new l(true);
  private int b;
  private n c;
  private byte d = -1;
  private int e = -1;

  static
  {
    a.g();
  }

  private l(m paramm)
  {
    super(paramm);
  }

  private l(boolean paramBoolean)
  {
  }

  public static l a()
  {
    return a;
  }

  public static l a(InputStream paramInputStream)
  {
    return m.a((m)d().a(paramInputStream));
  }

  public static m a(l paraml)
  {
    return d().a(paraml);
  }

  public static m d()
  {
    return m.e();
  }

  private void g()
  {
    this.c = n.a;
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

  public n c()
  {
    return this.c;
  }

  public m e()
  {
    return d();
  }

  public m f()
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
 * Qualified Name:     com.avast.android.generic.internet.c.a.l
 * JD-Core Version:    0.6.2
 */