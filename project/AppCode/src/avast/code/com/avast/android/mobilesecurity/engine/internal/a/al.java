package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;
import com.google.a.y;
import java.util.List;

public final class al extends l
  implements an
{
  private static final al a = new al(true);
  private int b;
  private com.google.a.z c;
  private long d;
  private Object e;
  private c f;
  private z g;
  private byte h = -1;
  private int i = -1;

  static
  {
    a.o();
  }

  private al(am paramam)
  {
    super(paramam);
  }

  private al(boolean paramBoolean)
  {
  }

  public static al a()
  {
    return a;
  }

  public static am a(al paramal)
  {
    return k().a(paramal);
  }

  public static am k()
  {
    return am.k();
  }

  private c n()
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

  private void o()
  {
    this.c = y.a;
    this.d = 0L;
    this.e = "";
    this.f = c.a;
    this.g = z.a();
  }

  public void a(e parame)
  {
    w();
    for (int j = 0; j < this.c.size(); j++)
      parame.a(1, this.c.c(j));
    if ((0x1 & this.b) == 1)
      parame.c(2, this.d);
    if ((0x2 & this.b) == 2)
      parame.a(3, n());
    if ((0x4 & this.b) == 4)
      parame.a(4, this.f);
    if ((0x8 & this.b) == 8)
      parame.b(5, this.g);
  }

  public List b()
  {
    return this.c;
  }

  public boolean c()
  {
    int j = 1;
    if ((0x1 & this.b) == j);
    while (true)
    {
      return j;
      int k = 0;
    }
  }

  public long d()
  {
    return this.d;
  }

  public boolean e()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String f()
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

  public boolean g()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c h()
  {
    return this.f;
  }

  public boolean i()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public z j()
  {
    return this.g;
  }

  public am l()
  {
    return k();
  }

  public am m()
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
      this.h = j;
    }
  }

  public int w()
  {
    int j = this.i;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0;
      int m = 0;
      while (k < this.c.size())
      {
        m += e.b(this.c.c(k));
        k++;
      }
      j = 0 + m + 1 * b().size();
      if ((0x1 & this.b) == 1)
        j += e.f(2, this.d);
      if ((0x2 & this.b) == 2)
        j += e.b(3, n());
      if ((0x4 & this.b) == 4)
        j += e.b(4, this.f);
      if ((0x8 & this.b) == 8)
        j += e.d(5, this.g);
      this.i = j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.al
 * JD-Core Version:    0.6.2
 */