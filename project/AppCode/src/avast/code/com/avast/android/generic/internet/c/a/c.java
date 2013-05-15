package com.avast.android.generic.internet.c.a;

import com.google.a.l;
import com.google.a.u;

public final class c extends l
  implements e
{
  private static final c a = new c(true);
  private int b;
  private Object c;
  private Object d;
  private Object e;
  private int f;
  private Object g;
  private Object h;
  private Object i;
  private com.google.a.c j;
  private com.google.a.c k;
  private q l;
  private byte m = -1;
  private int n = -1;

  static
  {
    a.I();
  }

  private c(d paramd)
  {
    super(paramd);
  }

  private c(boolean paramBoolean)
  {
  }

  private com.google.a.c C()
  {
    Object localObject = this.c;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.c = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private com.google.a.c D()
  {
    Object localObject = this.d;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.d = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private com.google.a.c E()
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

  private com.google.a.c F()
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

  private com.google.a.c G()
  {
    Object localObject = this.h;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.h = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private com.google.a.c H()
  {
    Object localObject = this.i;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.i = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private void I()
  {
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = 0;
    this.g = "";
    this.h = "";
    this.i = "";
    this.j = com.google.a.c.a;
    this.k = com.google.a.c.a;
    this.l = q.a();
  }

  public static c a()
  {
    return a;
  }

  public static d a(c paramc)
  {
    return x().a(paramc);
  }

  public static d x()
  {
    return d.k();
  }

  public void a(com.google.a.e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, C());
    if ((0x2 & this.b) == 2)
      parame.a(2, D());
    if ((0x8 & this.b) == 8)
      parame.a(3, this.f);
    if ((0x10 & this.b) == 16)
      parame.a(4, F());
    if ((0x20 & this.b) == 32)
      parame.a(5, G());
    if ((0x40 & this.b) == 64)
      parame.a(6, H());
    if ((0x80 & this.b) == 128)
      parame.a(7, this.j);
    if ((0x100 & this.b) == 256)
      parame.a(8, this.k);
    if ((0x4 & this.b) == 4)
      parame.a(9, E());
    if ((0x200 & this.b) == 512)
      parame.b(10, this.l);
  }

  public boolean b()
  {
    int i1 = 1;
    if ((0x1 & this.b) == i1);
    while (true)
    {
      return i1;
      int i2 = 0;
    }
  }

  public String c()
  {
    Object localObject1 = this.c;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.c = str;
    }
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String e()
  {
    Object localObject1 = this.d;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.d = str;
    }
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

  public int i()
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

  public String m()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
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
      com.google.a.c localc = (com.google.a.c)localObject1;
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

  public com.google.a.c q()
  {
    return this.j;
  }

  public boolean r()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public com.google.a.c s()
  {
    return this.k;
  }

  public boolean t()
  {
    if ((0x200 & this.b) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public q u()
  {
    return this.l;
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.m;
    if (i2 != -1)
      if (i2 != i1);
    while (true)
    {
      return i1;
      i1 = 0;
      continue;
      this.m = i1;
    }
  }

  public int w()
  {
    int i1 = this.n;
    if (i1 != -1);
    while (true)
    {
      return i1;
      int i2 = 0x1 & this.b;
      i1 = 0;
      if (i2 == 1)
        i1 = 0 + com.google.a.e.b(1, C());
      if ((0x2 & this.b) == 2)
        i1 += com.google.a.e.b(2, D());
      if ((0x8 & this.b) == 8)
        i1 += com.google.a.e.e(3, this.f);
      if ((0x10 & this.b) == 16)
        i1 += com.google.a.e.b(4, F());
      if ((0x20 & this.b) == 32)
        i1 += com.google.a.e.b(5, G());
      if ((0x40 & this.b) == 64)
        i1 += com.google.a.e.b(6, H());
      if ((0x80 & this.b) == 128)
        i1 += com.google.a.e.b(7, this.j);
      if ((0x100 & this.b) == 256)
        i1 += com.google.a.e.b(8, this.k);
      if ((0x4 & this.b) == 4)
        i1 += com.google.a.e.b(9, E());
      if ((0x200 & this.b) == 512)
        i1 += com.google.a.e.d(10, this.l);
      this.n = i1;
    }
  }

  public d y()
  {
    return x();
  }

  public d z()
  {
    return a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.c
 * JD-Core Version:    0.6.2
 */