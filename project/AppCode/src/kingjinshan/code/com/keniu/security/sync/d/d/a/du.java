package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class du extends dk
  implements dw
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 6;
  public static final int f = 7;
  public static final int g = 8;
  public static final int h = 9;
  public static final int i = 10;
  private static final du k;
  private static final long x;
  private int l;
  private Object m;
  private Object n;
  private Object o;
  private long p;
  private int q;
  private Object r;
  private Object s;
  private int t;
  private int u;
  private byte v = -1;
  private int w = -1;

  static
  {
    du localdu = new du();
    k = localdu;
    localdu.m = "";
    localdu.n = "";
    localdu.o = "";
    localdu.p = 0L;
    localdu.q = 0;
    localdu.r = "";
    localdu.s = "";
    localdu.t = 0;
    localdu.u = 0;
  }

  private du()
  {
  }

  private du(dv paramdv, byte paramByte)
  {
    super(paramdv);
  }

  public static dv J()
  {
    return dv.D();
  }

  private static du L()
  {
    return k;
  }

  private i M()
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

  private i N()
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

  private i O()
  {
    Object localObject = this.o;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.o = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i P()
  {
    Object localObject = this.r;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.r = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i Q()
  {
    Object localObject = this.s;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.s = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void R()
  {
    this.m = "";
    this.n = "";
    this.o = "";
    this.p = 0L;
    this.q = 0;
    this.r = "";
    this.s = "";
    this.t = 0;
    this.u = 0;
  }

  private static dv S()
  {
    return dv.D();
  }

  private dv T()
  {
    return dv.D().a(this);
  }

  private static du a(i parami)
  {
    return dv.a((dv)dv.D().a(parami));
  }

  private static du a(i parami, df paramdf)
  {
    return dv.a((dv)dv.D().a(parami, paramdf));
  }

  private static du a(m paramm)
  {
    return dv.a((dv)dv.D().a(paramm));
  }

  private static du a(m paramm, df paramdf)
  {
    return dv.a(dv.D().e(paramm, paramdf));
  }

  private static du a(InputStream paramInputStream)
  {
    return dv.a((dv)dv.D().a(paramInputStream));
  }

  private static du a(InputStream paramInputStream, df paramdf)
  {
    return dv.a((dv)dv.D().a(paramInputStream, paramdf));
  }

  private static du a(byte[] paramArrayOfByte)
  {
    return dv.a((dv)dv.D().a(paramArrayOfByte));
  }

  private static du a(byte[] paramArrayOfByte, df paramdf)
  {
    return dv.a((dv)dv.D().a(paramArrayOfByte, paramdf));
  }

  private static dv a(du paramdu)
  {
    return dv.D().a(paramdu);
  }

  private static du b(InputStream paramInputStream)
  {
    dv localdv = dv.D();
    if (localdv.b(paramInputStream));
    for (du localdu = dv.a(localdv); ; localdu = null)
      return localdu;
  }

  private static du b(InputStream paramInputStream, df paramdf)
  {
    dv localdv = dv.D();
    if (localdv.b(paramInputStream, paramdf));
    for (du localdu = dv.a(localdv); ; localdu = null)
      return localdu;
  }

  private static dv b(dp paramdp)
  {
    return new dv(paramdp);
  }

  public static du h()
  {
    return k;
  }

  public static final cj i()
  {
    return a.P();
  }

  public final int A()
  {
    return this.u;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.l) == 1)
      paramn.a(1, M());
    if ((0x2 & this.l) == 2)
      paramn.a(2, N());
    if ((0x4 & this.l) == 4)
      paramn.a(3, O());
    if ((0x8 & this.l) == 8)
      paramn.b(4, this.p);
    if ((0x10 & this.l) == 16)
      paramn.a(6, this.q);
    if ((0x20 & this.l) == 32)
      paramn.a(7, P());
    if ((0x40 & this.l) == 64)
      paramn.a(8, Q());
    if ((0x80 & this.l) == 128)
      paramn.a(9, this.t);
    if ((0x100 & this.l) == 256)
      paramn.a(10, this.u);
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
      if (!j())
      {
        this.v = 0;
        bool = false;
      }
      else if (!l())
      {
        this.v = 0;
        bool = false;
      }
      else if (!n())
      {
        this.v = 0;
        bool = false;
      }
      else if (!p())
      {
        this.v = 0;
        bool = false;
      }
      else if (!r())
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
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.l;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, M());
      if ((0x2 & this.l) == 2)
        i2 += n.c(2, N());
      if ((0x4 & this.l) == 4)
        i2 += n.c(3, O());
      if ((0x8 & this.l) == 8)
        i2 += n.e(4, this.p);
      if ((0x10 & this.l) == 16)
        i2 += n.d(6, this.q);
      if ((0x20 & this.l) == 32)
        i2 += n.c(7, P());
      if ((0x40 & this.l) == 64)
        i2 += n.c(8, Q());
      if ((0x80 & this.l) == 128)
        i2 += n.d(9, this.t);
      if ((0x100 & this.l) == 256)
        i2 += n.d(10, this.u);
      j = i2 + b_().b();
      this.w = j;
    }
  }

  protected final com.b.a.dv g()
  {
    return a.Q();
  }

  public final boolean j()
  {
    if ((0x1 & this.l) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x2 & this.l) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
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

  public final boolean n()
  {
    if ((0x4 & this.l) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.o;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.o = str;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.l) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.p;
  }

  public final boolean r()
  {
    if ((0x10 & this.l) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.q;
  }

  public final boolean t()
  {
    if ((0x20 & this.l) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String u()
  {
    Object localObject1 = this.r;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.r = str;
    }
  }

  public final boolean v()
  {
    if ((0x40 & this.l) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String w()
  {
    Object localObject1 = this.s;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.s = str;
    }
  }

  public final boolean x()
  {
    if ((0x80 & this.l) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int y()
  {
    return this.t;
  }

  public final boolean z()
  {
    if ((0x100 & this.l) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.du
 * JD-Core Version:    0.6.2
 */