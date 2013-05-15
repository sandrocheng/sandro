package com.avast.a.a.a.a;

import com.google.a.c;
import com.google.a.l;
import com.google.a.u;

public final class g extends l
  implements i
{
  private static final g a = new g(true);
  private int b;
  private long c;
  private long d;
  private e e;
  private long f;
  private Object g;
  private Object h;
  private long i;
  private Object j;
  private byte k = -1;
  private int l = -1;

  static
  {
    a.z();
  }

  private g(h paramh)
  {
    super(paramh);
  }

  private g(boolean paramBoolean)
  {
  }

  public static g a()
  {
    return a;
  }

  public static h a(g paramg)
  {
    return r().a(paramg);
  }

  public static h r()
  {
    return h.k();
  }

  private c u()
  {
    Object localObject = this.g;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.g = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c x()
  {
    Object localObject = this.h;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.h = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c y()
  {
    Object localObject = this.j;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.j = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void z()
  {
    this.c = 0L;
    this.d = 0L;
    this.e = e.a;
    this.f = 0L;
    this.g = "";
    this.h = "";
    this.i = 0L;
    this.j = "";
  }

  public void a(com.google.a.e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.b(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.b(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.c(3, this.e.a());
    if ((0x8 & this.b) == 8)
      parame.b(4, this.f);
    if ((0x10 & this.b) == 16)
      parame.a(5, u());
    if ((0x20 & this.b) == 32)
      parame.a(6, x());
    if ((0x40 & this.b) == 64)
      parame.b(7, this.i);
    if ((0x80 & this.b) == 128)
      parame.a(8, y());
  }

  public boolean b()
  {
    int m = 1;
    if ((0x1 & this.b) == m);
    while (true)
    {
      return m;
      int n = 0;
    }
  }

  public long c()
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

  public e g()
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

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String k()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.g = str;
    }
  }

  public boolean l()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String m()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.h = str;
    }
  }

  public boolean n()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long o()
  {
    return this.i;
  }

  public boolean p()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String q()
  {
    Object localObject1 = this.j;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.j = str;
    }
  }

  public h s()
  {
    return r();
  }

  public h t()
  {
    return a(this);
  }

  public final boolean v()
  {
    int m = 1;
    int n = this.k;
    if (n != -1)
      if (n != m);
    while (true)
    {
      return m;
      m = 0;
      continue;
      if (!b())
      {
        this.k = 0;
        m = 0;
      }
      else if (!d())
      {
        this.k = 0;
        m = 0;
      }
      else
      {
        this.k = m;
      }
    }
  }

  public int w()
  {
    int m = this.l;
    if (m != -1);
    while (true)
    {
      return m;
      int n = 0x1 & this.b;
      m = 0;
      if (n == 1)
        m = 0 + com.google.a.e.e(1, this.c);
      if ((0x2 & this.b) == 2)
        m += com.google.a.e.e(2, this.d);
      if ((0x4 & this.b) == 4)
        m += com.google.a.e.g(3, this.e.a());
      if ((0x8 & this.b) == 8)
        m += com.google.a.e.e(4, this.f);
      if ((0x10 & this.b) == 16)
        m += com.google.a.e.b(5, u());
      if ((0x20 & this.b) == 32)
        m += com.google.a.e.b(6, x());
      if ((0x40 & this.b) == 64)
        m += com.google.a.e.e(7, this.i);
      if ((0x80 & this.b) == 128)
        m += com.google.a.e.b(8, y());
      this.l = m;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.g
 * JD-Core Version:    0.6.2
 */