package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.l;
import com.google.a.u;
import com.google.a.y;
import com.google.a.z;
import java.util.List;

public final class e extends l
  implements g
{
  private static final e a = new e(true);
  private int b;
  private Object c;
  private Object d;
  private Object e;
  private Object f;
  private Object g;
  private com.google.a.c h;
  private Object i;
  private Object j;
  private z k;
  private c l;
  private byte m = -1;
  private int n = -1;

  static
  {
    a.I();
  }

  private e(f paramf)
  {
    super(paramf);
  }

  private e(boolean paramBoolean)
  {
  }

  private com.google.a.c C()
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

  private com.google.a.c D()
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

  private com.google.a.c E()
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

  private com.google.a.c H()
  {
    Object localObject = this.j;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.j = localc;
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
    this.f = "";
    this.g = "";
    this.h = com.google.a.c.a;
    this.i = "";
    this.j = "";
    this.k = y.a;
    this.l = c.a;
  }

  public static e a()
  {
    return a;
  }

  public static f a(e parame)
  {
    return u().a(parame);
  }

  public static f u()
  {
    return f.e();
  }

  private com.google.a.c z()
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

  public void a(com.google.a.e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, z());
    if ((0x2 & this.b) == 2)
      parame.a(2, C());
    if ((0x4 & this.b) == 4)
      parame.a(3, D());
    if ((0x8 & this.b) == 8)
      parame.a(4, E());
    if ((0x10 & this.b) == 16)
      parame.a(5, F());
    if ((0x20 & this.b) == 32)
      parame.a(6, this.h);
    if ((0x40 & this.b) == 64)
      parame.a(7, G());
    if ((0x80 & this.b) == 128)
      parame.a(8, H());
    if ((0x100 & this.b) == 256)
      parame.c(9, this.l.a());
    for (int i1 = 0; i1 < this.k.size(); i1++)
      parame.a(10, this.k.c(i1));
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

  public com.google.a.c m()
  {
    return this.h;
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

  public String q()
  {
    Object localObject1 = this.j;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.j = str;
    }
  }

  public List r()
  {
    return this.k;
  }

  public boolean s()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c t()
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
    int i1 = 0;
    int i2 = this.n;
    if (i2 != -1)
      return i2;
    if ((0x1 & this.b) == 1);
    for (int i3 = 0 + com.google.a.e.b(1, z()); ; i3 = 0)
    {
      if ((0x2 & this.b) == 2)
        i3 += com.google.a.e.b(2, C());
      if ((0x4 & this.b) == 4)
        i3 += com.google.a.e.b(3, D());
      if ((0x8 & this.b) == 8)
        i3 += com.google.a.e.b(4, E());
      if ((0x10 & this.b) == 16)
        i3 += com.google.a.e.b(5, F());
      if ((0x20 & this.b) == 32)
        i3 += com.google.a.e.b(6, this.h);
      if ((0x40 & this.b) == 64)
        i3 += com.google.a.e.b(7, G());
      if ((0x80 & this.b) == 128)
        i3 += com.google.a.e.b(8, H());
      if ((0x100 & this.b) == 256)
        i3 += com.google.a.e.g(9, this.l.a());
      int i4 = 0;
      while (i1 < this.k.size())
      {
        i4 += com.google.a.e.b(this.k.c(i1));
        i1++;
      }
      i2 = i3 + i4 + 1 * r().size();
      this.n = i2;
      break;
    }
  }

  public f x()
  {
    return u();
  }

  public f y()
  {
    return a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.e
 * JD-Core Version:    0.6.2
 */