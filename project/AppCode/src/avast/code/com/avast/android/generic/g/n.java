package com.avast.android.generic.g;

import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class n extends l
  implements p
{
  private static final n a = new n(true);
  private int b;
  private com.google.a.c c;
  private q d;
  private Object e;
  private Object f;
  private Object g;
  private c h;
  private com.google.a.c i;
  private com.google.a.c j;
  private byte k = -1;
  private int l = -1;

  static
  {
    a.z();
  }

  private n(o paramo)
  {
    super(paramo);
  }

  private n(boolean paramBoolean)
  {
  }

  public static n a()
  {
    return a;
  }

  public static o a(n paramn)
  {
    return r().a(paramn);
  }

  public static o r()
  {
    return o.k();
  }

  private com.google.a.c u()
  {
    Object localObject = this.e;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.e = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private com.google.a.c x()
  {
    Object localObject = this.f;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.f = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private com.google.a.c y()
  {
    Object localObject = this.g;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.g = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private void z()
  {
    this.c = com.google.a.c.a;
    this.d = q.a;
    this.e = "";
    this.f = "";
    this.g = "";
    this.h = c.a();
    this.i = com.google.a.c.a;
    this.j = com.google.a.c.a;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.c(2, this.d.a());
    if ((0x4 & this.b) == 4)
      parame.a(3, u());
    if ((0x8 & this.b) == 8)
      parame.a(4, x());
    if ((0x10 & this.b) == 16)
      parame.a(5, y());
    if ((0x20 & this.b) == 32)
      parame.b(6, this.h);
    if ((0x40 & this.b) == 64)
      parame.a(7, this.i);
    if ((0x80 & this.b) == 128)
      parame.a(8, this.j);
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

  public com.google.a.c c()
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

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String g()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.e = str;
    }
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
      com.google.a.c localc = (com.google.a.c)localObject1;
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

  public String k()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
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

  public c m()
  {
    return this.h;
  }

  public boolean n()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public com.google.a.c o()
  {
    return this.i;
  }

  public boolean p()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public com.google.a.c q()
  {
    return this.j;
  }

  public o s()
  {
    return r();
  }

  public o t()
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
      this.k = m;
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
        m = 0 + e.b(1, this.c);
      if ((0x2 & this.b) == 2)
        m += e.g(2, this.d.a());
      if ((0x4 & this.b) == 4)
        m += e.b(3, u());
      if ((0x8 & this.b) == 8)
        m += e.b(4, x());
      if ((0x10 & this.b) == 16)
        m += e.b(5, y());
      if ((0x20 & this.b) == 32)
        m += e.d(6, this.h);
      if ((0x40 & this.b) == 64)
        m += e.b(7, this.i);
      if ((0x80 & this.b) == 128)
        m += e.b(8, this.j);
      this.l = m;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.g.n
 * JD-Core Version:    0.6.2
 */