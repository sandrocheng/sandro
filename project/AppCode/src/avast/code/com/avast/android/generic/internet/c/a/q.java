package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class q extends l
  implements s
{
  private static final q a = new q(true);
  private int b;
  private Object c;
  private Object d;
  private Object e;
  private boolean f;
  private boolean g;
  private boolean h;
  private Object i;
  private byte j = -1;
  private int k = -1;

  static
  {
    a.y();
  }

  private q(r paramr)
  {
    super(paramr);
  }

  private q(boolean paramBoolean)
  {
  }

  public static q a()
  {
    return a;
  }

  public static r a(q paramq)
  {
    return p().a(paramq);
  }

  public static r p()
  {
    return r.e();
  }

  private c s()
  {
    Object localObject = this.c;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.c = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c t()
  {
    Object localObject = this.d;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.d = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c u()
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

  private c x()
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

  private void y()
  {
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = false;
    this.g = false;
    this.h = false;
    this.i = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, s());
    if ((0x2 & this.b) == 2)
      parame.a(2, t());
    if ((0x4 & this.b) == 4)
      parame.a(3, u());
    if ((0x8 & this.b) == 8)
      parame.a(4, this.f);
    if ((0x10 & this.b) == 16)
      parame.a(5, this.g);
    if ((0x20 & this.b) == 32)
      parame.a(6, this.h);
    if ((0x40 & this.b) == 64)
      parame.a(7, x());
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

  public String c()
  {
    Object localObject1 = this.c;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
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
      c localc = (c)localObject1;
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

  public boolean i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean k()
  {
    return this.g;
  }

  public boolean l()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean m()
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
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.i = str;
    }
  }

  public r q()
  {
    return p();
  }

  public r r()
  {
    return a(this);
  }

  public final boolean v()
  {
    int m = 1;
    int n = this.j;
    if (n != -1)
      if (n != m);
    while (true)
    {
      return m;
      m = 0;
      continue;
      this.j = m;
    }
  }

  public int w()
  {
    int m = this.k;
    if (m != -1);
    while (true)
    {
      return m;
      int n = 0x1 & this.b;
      m = 0;
      if (n == 1)
        m = 0 + e.b(1, s());
      if ((0x2 & this.b) == 2)
        m += e.b(2, t());
      if ((0x4 & this.b) == 4)
        m += e.b(3, u());
      if ((0x8 & this.b) == 8)
        m += e.b(4, this.f);
      if ((0x10 & this.b) == 16)
        m += e.b(5, this.g);
      if ((0x20 & this.b) == 32)
        m += e.b(6, this.h);
      if ((0x40 & this.b) == 64)
        m += e.b(7, x());
      this.k = m;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.q
 * JD-Core Version:    0.6.2
 */