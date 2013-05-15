package com.avast.android.mobilesecurity.engine.internal.a;

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
  private byte f = -1;
  private int g = -1;

  static
  {
    a.n();
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
    return h().a(paramq);
  }

  public static r h()
  {
    return r.l();
  }

  private c k()
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

  private c l()
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

  private c m()
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

  private void n()
  {
    this.c = "";
    this.d = "";
    this.e = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, k());
    if ((0x2 & this.b) == 2)
      parame.a(2, l());
    if ((0x4 & this.b) == 4)
      parame.a(3, m());
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

  public r i()
  {
    return h();
  }

  public r j()
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
        i = 0 + e.b(1, k());
      if ((0x2 & this.b) == 2)
        i += e.b(2, l());
      if ((0x4 & this.b) == 4)
        i += e.b(3, m());
      this.g = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.q
 * JD-Core Version:    0.6.2
 */