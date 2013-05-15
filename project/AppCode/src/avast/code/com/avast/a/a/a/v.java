package com.avast.a.a.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class v extends l
  implements x
{
  private static final v a = new v(true);
  private int b;
  private int c;
  private Object d;
  private Object e;
  private byte f = -1;
  private int g = -1;

  static
  {
    a.m();
  }

  private v(w paramw)
  {
    super(paramw);
  }

  private v(boolean paramBoolean)
  {
  }

  public static v a()
  {
    return a;
  }

  public static w a(v paramv)
  {
    return h().a(paramv);
  }

  public static w h()
  {
    return w.l();
  }

  private c k()
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

  private c l()
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

  private void m()
  {
    this.c = 0;
    this.d = "";
    this.e = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.a(2, k());
    if ((0x4 & this.b) == 4)
      parame.a(3, l());
  }

  public boolean b()
  {
    int i = 1;
    if ((0x1 & this.b) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public int c()
  {
    return this.c;
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

  public w i()
  {
    return h();
  }

  public w j()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.f;
    int k;
    if (j != -1)
      if (j == i)
        k = i;
    while (true)
    {
      return k;
      i = 0;
      break;
      int m;
      if (!b())
      {
        this.f = 0;
        m = 0;
      }
      else if (!d())
      {
        this.f = 0;
        m = 0;
      }
      else if (!f())
      {
        this.f = 0;
        m = 0;
      }
      else
      {
        this.f = i;
        m = i;
      }
    }
  }

  public int w()
  {
    int i = this.g;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.e(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.b(2, k());
      if ((0x4 & this.b) == 4)
        i += e.b(3, l());
      this.g = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.v
 * JD-Core Version:    0.6.2
 */