package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;
import java.io.InputStream;

public final class f extends l
  implements h
{
  private static final f a = new f(true);
  private int b;
  private c c;
  private c d;
  private int e;
  private Object f;
  private c g;
  private t h;
  private byte i = -1;
  private int j = -1;

  static
  {
    a.r();
  }

  private f(g paramg)
  {
    super(paramg);
  }

  private f(boolean paramBoolean)
  {
  }

  public static f a()
  {
    return a;
  }

  public static f a(InputStream paramInputStream)
  {
    return g.a((g)n().a(paramInputStream));
  }

  public static g a(f paramf)
  {
    return n().a(paramf);
  }

  public static g n()
  {
    return g.k();
  }

  private c q()
  {
    Object localObject = this.f;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.f = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void r()
  {
    this.c = c.a;
    this.d = c.a;
    this.e = 0;
    this.f = "";
    this.g = c.a;
    this.h = t.a();
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
    if ((0x10 & this.b) == 16)
      parame.a(4, this.g);
    if ((0x8 & this.b) == 8)
      parame.a(6, q());
    if ((0x20 & this.b) == 32)
      parame.b(7, this.h);
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

  public String i()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.f = str;
    }
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

  public t m()
  {
    return this.h;
  }

  public g o()
  {
    return n();
  }

  public g p()
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
        k += e.e(3, this.e);
      if ((0x10 & this.b) == 16)
        k += e.b(4, this.g);
      if ((0x8 & this.b) == 8)
        k += e.b(6, q());
      if ((0x20 & this.b) == 32)
        k += e.d(7, this.h);
      this.j = k;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.f
 * JD-Core Version:    0.6.2
 */