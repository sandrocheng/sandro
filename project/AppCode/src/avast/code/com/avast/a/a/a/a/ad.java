package com.avast.a.a.a.a;

import com.google.a.aa;
import com.google.a.c;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;
import java.util.Collections;
import java.util.List;

public final class ad extends l
  implements af
{
  private static final ad a = new ad(true);
  private int b;
  private List c;
  private List d;
  private List e;
  private r f;
  private List g;
  private Object h;
  private int i;
  private boolean j;
  private long k;
  private Object l;
  private long m;
  private long n;
  private long o;
  private byte p = -1;
  private int q = -1;

  static
  {
    a.F();
  }

  private ad(ae paramae)
  {
    super(paramae);
  }

  private ad(boolean paramBoolean)
  {
  }

  private c D()
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

  private c E()
  {
    Object localObject = this.l;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.l = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void F()
  {
    this.c = Collections.emptyList();
    this.d = Collections.emptyList();
    this.e = Collections.emptyList();
    this.f = r.a();
    this.g = Collections.emptyList();
    this.h = "";
    this.i = 0;
    this.j = false;
    this.k = 0L;
    this.l = "";
    this.m = 0L;
    this.n = 0L;
    this.o = 0L;
  }

  public static ad a()
  {
    return a;
  }

  public static ae a(ad paramad)
  {
    return y().a(paramad);
  }

  public static ae y()
  {
    return ae.n();
  }

  public ae C()
  {
    return a(this);
  }

  public j a(int paramInt)
  {
    return (j)this.c.get(paramInt);
  }

  public void a(e parame)
  {
    w();
    for (int i1 = 0; i1 < this.c.size(); i1++)
      parame.b(1, (aa)this.c.get(i1));
    for (int i2 = 0; i2 < this.d.size(); i2++)
      parame.b(2, (aa)this.d.get(i2));
    for (int i3 = 0; i3 < this.e.size(); i3++)
      parame.b(3, (aa)this.e.get(i3));
    int i4 = 0x1 & this.b;
    int i5 = 0;
    if (i4 == 1)
      parame.b(4, this.f);
    while (i5 < this.g.size())
    {
      parame.b(5, (aa)this.g.get(i5));
      i5++;
    }
    if ((0x2 & this.b) == 2)
      parame.a(6, D());
    if ((0x4 & this.b) == 4)
      parame.b(7, this.i);
    if ((0x8 & this.b) == 8)
      parame.a(8, this.j);
    if ((0x10 & this.b) == 16)
      parame.b(9, this.k);
    if ((0x20 & this.b) == 32)
      parame.a(10, E());
    if ((0x40 & this.b) == 64)
      parame.b(11, this.m);
    if ((0x80 & this.b) == 128)
      parame.b(12, this.n);
    if ((0x100 & this.b) == 256)
      parame.b(13, this.o);
  }

  public int b()
  {
    return this.c.size();
  }

  public y b(int paramInt)
  {
    return (y)this.d.get(paramInt);
  }

  public int c()
  {
    return this.d.size();
  }

  public g c(int paramInt)
  {
    return (g)this.e.get(paramInt);
  }

  public int d()
  {
    return this.e.size();
  }

  public boolean e()
  {
    int i1 = 1;
    if ((0x1 & this.b) == i1);
    while (true)
    {
      return i1;
      int i2 = 0;
    }
  }

  public r f()
  {
    return this.f;
  }

  public boolean g()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String h()
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

  public boolean i()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int j()
  {
    return this.i;
  }

  public boolean k()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean l()
  {
    return this.j;
  }

  public boolean m()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long n()
  {
    return this.k;
  }

  public boolean o()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String p()
  {
    Object localObject1 = this.l;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.l = str;
    }
  }

  public boolean q()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long r()
  {
    return this.m;
  }

  public boolean s()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long t()
  {
    return this.n;
  }

  public boolean u()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.p;
    int i6;
    if (i2 != -1)
      if (i2 == i1)
        i6 = i1;
    while (true)
    {
      return i6;
      i1 = 0;
      break;
      int i7;
      for (int i3 = 0; ; i3++)
      {
        if (i3 >= b())
          break label66;
        if (!a(i3).v())
        {
          this.p = 0;
          i7 = 0;
          break;
        }
      }
      label66: for (int i4 = 0; ; i4++)
      {
        if (i4 >= c())
          break label107;
        if (!b(i4).v())
        {
          this.p = 0;
          i7 = 0;
          break;
        }
      }
      label107: for (int i5 = 0; ; i5++)
      {
        if (i5 >= d())
          break label148;
        if (!c(i5).v())
        {
          this.p = 0;
          i7 = 0;
          break;
        }
      }
      label148: if ((e()) && (!f().v()))
      {
        this.p = 0;
        i7 = 0;
      }
      else
      {
        this.p = i1;
        i7 = i1;
      }
    }
  }

  public int w()
  {
    int i1 = this.q;
    if (i1 != -1);
    while (true)
    {
      return i1;
      int i2 = 0;
      i1 = 0;
      while (i2 < this.c.size())
      {
        i1 += e.d(1, (aa)this.c.get(i2));
        i2++;
      }
      for (int i3 = 0; i3 < this.d.size(); i3++)
        i1 += e.d(2, (aa)this.d.get(i3));
      for (int i4 = 0; i4 < this.e.size(); i4++)
        i1 += e.d(3, (aa)this.e.get(i4));
      int i5 = 0x1 & this.b;
      int i6 = 0;
      if (i5 == 1)
        i1 += e.d(4, this.f);
      while (i6 < this.g.size())
      {
        i1 += e.d(5, (aa)this.g.get(i6));
        i6++;
      }
      if ((0x2 & this.b) == 2)
        i1 += e.b(6, D());
      if ((0x4 & this.b) == 4)
        i1 += e.f(7, this.i);
      if ((0x8 & this.b) == 8)
        i1 += e.b(8, this.j);
      if ((0x10 & this.b) == 16)
        i1 += e.e(9, this.k);
      if ((0x20 & this.b) == 32)
        i1 += e.b(10, E());
      if ((0x40 & this.b) == 64)
        i1 += e.e(11, this.m);
      if ((0x80 & this.b) == 128)
        i1 += e.e(12, this.n);
      if ((0x100 & this.b) == 256)
        i1 += e.e(13, this.o);
      this.q = i1;
    }
  }

  public long x()
  {
    return this.o;
  }

  public ae z()
  {
    return y();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.ad
 * JD-Core Version:    0.6.2
 */