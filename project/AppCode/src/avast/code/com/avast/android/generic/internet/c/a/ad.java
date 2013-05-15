package com.avast.android.generic.internet.c.a;

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
  private c c;
  private c d;
  private c e;
  private c f;
  private long g;
  private List h;
  private List i;
  private c j;
  private am k;
  private int l;
  private long m;
  private long n;
  private boolean o;
  private boolean p;
  private Object q;
  private c r;
  private long s;
  private boolean t;
  private ag u;
  private byte v = -1;
  private int w = -1;

  static
  {
    a.T();
  }

  private ad(ae paramae)
  {
    super(paramae);
  }

  private ad(boolean paramBoolean)
  {
  }

  public static ae P()
  {
    return ae.o();
  }

  private c S()
  {
    Object localObject = this.q;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.q = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private void T()
  {
    this.c = c.a;
    this.d = c.a;
    this.e = c.a;
    this.f = c.a;
    this.g = 0L;
    this.h = Collections.emptyList();
    this.i = Collections.emptyList();
    this.j = c.a;
    this.k = am.a();
    this.l = 0;
    this.m = 0L;
    this.n = 0L;
    this.o = false;
    this.p = false;
    this.q = "";
    this.r = c.a;
    this.s = 0L;
    this.t = false;
    this.u = ag.a();
  }

  public static ad a()
  {
    return a;
  }

  public static ae a(ad paramad)
  {
    return P().a(paramad);
  }

  public boolean C()
  {
    return this.o;
  }

  public boolean D()
  {
    if ((0x800 & this.b) == 2048);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean E()
  {
    return this.p;
  }

  public boolean F()
  {
    if ((0x1000 & this.b) == 4096);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String G()
  {
    Object localObject1 = this.q;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.q = str;
    }
  }

  public boolean H()
  {
    if ((0x2000 & this.b) == 8192);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c I()
  {
    return this.r;
  }

  public boolean J()
  {
    if ((0x4000 & this.b) == 16384);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long K()
  {
    return this.s;
  }

  public boolean L()
  {
    if ((0x8000 & this.b) == 32768);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean M()
  {
    return this.t;
  }

  public boolean N()
  {
    if ((0x10000 & this.b) == 65536);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag O()
  {
    return this.u;
  }

  public ae Q()
  {
    return P();
  }

  public ae R()
  {
    return a(this);
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.a(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.a(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.a(4, this.f);
    if ((0x10 & this.b) == 16)
      parame.b(5, this.g);
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.h.size();
      i3 = 0;
      if (i1 >= i2)
        break;
      parame.a(6, (c)this.h.get(i1));
    }
    while (i3 < this.i.size())
    {
      parame.a(7, (c)this.i.get(i3));
      i3++;
    }
    if ((0x20 & this.b) == 32)
      parame.a(8, this.j);
    if ((0x40 & this.b) == 64)
      parame.b(9, this.k);
    if ((0x80 & this.b) == 128)
      parame.a(10, this.l);
    if ((0x100 & this.b) == 256)
      parame.b(11, this.m);
    if ((0x200 & this.b) == 512)
      parame.b(12, this.n);
    if ((0x400 & this.b) == 1024)
      parame.a(13, this.o);
    if ((0x800 & this.b) == 2048)
      parame.a(14, this.p);
    if ((0x1000 & this.b) == 4096)
      parame.a(15, S());
    if ((0x2000 & this.b) == 8192)
      parame.a(16, this.r);
    if ((0x4000 & this.b) == 16384)
      parame.b(17, this.s);
    if ((0x8000 & this.b) == 32768)
      parame.a(18, this.t);
    if ((0x10000 & this.b) == 65536)
      parame.b(19, this.u);
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

  public c e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public c i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long k()
  {
    return this.g;
  }

  public List l()
  {
    return this.h;
  }

  public List m()
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

  public boolean p()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public am q()
  {
    return this.k;
  }

  public boolean r()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int s()
  {
    return this.l;
  }

  public boolean t()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long u()
  {
    return this.m;
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.v;
    if (i2 != -1)
      if (i2 != i1);
    while (true)
    {
      return i1;
      i1 = 0;
      continue;
      this.v = i1;
    }
  }

  public int w()
  {
    int i1 = 0;
    int i2 = this.w;
    if (i2 != -1)
      return i2;
    if ((0x1 & this.b) == 1);
    for (int i3 = 0 + e.b(1, this.c); ; i3 = 0)
    {
      if ((0x2 & this.b) == 2)
        i3 += e.b(2, this.d);
      if ((0x4 & this.b) == 4)
        i3 += e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        i3 += e.b(4, this.f);
      if ((0x10 & this.b) == 16);
      for (int i4 = i3 + e.e(5, this.g); ; i4 = i3)
      {
        int i5 = 0;
        int i6 = 0;
        while (i5 < this.h.size())
        {
          i6 += e.b((c)this.h.get(i5));
          i5++;
        }
        int i7 = i4 + i6 + 1 * l().size();
        int i9;
        for (int i8 = 0; i1 < this.i.size(); i8 = i9)
        {
          i9 = i8 + e.b((c)this.i.get(i1));
          i1++;
        }
        i2 = i7 + i8 + 1 * m().size();
        if ((0x20 & this.b) == 32)
          i2 += e.b(8, this.j);
        if ((0x40 & this.b) == 64)
          i2 += e.d(9, this.k);
        if ((0x80 & this.b) == 128)
          i2 += e.e(10, this.l);
        if ((0x100 & this.b) == 256)
          i2 += e.e(11, this.m);
        if ((0x200 & this.b) == 512)
          i2 += e.e(12, this.n);
        if ((0x400 & this.b) == 1024)
          i2 += e.b(13, this.o);
        if ((0x800 & this.b) == 2048)
          i2 += e.b(14, this.p);
        if ((0x1000 & this.b) == 4096)
          i2 += e.b(15, S());
        if ((0x2000 & this.b) == 8192)
          i2 += e.b(16, this.r);
        if ((0x4000 & this.b) == 16384)
          i2 += e.e(17, this.s);
        if ((0x8000 & this.b) == 32768)
          i2 += e.b(18, this.t);
        if ((0x10000 & this.b) == 65536)
          i2 += e.d(19, this.u);
        this.w = i2;
        break;
      }
    }
  }

  public boolean x()
  {
    if ((0x200 & this.b) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long y()
  {
    return this.n;
  }

  public boolean z()
  {
    if ((0x400 & this.b) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.ad
 * JD-Core Version:    0.6.2
 */