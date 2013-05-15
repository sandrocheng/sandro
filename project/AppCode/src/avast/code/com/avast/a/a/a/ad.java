package com.avast.a.a.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class ad extends l
  implements af
{
  private static final ad a = new ad(true);
  private int b;
  private Object c;
  private Object d;
  private int e;
  private Object f;
  private Object g;
  private byte h = -1;
  private int i = -1;

  static
  {
    a.s();
  }

  private ad(ae paramae)
  {
    super(paramae);
  }

  private ad(boolean paramBoolean)
  {
  }

  public static ad a()
  {
    return a;
  }

  public static ae a(ad paramad)
  {
    return l().a(paramad);
  }

  public static ae l()
  {
    return ae.n();
  }

  private c o()
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

  private c p()
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

  private c r()
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

  private void s()
  {
    this.c = "";
    this.d = "";
    this.e = 0;
    this.f = "";
    this.g = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, o());
    if ((0x2 & this.b) == 2)
      parame.a(2, p());
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, q());
    if ((0x10 & this.b) == 16)
      parame.a(5, r());
  }

  public boolean b()
  {
    int j = 1;
    if ((0x1 & this.b) == j);
    while (true)
    {
      return j;
      int k = 0;
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

  public ae m()
  {
    return l();
  }

  public ae n()
  {
    return a(this);
  }

  public final boolean v()
  {
    int j = 1;
    int k = this.h;
    int m;
    if (k != -1)
      if (k == j)
        m = j;
    while (true)
    {
      return m;
      j = 0;
      break;
      int n;
      if (!b())
      {
        this.h = 0;
        n = 0;
      }
      else if (!d())
      {
        this.h = 0;
        n = 0;
      }
      else if (!f())
      {
        this.h = 0;
        n = 0;
      }
      else if (!h())
      {
        this.h = 0;
        n = 0;
      }
      else if (!j())
      {
        this.h = 0;
        n = 0;
      }
      else
      {
        this.h = j;
        n = j;
      }
    }
  }

  public int w()
  {
    int j = this.i;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0x1 & this.b;
      j = 0;
      if (k == 1)
        j = 0 + e.b(1, o());
      if ((0x2 & this.b) == 2)
        j += e.b(2, p());
      if ((0x4 & this.b) == 4)
        j += e.e(3, this.e);
      if ((0x8 & this.b) == 8)
        j += e.b(4, q());
      if ((0x10 & this.b) == 16)
        j += e.b(5, r());
      this.i = j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.ad
 * JD-Core Version:    0.6.2
 */