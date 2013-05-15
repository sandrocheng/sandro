package com.avast.android.generic.internet.c.a;

import com.google.a.aa;
import com.google.a.e;
import com.google.a.l;
import java.util.Collections;
import java.util.List;

public final class am extends l
  implements ao
{
  private static final am a = new am(true);
  private int b;
  private ax c;
  private int d;
  private long e;
  private int f;
  private boolean g;
  private long h;
  private boolean i;
  private boolean j;
  private List k;
  private List l;
  private int m;
  private int n;
  private byte o = -1;
  private int p = -1;

  static
  {
    a.C();
  }

  private am(an paraman)
  {
    super(paraman);
  }

  private am(boolean paramBoolean)
  {
  }

  private void C()
  {
    this.c = ax.a;
    this.d = 0;
    this.e = 0L;
    this.f = 0;
    this.g = false;
    this.h = 0L;
    this.i = false;
    this.j = false;
    this.k = Collections.emptyList();
    this.l = Collections.emptyList();
    this.m = 0;
    this.n = 0;
  }

  public static am a()
  {
    return a;
  }

  public static an a(am paramam)
  {
    return x().a(paramam);
  }

  public static an x()
  {
    return an.o();
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
    if ((0x2 & this.b) == 2)
      parame.a(2, this.d);
    if ((0x8 & this.b) == 8)
      parame.a(3, this.f);
    if ((0x10 & this.b) == 16)
      parame.a(4, this.g);
    if ((0x20 & this.b) == 32)
      parame.b(5, this.h);
    if ((0x40 & this.b) == 64)
      parame.a(6, this.i);
    if ((0x80 & this.b) == 128)
      parame.a(7, this.j);
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.k.size();
      i3 = 0;
      if (i1 >= i2)
        break;
      parame.b(8, (aa)this.k.get(i1));
    }
    while (i3 < this.l.size())
    {
      parame.b(9, (aa)this.l.get(i3));
      i3++;
    }
    if ((0x100 & this.b) == 256)
      parame.a(10, this.m);
    if ((0x200 & this.b) == 512)
      parame.a(11, this.n);
    if ((0x4 & this.b) == 4)
      parame.b(12, this.e);
  }

  public boolean b()
  {
    int i1 = 1;
    if ((0x1 & this.b) == i1);
    while (true)
    {
      return i1;
      int i2 = 0;
    }
  }

  public ax c()
  {
    return this.c;
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean k()
  {
    return this.g;
  }

  public boolean l()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long m()
  {
    return this.h;
  }

  public boolean n()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean o()
  {
    return this.i;
  }

  public boolean p()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean q()
  {
    return this.j;
  }

  public boolean r()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int s()
  {
    return this.m;
  }

  public boolean t()
  {
    if ((0x200 & this.b) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int u()
  {
    return this.n;
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.o;
    if (i2 != -1)
      if (i2 != i1);
    while (true)
    {
      return i1;
      i1 = 0;
      continue;
      this.o = i1;
    }
  }

  public int w()
  {
    int i1 = this.p;
    if (i1 != -1)
      return i1;
    if ((0x1 & this.b) == 1);
    for (int i2 = 0 + e.g(1, this.c.a()); ; i2 = 0)
    {
      if ((0x2 & this.b) == 2)
        i2 += e.e(2, this.d);
      if ((0x8 & this.b) == 8)
        i2 += e.e(3, this.f);
      if ((0x10 & this.b) == 16)
        i2 += e.b(4, this.g);
      if ((0x20 & this.b) == 32)
        i2 += e.e(5, this.h);
      if ((0x40 & this.b) == 64)
        i2 += e.b(6, this.i);
      if ((0x80 & this.b) == 128)
        i2 += e.b(7, this.j);
      int i3 = 0;
      i1 = i2;
      int i5;
      while (true)
      {
        int i4 = this.k.size();
        i5 = 0;
        if (i3 >= i4)
          break;
        i1 += e.d(8, (aa)this.k.get(i3));
        i3++;
      }
      while (i5 < this.l.size())
      {
        i1 += e.d(9, (aa)this.l.get(i5));
        i5++;
      }
      if ((0x100 & this.b) == 256)
        i1 += e.e(10, this.m);
      if ((0x200 & this.b) == 512)
        i1 += e.e(11, this.n);
      if ((0x4 & this.b) == 4)
        i1 += e.e(12, this.e);
      this.p = i1;
      break;
    }
  }

  public an y()
  {
    return x();
  }

  public an z()
  {
    return a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.am
 * JD-Core Version:    0.6.2
 */