package com.avast.a.a.a;

import com.avast.a.a.a.a.ag;
import com.avast.a.a.a.a.w;
import com.google.a.e;
import com.google.a.l;
import com.google.a.u;

public final class p extends l
  implements r
{
  private static final p a = new p(true);
  private int A = -1;
  private int b;
  private boolean c;
  private boolean d;
  private boolean e;
  private ag f;
  private ag g;
  private ag h;
  private ag i;
  private ag j;
  private boolean k;
  private Object l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private com.avast.a.a.a.a.c s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private w x;
  private boolean y;
  private byte z = -1;

  static
  {
    a.ad();
  }

  private p(q paramq)
  {
    super(paramq);
  }

  private p(boolean paramBoolean)
  {
  }

  public static q Z()
  {
    return q.e();
  }

  public static p a()
  {
    return a;
  }

  public static q a(p paramp)
  {
    return Z().a(paramp);
  }

  private com.google.a.c ac()
  {
    Object localObject = this.l;
    com.google.a.c localc;
    if ((localObject instanceof String))
    {
      localc = com.google.a.c.a((String)localObject);
      this.l = localc;
    }
    while (true)
    {
      return localc;
      localc = (com.google.a.c)localObject;
    }
  }

  private void ad()
  {
    this.c = false;
    this.d = false;
    this.e = false;
    this.f = ag.a;
    this.g = ag.a;
    this.h = ag.a;
    this.i = ag.a;
    this.j = ag.a;
    this.k = false;
    this.l = "";
    this.m = false;
    this.n = false;
    this.o = false;
    this.p = false;
    this.q = false;
    this.r = false;
    this.s = com.avast.a.a.a.a.c.a;
    this.t = false;
    this.u = false;
    this.v = false;
    this.w = false;
    this.x = w.a;
    this.y = false;
  }

  public boolean C()
  {
    return this.n;
  }

  public boolean D()
  {
    if ((0x1000 & this.b) == 4096);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean E()
  {
    return this.o;
  }

  public boolean F()
  {
    if ((0x2000 & this.b) == 8192);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean G()
  {
    return this.p;
  }

  public boolean H()
  {
    if ((0x4000 & this.b) == 16384);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean I()
  {
    return this.q;
  }

  public boolean J()
  {
    if ((0x8000 & this.b) == 32768);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean K()
  {
    return this.r;
  }

  public boolean L()
  {
    if ((0x10000 & this.b) == 65536);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public com.avast.a.a.a.a.c M()
  {
    return this.s;
  }

  public boolean N()
  {
    if ((0x20000 & this.b) == 131072);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean O()
  {
    return this.t;
  }

  public boolean P()
  {
    if ((0x40000 & this.b) == 262144);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean Q()
  {
    return this.u;
  }

  public boolean R()
  {
    if ((0x80000 & this.b) == 524288);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean S()
  {
    return this.v;
  }

  public boolean T()
  {
    if ((0x100000 & this.b) == 1048576);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean U()
  {
    return this.w;
  }

  public boolean V()
  {
    if ((0x200000 & this.b) == 2097152);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public w W()
  {
    return this.x;
  }

  public boolean X()
  {
    if ((0x400000 & this.b) == 4194304);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean Y()
  {
    return this.y;
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
      parame.c(4, this.f.a());
    if ((0x10 & this.b) == 16)
      parame.c(5, this.g.a());
    if ((0x20 & this.b) == 32)
      parame.c(6, this.h.a());
    if ((0x40 & this.b) == 64)
      parame.c(7, this.i.a());
    if ((0x80 & this.b) == 128)
      parame.c(8, this.j.a());
    if ((0x100 & this.b) == 256)
      parame.a(9, this.k);
    if ((0x200 & this.b) == 512)
      parame.a(10, ac());
    if ((0x400 & this.b) == 1024)
      parame.a(11, this.m);
    if ((0x800 & this.b) == 2048)
      parame.a(12, this.n);
    if ((0x1000 & this.b) == 4096)
      parame.a(13, this.o);
    if ((0x2000 & this.b) == 8192)
      parame.a(14, this.p);
    if ((0x4000 & this.b) == 16384)
      parame.a(15, this.q);
    if ((0x8000 & this.b) == 32768)
      parame.a(16, this.r);
    if ((0x10000 & this.b) == 65536)
      parame.c(17, this.s.a());
    if ((0x20000 & this.b) == 131072)
      parame.a(18, this.t);
    if ((0x40000 & this.b) == 262144)
      parame.a(19, this.u);
    if ((0x80000 & this.b) == 524288)
      parame.a(20, this.v);
    if ((0x100000 & this.b) == 1048576)
      parame.a(21, this.w);
    if ((0x200000 & this.b) == 2097152)
      parame.c(22, this.x.a());
    if ((0x400000 & this.b) == 4194304)
      parame.a(23, this.y);
  }

  public q aa()
  {
    return Z();
  }

  public q ab()
  {
    return a(this);
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

  public boolean c()
  {
    return this.c;
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag k()
  {
    return this.g;
  }

  public boolean l()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag m()
  {
    return this.h;
  }

  public boolean n()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag o()
  {
    return this.i;
  }

  public boolean p()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag q()
  {
    return this.j;
  }

  public boolean r()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean s()
  {
    return this.k;
  }

  public boolean t()
  {
    if ((0x200 & this.b) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String u()
  {
    Object localObject1 = this.l;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.a.c localc = (com.google.a.c)localObject1;
      str = localc.b();
      if (u.a(localc))
        this.l = str;
    }
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.z;
    if (i2 != -1)
      if (i2 != i1);
    while (true)
    {
      return i1;
      i1 = 0;
      continue;
      this.z = i1;
    }
  }

  public int w()
  {
    int i1 = this.A;
    if (i1 != -1);
    while (true)
    {
      return i1;
      int i2 = 0x1 & this.b;
      i1 = 0;
      if (i2 == 1)
        i1 = 0 + e.b(1, this.c);
      if ((0x2 & this.b) == 2)
        i1 += e.b(2, this.d);
      if ((0x4 & this.b) == 4)
        i1 += e.b(3, this.e);
      if ((0x8 & this.b) == 8)
        i1 += e.g(4, this.f.a());
      if ((0x10 & this.b) == 16)
        i1 += e.g(5, this.g.a());
      if ((0x20 & this.b) == 32)
        i1 += e.g(6, this.h.a());
      if ((0x40 & this.b) == 64)
        i1 += e.g(7, this.i.a());
      if ((0x80 & this.b) == 128)
        i1 += e.g(8, this.j.a());
      if ((0x100 & this.b) == 256)
        i1 += e.b(9, this.k);
      if ((0x200 & this.b) == 512)
        i1 += e.b(10, ac());
      if ((0x400 & this.b) == 1024)
        i1 += e.b(11, this.m);
      if ((0x800 & this.b) == 2048)
        i1 += e.b(12, this.n);
      if ((0x1000 & this.b) == 4096)
        i1 += e.b(13, this.o);
      if ((0x2000 & this.b) == 8192)
        i1 += e.b(14, this.p);
      if ((0x4000 & this.b) == 16384)
        i1 += e.b(15, this.q);
      if ((0x8000 & this.b) == 32768)
        i1 += e.b(16, this.r);
      if ((0x10000 & this.b) == 65536)
        i1 += e.g(17, this.s.a());
      if ((0x20000 & this.b) == 131072)
        i1 += e.b(18, this.t);
      if ((0x40000 & this.b) == 262144)
        i1 += e.b(19, this.u);
      if ((0x80000 & this.b) == 524288)
        i1 += e.b(20, this.v);
      if ((0x100000 & this.b) == 1048576)
        i1 += e.b(21, this.w);
      if ((0x200000 & this.b) == 2097152)
        i1 += e.g(22, this.x.a());
      if ((0x400000 & this.b) == 4194304)
        i1 += e.b(23, this.y);
      this.A = i1;
    }
  }

  public boolean x()
  {
    if ((0x400 & this.b) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean y()
  {
    return this.m;
  }

  public boolean z()
  {
    if ((0x800 & this.b) == 2048);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.p
 * JD-Core Version:    0.6.2
 */