package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bb extends dr
  implements bf
{
  public static final int a = 1;
  public static final int b = 8;
  public static final int c = 10;
  public static final int d = 20;
  public static final int e = 9;
  public static final int f = 16;
  public static final int g = 17;
  public static final int h = 18;
  public static final int i = 999;
  private static final bb k;
  private static final long x;
  private int l;
  private Object m;
  private Object n;
  private boolean o;
  private boolean p;
  private bd q;
  private boolean r;
  private boolean s;
  private boolean t;
  private List u;
  private byte v = -1;
  private int w = -1;

  static
  {
    bb localbb = new bb();
    k = localbb;
    localbb.m = "";
    localbb.n = "";
    localbb.o = false;
    localbb.p = false;
    localbb.q = bd.a;
    localbb.r = false;
    localbb.s = false;
    localbb.t = false;
    localbb.u = Collections.emptyList();
  }

  private bb()
  {
  }

  private bb(bc parambc, byte paramByte)
  {
    super(parambc);
  }

  public static bc A()
  {
    return bc.E();
  }

  private static bb M()
  {
    return k;
  }

  private i N()
  {
    Object localObject = this.m;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.m = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i O()
  {
    Object localObject = this.n;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.n = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void P()
  {
    this.m = "";
    this.n = "";
    this.o = false;
    this.p = false;
    this.q = bd.a;
    this.r = false;
    this.s = false;
    this.t = false;
    this.u = Collections.emptyList();
  }

  private static bc Q()
  {
    return bc.E();
  }

  private bc R()
  {
    return bc.E().a(this);
  }

  private static bb a(i parami)
  {
    return bc.a((bc)bc.E().a(parami));
  }

  private static bb a(i parami, df paramdf)
  {
    return bc.a((bc)bc.E().a(parami, paramdf));
  }

  private static bb a(m paramm)
  {
    return bc.a((bc)bc.E().a(paramm));
  }

  private static bb a(m paramm, df paramdf)
  {
    return bc.a(bc.E().e(paramm, paramdf));
  }

  private static bb a(InputStream paramInputStream)
  {
    return bc.a((bc)bc.E().a(paramInputStream));
  }

  private static bb a(InputStream paramInputStream, df paramdf)
  {
    return bc.a((bc)bc.E().a(paramInputStream, paramdf));
  }

  private static bb a(byte[] paramArrayOfByte)
  {
    return bc.a((bc)bc.E().a(paramArrayOfByte));
  }

  private static bb a(byte[] paramArrayOfByte, df paramdf)
  {
    return bc.a((bc)bc.E().a(paramArrayOfByte, paramdf));
  }

  public static bc a(bb parambb)
  {
    return bc.E().a(parambb);
  }

  private static bb b(InputStream paramInputStream)
  {
    bc localbc = bc.E();
    if (localbc.b(paramInputStream));
    for (bb localbb = bc.a(localbc); ; localbb = null)
      return localbb;
  }

  private static bb b(InputStream paramInputStream, df paramdf)
  {
    bc localbc = bc.E();
    if (localbc.b(paramInputStream, paramdf));
    for (bb localbb = bc.a(localbc); ; localbb = null)
      return localbb;
  }

  private static bc b(dp paramdp)
  {
    return new bc(paramdp);
  }

  public static bb e()
  {
    return k;
  }

  public static final cj f()
  {
    return p.t();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final cb a(int paramInt)
  {
    return (cb)this.u.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    ds localds = K();
    if ((0x1 & this.l) == 1)
      paramn.a(1, N());
    if ((0x2 & this.l) == 2)
      paramn.a(8, O());
    if ((0x10 & this.l) == 16)
      paramn.c(9, this.q.H_());
    if ((0x4 & this.l) == 4)
      paramn.a(10, this.o);
    if ((0x20 & this.l) == 32)
      paramn.a(16, this.r);
    if ((0x40 & this.l) == 64)
      paramn.a(17, this.s);
    if ((0x80 & this.l) == 128)
      paramn.a(18, this.t);
    if ((0x8 & this.l) == 8)
      paramn.a(20, this.p);
    for (int j = 0; j < this.u.size(); j++)
      paramn.b(999, (ex)this.u.get(j));
    localds.a(paramn);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.v;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= z())
          break label61;
        if (!a(i1).a())
        {
          this.v = 0;
          bool = false;
          break;
        }
      }
      label61: if (!J())
      {
        this.v = 0;
        bool = false;
      }
      else
      {
        this.v = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.w;
    if (j != -1)
      return j;
    if ((0x1 & this.l) == 1);
    for (int i1 = 0 + n.c(1, N()); ; i1 = 0)
    {
      if ((0x2 & this.l) == 2)
        i1 += n.c(8, O());
      if ((0x10 & this.l) == 16)
        i1 += n.e(9, this.q.H_());
      if ((0x4 & this.l) == 4)
        i1 += 1 + n.p(10);
      if ((0x20 & this.l) == 32)
        i1 += 1 + n.p(16);
      if ((0x40 & this.l) == 64)
        i1 += 1 + n.p(17);
      if ((0x80 & this.l) == 128)
        i1 += 1 + n.p(18);
      if ((0x8 & this.l) == 8)
        i1 += 1 + n.p(20);
      int i2 = 0;
      int i4;
      for (int i3 = i1; i2 < this.u.size(); i3 = i4)
      {
        i4 = i3 + n.e(999, (ex)this.u.get(i2));
        i2++;
      }
      j = i3 + L() + b_().b();
      this.w = j;
      break;
    }
  }

  public final cg b(int paramInt)
  {
    return (cg)this.u.get(paramInt);
  }

  protected final dv g()
  {
    return p.u();
  }

  public final String i()
  {
    Object localObject1 = this.m;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.m = str;
    }
  }

  public final boolean j()
  {
    if ((0x2 & this.l) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.n;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.n = str;
    }
  }

  public final boolean l()
  {
    if ((0x4 & this.l) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean o()
  {
    return this.p;
  }

  public final boolean p()
  {
    if ((0x10 & this.l) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bd q()
  {
    return this.q;
  }

  public final boolean r()
  {
    if ((0x20 & this.l) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean s()
  {
    return this.r;
  }

  public final boolean t()
  {
    if ((0x40 & this.l) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean t_()
  {
    if ((0x1 & this.l) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean u()
  {
    return this.s;
  }

  public final boolean u_()
  {
    return this.o;
  }

  public final boolean v()
  {
    if ((0x80 & this.l) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v_()
  {
    if ((0x8 & this.l) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean w()
  {
    return this.t;
  }

  public final List x()
  {
    return this.u;
  }

  public final List y()
  {
    return this.u;
  }

  public final int z()
  {
    return this.u.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bb
 * JD-Core Version:    0.6.2
 */