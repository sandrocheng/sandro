package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class af extends l
  implements ah
{
  private static final af a = new af(true);
  private int b;
  private Object c;
  private Object d;
  private ai e;
  private boolean f;
  private byte g = -1;
  private int h = -1;

  static
  {
    a.o();
  }

  private af(ag paramag)
  {
    super(paramag);
  }

  private af(boolean paramBoolean)
  {
  }

  public static af a()
  {
    return a;
  }

  public static ag a(af paramaf)
  {
    return j().a(paramaf);
  }

  public static ag j()
  {
    return ag.k();
  }

  private c m()
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

  private c n()
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

  private void o()
  {
    this.c = "";
    this.d = "";
    this.e = ai.a();
    this.f = false;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, m());
    if ((0x2 & this.b) == 2)
      parame.a(2, n());
    if ((0x4 & this.b) == 4)
      parame.b(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, this.f);
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

  public ai g()
  {
    return this.e;
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

  public ag k()
  {
    return j();
  }

  public ag l()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.g;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.g = i;
    }
  }

  public int w()
  {
    int i = this.h;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.b(1, m());
      if ((0x2 & this.b) == 2)
        i += e.b(2, n());
      if ((0x4 & this.b) == 4)
        i += e.d(3, this.e);
      if ((0x8 & this.b) == 8)
        i += e.b(4, this.f);
      this.h = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.af
 * JD-Core Version:    0.6.2
 */