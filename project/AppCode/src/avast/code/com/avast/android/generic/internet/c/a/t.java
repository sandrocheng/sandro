package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;

public final class t extends l
  implements aa
{
  private static final t a = new t(true);
  private int b;
  private c c;
  private Object d;
  private v e;
  private byte f = -1;
  private int g = -1;

  static
  {
    a.l();
  }

  private t(u paramu)
  {
    super(paramu);
  }

  private t(boolean paramBoolean)
  {
  }

  public static t a()
  {
    return a;
  }

  public static u a(t paramt)
  {
    return h().a(paramt);
  }

  public static u h()
  {
    return u.k();
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

  private void l()
  {
    this.c = c.a;
    this.d = "";
    this.e = v.a();
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.a(2, k());
    if ((0x4 & this.b) == 4)
      parame.b(3, this.e);
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

  public c c()
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
      if (com.google.a.u.a(localc))
        this.d = str;
    }
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public v g()
  {
    return this.e;
  }

  public u i()
  {
    return h();
  }

  public u j()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.f;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.f = i;
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
        i = 0 + e.b(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.b(2, k());
      if ((0x4 & this.b) == 4)
        i += e.d(3, this.e);
      this.g = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.t
 * JD-Core Version:    0.6.2
 */