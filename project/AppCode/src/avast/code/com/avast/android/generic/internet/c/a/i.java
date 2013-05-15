package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class i extends l
  implements k
{
  private static final i a = new i(true);
  private int b;
  private Object c;
  private byte d = -1;
  private int e = -1;

  static
  {
    a.h();
  }

  private i(j paramj)
  {
    super(paramj);
  }

  private i(boolean paramBoolean)
  {
  }

  public static i a()
  {
    return a;
  }

  public static j a(i parami)
  {
    return d().a(parami);
  }

  public static j d()
  {
    return j.e();
  }

  private c g()
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

  private void h()
  {
    this.c = "";
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, g());
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

  public j e()
  {
    return d();
  }

  public j f()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.d;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.d = i;
    }
  }

  public int w()
  {
    int i = this.e;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.b(1, g());
      this.e = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.i
 * JD-Core Version:    0.6.2
 */