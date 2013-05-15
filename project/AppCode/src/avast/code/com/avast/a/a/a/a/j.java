package com.avast.a.a.a.a;

import com.google.a.c;
import com.google.a.e;
import com.google.a.u;
import com.google.a.y;
import com.google.a.z;
import java.util.List;

public final class j extends com.google.a.l
  implements l
{
  private static final j a = new j(true);
  private int b;
  private long c;
  private Object d;
  private z e;
  private z f;
  private long g;
  private Object h;
  private int i;
  private c j;
  private byte k = -1;
  private int l = -1;

  static
  {
    a.u();
  }

  private j(k paramk)
  {
    super(paramk);
  }

  private j(boolean paramBoolean)
  {
  }

  public static j a()
  {
    return a;
  }

  public static k a(j paramj)
  {
    return p().a(paramj);
  }

  public static k p()
  {
    return k.f();
  }

  private c s()
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

  private c t()
  {
    Object localObject = this.h;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.h = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void u()
  {
    this.c = 0L;
    this.d = "";
    this.e = y.a;
    this.f = y.a;
    this.g = 0L;
    this.h = "";
    this.i = 0;
    this.j = c.a;
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.b(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.a(2, s());
    int i1;
    for (int m = 0; ; m++)
    {
      int n = this.e.size();
      i1 = 0;
      if (m >= n)
        break;
      parame.a(3, this.e.c(m));
    }
    while (i1 < this.f.size())
    {
      parame.a(4, this.f.c(i1));
      i1++;
    }
    if ((0x4 & this.b) == 4)
      parame.b(5, this.g);
    if ((0x8 & this.b) == 8)
      parame.a(6, t());
    if ((0x10 & this.b) == 16)
      parame.a(7, this.i);
    if ((0x20 & this.b) == 32)
      parame.a(8, this.j);
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

  public long c()
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

  public List f()
  {
    return this.e;
  }

  public List g()
  {
    return this.f;
  }

  public boolean h()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long i()
  {
    return this.g;
  }

  public boolean j()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String k()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.h = str;
    }
  }

  public boolean l()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int m()
  {
    return this.i;
  }

  public boolean n()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c o()
  {
    return this.j;
  }

  public k q()
  {
    return p();
  }

  public k r()
  {
    return a(this);
  }

  public final boolean v()
  {
    int m = 1;
    int n = this.k;
    if (n != -1)
      if (n != m);
    while (true)
    {
      return m;
      m = 0;
      continue;
      if (!b())
      {
        this.k = 0;
        m = 0;
      }
      else
      {
        this.k = m;
      }
    }
  }

  public int w()
  {
    int m = 0;
    int n = this.l;
    if (n != -1)
      return n;
    if ((0x1 & this.b) == 1);
    for (int i1 = 0 + e.e(1, this.c); ; i1 = 0)
    {
      if ((0x2 & this.b) == 2)
        i1 += e.b(2, s());
      int i2 = 0;
      int i3 = 0;
      while (i2 < this.e.size())
      {
        i3 += e.b(this.e.c(i2));
        i2++;
      }
      int i4 = i1 + i3 + 1 * f().size();
      int i5 = 0;
      while (m < this.f.size())
      {
        i5 += e.b(this.f.c(m));
        m++;
      }
      n = i5 + i4 + 1 * g().size();
      if ((0x4 & this.b) == 4)
        n += e.e(5, this.g);
      if ((0x8 & this.b) == 8)
        n += e.b(6, t());
      if ((0x10 & this.b) == 16)
        n += e.e(7, this.i);
      if ((0x20 & this.b) == 32)
        n += e.b(8, this.j);
      this.l = n;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.j
 * JD-Core Version:    0.6.2
 */