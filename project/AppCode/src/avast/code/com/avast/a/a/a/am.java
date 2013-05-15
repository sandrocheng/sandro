package com.avast.a.a.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class am extends l
  implements as
{
  private static final am a = new am(true);
  private int b;
  private aq c;
  private long d;
  private Object e;
  private ao f;
  private int g;
  private Object h;
  private Object i;
  private Object j;
  private Object k;
  private byte l = -1;
  private int m = -1;

  static
  {
    a.F();
  }

  private am(an paraman)
  {
    super(paraman);
  }

  private am(boolean paramBoolean)
  {
  }

  private c C()
  {
    Object localObject = this.i;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.i = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c D()
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

  private c E()
  {
    Object localObject = this.k;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.k = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void F()
  {
    this.c = aq.a;
    this.d = 0L;
    this.e = "";
    this.f = ao.a;
    this.g = -1;
    this.h = "";
    this.i = "";
    this.j = "";
    this.k = "";
  }

  public static am a()
  {
    return a;
  }

  public static an a(am paramam)
  {
    return t().a(paramam);
  }

  public static an t()
  {
    return an.k();
  }

  private c y()
  {
    Object localObject = this.e;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.e = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c z()
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

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
    if ((0x2 & this.b) == 2)
      parame.b(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.a(3, y());
    if ((0x8 & this.b) == 8)
      parame.c(4, this.f.a());
    if ((0x10 & this.b) == 16)
      parame.a(5, this.g);
    if ((0x20 & this.b) == 32)
      parame.a(6, z());
    if ((0x40 & this.b) == 64)
      parame.a(7, C());
    if ((0x80 & this.b) == 128)
      parame.a(8, D());
    if ((0x100 & this.b) == 256)
      parame.a(9, E());
  }

  public boolean b()
  {
    int n = 1;
    if ((0x1 & this.b) == n);
    while (true)
    {
      return n;
      int i1 = 0;
    }
  }

  public aq c()
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

  public String g()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
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

  public ao i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int k()
  {
    return this.g;
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

  public String o()
  {
    Object localObject1 = this.i;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.i = str;
    }
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

  public boolean r()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String s()
  {
    Object localObject1 = this.k;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.k = str;
    }
  }

  public an u()
  {
    return t();
  }

  public final boolean v()
  {
    int n = 1;
    int i1 = this.l;
    if (i1 != -1)
      if (i1 != n);
    while (true)
    {
      return n;
      n = 0;
      continue;
      if (!b())
      {
        this.l = 0;
        n = 0;
      }
      else if (!d())
      {
        this.l = 0;
        n = 0;
      }
      else
      {
        this.l = n;
      }
    }
  }

  public int w()
  {
    int n = this.m;
    if (n != -1);
    while (true)
    {
      return n;
      int i1 = 0x1 & this.b;
      n = 0;
      if (i1 == 1)
        n = 0 + e.g(1, this.c.a());
      if ((0x2 & this.b) == 2)
        n += e.e(2, this.d);
      if ((0x4 & this.b) == 4)
        n += e.b(3, y());
      if ((0x8 & this.b) == 8)
        n += e.g(4, this.f.a());
      if ((0x10 & this.b) == 16)
        n += e.e(5, this.g);
      if ((0x20 & this.b) == 32)
        n += e.b(6, z());
      if ((0x40 & this.b) == 64)
        n += e.b(7, C());
      if ((0x80 & this.b) == 128)
        n += e.b(8, D());
      if ((0x100 & this.b) == 256)
        n += e.b(9, E());
      this.m = n;
    }
  }

  public an x()
  {
    return a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.am
 * JD-Core Version:    0.6.2
 */