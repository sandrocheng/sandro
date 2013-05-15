package com.avast.a.a.a;

import com.avast.a.a.a.a.m;
import com.google.a.c;
import com.google.a.e;
import com.google.a.l;

public final class s extends l
  implements u
{
  private static final s a = new s(true);
  private int b;
  private Object c;
  private m d;
  private boolean e;
  private Object f;
  private Object g;
  private byte h = -1;
  private int i = -1;

  static
  {
    a.r();
  }

  private s(t paramt)
  {
    super(paramt);
  }

  private s(boolean paramBoolean)
  {
  }

  public static s a()
  {
    return a;
  }

  public static t a(s params)
  {
    return l().a(params);
  }

  public static t l()
  {
    return t.f();
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

  private c q()
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

  private void r()
  {
    this.c = "";
    this.d = m.a;
    this.e = false;
    this.f = "";
    this.g = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, o());
    if ((0x2 & this.b) == 2)
      parame.c(2, this.d.a());
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, p());
    if ((0x10 & this.b) == 16)
      parame.a(5, q());
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
      if (com.google.a.u.a(localc))
        this.c = str;
    }
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public m e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean g()
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
      if (com.google.a.u.a(localc))
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
      if (com.google.a.u.a(localc))
        this.g = str;
    }
  }

  public t m()
  {
    return l();
  }

  public t n()
  {
    return a(this);
  }

  public final boolean v()
  {
    int j = 1;
    int k = this.h;
    if (k != -1)
      if (k != j);
    while (true)
    {
      return j;
      j = 0;
      continue;
      if (!b())
      {
        this.h = 0;
        j = 0;
      }
      else
      {
        this.h = j;
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
        j += e.g(2, this.d.a());
      if ((0x4 & this.b) == 4)
        j += e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        j += e.b(4, p());
      if ((0x10 & this.b) == 16)
        j += e.b(5, q());
      this.i = j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.s
 * JD-Core Version:    0.6.2
 */