package com.keniu.security.a;

import java.io.IOException;
import java.io.InputStream;

public final class b
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final int e = 4;
  private static final int n = 524291;
  private static final int o = 524672;
  private InputStream f;
  private q g;
  private int[] h;
  private IOException i;
  private int j;
  private int k;
  private int l;
  private d[] m;

  public b(InputStream paramInputStream)
  {
    this.f = paramInputStream;
    n.a(this.f, 524291);
    n.a(this.f);
    this.g = q.a(new l(this.f));
    n.a(this.f, 524672);
    int i1 = n.a(this.f);
    if ((i1 < 8) || (i1 % 4 != 0))
      throw new IOException("Invalid resource ids size (" + i1 + ").");
    this.h = n.b(this.f, i1 / 4 - 2);
    h();
  }

  private int a(String paramString)
  {
    return this.g.a(paramString);
  }

  private String b(int paramInt)
  {
    return a(h(paramInt).a);
  }

  private void b()
  {
    if (this.f == null);
    while (true)
    {
      return;
      try
      {
        this.f.close();
        label15: if (this.i == null)
          this.i = new IOException("Closed.");
        this.f = null;
        h();
      }
      catch (IOException localIOException)
      {
        break label15;
      }
    }
  }

  private int c()
  {
    if (this.i != null)
      throw this.i;
    int i1;
    try
    {
      if (this.j == 1)
      {
        i1 = 1;
        break label432;
      }
      this.j = (0xFF & n.c(this.f, 4));
      n.c(this.f, 4);
      this.k = n.c(this.f, 4);
      n.c(this.f, 4);
      this.l = -1;
      this.m = null;
      switch (this.j)
      {
      default:
        throw new IOException("Invalid tag type (" + this.j + ").");
      case 0:
      case 2:
      case 3:
      case 4:
      case 1:
      }
    }
    catch (IOException localIOException)
    {
      this.i = localIOException;
      h();
      throw localIOException;
    }
    n.c(this.f, 4);
    n.c(this.f, 4);
    while (true)
    {
      i1 = this.j;
      break;
      n.c(this.f, 4);
      this.l = n.c(this.f, 4);
      n.c(this.f, 4);
      int i2 = n.c(this.f, 4);
      n.c(this.f, 4);
      this.m = new d[i2];
      for (int i3 = 0; i3 != i2; i3++)
      {
        d locald = new d();
        locald.a = n.c(this.f, 4);
        locald.b = n.c(this.f, 4);
        locald.c = n.c(this.f, 4);
        locald.d = (n.c(this.f, 4) >>> 24);
        locald.e = n.c(this.f, 4);
        this.m[i3] = locald;
      }
      continue;
      n.c(this.f, 4);
      this.l = n.c(this.f, 4);
      continue;
      this.l = n.c(this.f, 4);
      n.c(this.f, 4);
      n.c(this.f, 4);
      continue;
      n.c(this.f, 4);
      n.c(this.f, 4);
    }
    label432: return i1;
  }

  private String c(int paramInt)
  {
    return a(h(paramInt).b);
  }

  private int d()
  {
    return this.j;
  }

  private int d(int paramInt)
  {
    int i1 = h(paramInt).b;
    if ((this.h == null) || (i1 < 0) || (i1 >= this.h.length));
    for (int i2 = 0; ; i2 = this.h[i1])
      return i2;
  }

  private int e(int paramInt)
  {
    return h(paramInt).d;
  }

  private String e()
  {
    if (this.l == -1);
    for (String str = null; ; str = a(this.l))
      return str;
  }

  private int f()
  {
    return this.k;
  }

  private String f(int paramInt)
  {
    return a(h(paramInt).c);
  }

  private int g()
  {
    if (this.m == null);
    for (int i1 = -1; ; i1 = this.m.length)
      return i1;
  }

  private int g(int paramInt)
  {
    return h(paramInt).e;
  }

  private final d h(int paramInt)
  {
    if (this.m == null)
      throw new IndexOutOfBoundsException("Attributes are not available.");
    if (paramInt >= this.m.length)
      throw new IndexOutOfBoundsException("Invalid attribute index (" + paramInt + ").");
    return this.m[paramInt];
  }

  private final void h()
  {
    this.j = -1;
    this.k = -1;
    this.l = -1;
    this.m = null;
  }

  private final void i()
  {
    n.a(this.f, 524291);
    n.c(this.f, 4);
    this.g = q.a(new l(this.f));
    n.a(this.f, 524672);
    int i1 = n.c(this.f, 4);
    if ((i1 < 8) || (i1 % 4 != 0))
      throw new IOException("Invalid resource ids size (" + i1 + ").");
    this.h = n.b(this.f, i1 / 4 - 2);
    h();
  }

  private final int j()
  {
    int i1;
    if (this.j == 1)
    {
      i1 = 1;
      return i1;
    }
    this.j = (0xFF & n.c(this.f, 4));
    n.c(this.f, 4);
    this.k = n.c(this.f, 4);
    n.c(this.f, 4);
    this.l = -1;
    this.m = null;
    switch (this.j)
    {
    default:
      throw new IOException("Invalid tag type (" + this.j + ").");
    case 0:
      n.c(this.f, 4);
      n.c(this.f, 4);
    case 2:
    case 3:
    case 4:
    case 1:
    }
    while (true)
    {
      i1 = this.j;
      break;
      n.c(this.f, 4);
      this.l = n.c(this.f, 4);
      n.c(this.f, 4);
      int i2 = n.c(this.f, 4);
      n.c(this.f, 4);
      this.m = new d[i2];
      for (int i3 = 0; i3 != i2; i3++)
      {
        d locald = new d();
        locald.a = n.c(this.f, 4);
        locald.b = n.c(this.f, 4);
        locald.c = n.c(this.f, 4);
        locald.d = (n.c(this.f, 4) >>> 24);
        locald.e = n.c(this.f, 4);
        this.m[i3] = locald;
      }
      n.c(this.f, 4);
      this.l = n.c(this.f, 4);
      continue;
      this.l = n.c(this.f, 4);
      n.c(this.f, 4);
      n.c(this.f, 4);
      continue;
      n.c(this.f, 4);
      n.c(this.f, 4);
    }
  }

  public final int a()
  {
    return this.g.a();
  }

  public final String a(int paramInt)
  {
    if (paramInt == -1);
    for (String str = ""; ; str = this.g.a(paramInt))
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.b
 * JD-Core Version:    0.6.2
 */