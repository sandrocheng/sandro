package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class aq extends dr
  implements au
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 9;
  public static final int e = 999;
  private static final aq f;
  private static final long p;
  private int g;
  private as h;
  private boolean i;
  private boolean k;
  private Object l;
  private List m;
  private byte n = -1;
  private int o = -1;

  static
  {
    aq localaq = new aq();
    f = localaq;
    localaq.h = as.a;
    localaq.i = false;
    localaq.k = false;
    localaq.l = "";
    localaq.m = Collections.emptyList();
  }

  private aq()
  {
  }

  private aq(ar paramar, byte paramByte)
  {
    super(paramar);
  }

  private static aq a(i parami)
  {
    return ar.a((ar)ar.u().a(parami));
  }

  private static aq a(i parami, df paramdf)
  {
    return ar.a((ar)ar.u().a(parami, paramdf));
  }

  private static aq a(m paramm)
  {
    return ar.a((ar)ar.u().a(paramm));
  }

  private static aq a(m paramm, df paramdf)
  {
    return ar.a(ar.u().e(paramm, paramdf));
  }

  private static aq a(InputStream paramInputStream)
  {
    return ar.a((ar)ar.u().a(paramInputStream));
  }

  private static aq a(InputStream paramInputStream, df paramdf)
  {
    return ar.a((ar)ar.u().a(paramInputStream, paramdf));
  }

  private static aq a(byte[] paramArrayOfByte)
  {
    return ar.a((ar)ar.u().a(paramArrayOfByte));
  }

  private static aq a(byte[] paramArrayOfByte, df paramdf)
  {
    return ar.a((ar)ar.u().a(paramArrayOfByte, paramdf));
  }

  public static ar a(aq paramaq)
  {
    return ar.u().a(paramaq);
  }

  private static aq b(InputStream paramInputStream)
  {
    ar localar = ar.u();
    if (localar.b(paramInputStream));
    for (aq localaq = ar.a(localar); ; localaq = null)
      return localaq;
  }

  private static aq b(InputStream paramInputStream, df paramdf)
  {
    ar localar = ar.u();
    if (localar.b(paramInputStream, paramdf));
    for (aq localaq = ar.a(localar); ; localaq = null)
      return localaq;
  }

  private static ar b(dp paramdp)
  {
    return new ar(paramdp);
  }

  public static aq e()
  {
    return f;
  }

  public static final cj f()
  {
    return p.x();
  }

  public static ar s()
  {
    return ar.u();
  }

  private static aq t()
  {
    return f;
  }

  private i u()
  {
    Object localObject = this.l;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.l = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void v()
  {
    this.h = as.a;
    this.i = false;
    this.k = false;
    this.l = "";
    this.m = Collections.emptyList();
  }

  private static ar w()
  {
    return ar.u();
  }

  private ar x()
  {
    return ar.u().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final cb a(int paramInt)
  {
    return (cb)this.m.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    ds localds = K();
    if ((0x1 & this.g) == 1)
      paramn.c(1, this.h.H_());
    if ((0x2 & this.g) == 2)
      paramn.a(2, this.i);
    if ((0x4 & this.g) == 4)
      paramn.a(3, this.k);
    if ((0x8 & this.g) == 8)
      paramn.a(9, u());
    for (int j = 0; j < this.m.size(); j++)
      paramn.b(999, (ex)this.m.get(j));
    localds.a(paramn);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.n;
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
        if (i1 >= r())
          break label61;
        if (!a(i1).a())
        {
          this.n = 0;
          bool = false;
          break;
        }
      }
      label61: if (!J())
      {
        this.n = 0;
        bool = false;
      }
      else
      {
        this.n = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.o;
    if (j != -1)
      return j;
    if ((0x1 & this.g) == 1);
    for (int i1 = 0 + n.e(1, this.h.H_()); ; i1 = 0)
    {
      if ((0x2 & this.g) == 2)
        i1 += 1 + n.p(2);
      if ((0x4 & this.g) == 4)
        i1 += 1 + n.p(3);
      if ((0x8 & this.g) == 8)
        i1 += n.c(9, u());
      int i2 = 0;
      int i4;
      for (int i3 = i1; i2 < this.m.size(); i3 = i4)
      {
        i4 = i3 + n.e(999, (ex)this.m.get(i2));
        i2++;
      }
      j = i3 + L() + b_().b();
      this.o = j;
      break;
    }
  }

  public final cg b(int paramInt)
  {
    return (cg)this.m.get(paramInt);
  }

  protected final dv g()
  {
    return p.y();
  }

  public final as i()
  {
    return this.h;
  }

  public final boolean j()
  {
    if ((0x2 & this.g) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean k()
  {
    return this.i;
  }

  public final boolean k_()
  {
    if ((0x1 & this.g) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean l()
  {
    if ((0x4 & this.g) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean l_()
  {
    return this.k;
  }

  public final boolean m_()
  {
    if ((0x8 & this.g) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.l;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.l = str;
    }
  }

  public final List p()
  {
    return this.m;
  }

  public final List q()
  {
    return this.m;
  }

  public final int r()
  {
    return this.m.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.aq
 * JD-Core Version:    0.6.2
 */