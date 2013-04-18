package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class av extends dk
  implements ax
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  private static final av k;
  private static final long x;
  private int l;
  private Object m;
  private Object n;
  private eu o;
  private List p;
  private List q;
  private List r;
  private List s;
  private bb t;
  private bv u;
  private byte v = -1;
  private int w = -1;

  static
  {
    av localav = new av();
    k = localav;
    localav.m = "";
    localav.n = "";
    localav.o = et.a;
    localav.p = Collections.emptyList();
    localav.q = Collections.emptyList();
    localav.r = Collections.emptyList();
    localav.s = Collections.emptyList();
    localav.t = bb.e();
    localav.u = bv.e();
  }

  private av()
  {
  }

  private av(aw paramaw, byte paramByte)
  {
    super(paramaw);
  }

  public static aw N()
  {
    return aw.N();
  }

  private static av O()
  {
    return k;
  }

  private i P()
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

  private i Q()
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

  private void R()
  {
    this.m = "";
    this.n = "";
    this.o = et.a;
    this.p = Collections.emptyList();
    this.q = Collections.emptyList();
    this.r = Collections.emptyList();
    this.s = Collections.emptyList();
    this.t = bb.e();
    this.u = bv.e();
  }

  private static aw S()
  {
    return aw.N();
  }

  private aw T()
  {
    return aw.N().a(this);
  }

  private static av a(i parami)
  {
    return aw.a((aw)aw.N().a(parami));
  }

  private static av a(i parami, df paramdf)
  {
    return aw.a((aw)aw.N().a(parami, paramdf));
  }

  private static av a(m paramm)
  {
    return aw.a((aw)aw.N().a(paramm));
  }

  private static av a(m paramm, df paramdf)
  {
    return aw.a(aw.N().e(paramm, paramdf));
  }

  private static av a(InputStream paramInputStream)
  {
    return aw.a((aw)aw.N().a(paramInputStream));
  }

  private static av a(InputStream paramInputStream, df paramdf)
  {
    return aw.a((aw)aw.N().a(paramInputStream, paramdf));
  }

  public static av a(byte[] paramArrayOfByte)
  {
    return aw.a((aw)aw.N().a(paramArrayOfByte));
  }

  public static av a(byte[] paramArrayOfByte, df paramdf)
  {
    return aw.a((aw)aw.N().a(paramArrayOfByte, paramdf));
  }

  private static av b(InputStream paramInputStream)
  {
    aw localaw = aw.N();
    if (localaw.b(paramInputStream));
    for (av localav = aw.a(localaw); ; localav = null)
      return localav;
  }

  private static av b(InputStream paramInputStream, df paramdf)
  {
    aw localaw = aw.N();
    if (localaw.b(paramInputStream, paramdf));
    for (av localav = aw.a(localaw); ; localav = null)
      return localav;
  }

  private static aw b(dp paramdp)
  {
    return new aw(paramdp);
  }

  public static av e()
  {
    return k;
  }

  private static aw f(av paramav)
  {
    return aw.N().a(paramav);
  }

  public static final cj f()
  {
    return p.d();
  }

  public final bb A()
  {
    return this.t;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final String a(int paramInt)
  {
    return (String)this.o.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.l) == 1)
      paramn.a(1, P());
    if ((0x2 & this.l) == 2)
      paramn.a(2, Q());
    for (int j = 0; j < this.o.size(); j++)
      paramn.a(3, this.o.a(j));
    for (int i1 = 0; i1 < this.p.size(); i1++)
      paramn.b(4, (ex)this.p.get(i1));
    for (int i2 = 0; i2 < this.q.size(); i2++)
      paramn.b(5, (ex)this.q.get(i2));
    for (int i3 = 0; i3 < this.r.size(); i3++)
      paramn.b(6, (ex)this.r.get(i3));
    for (int i4 = 0; i4 < this.s.size(); i4++)
      paramn.b(7, (ex)this.s.get(i4));
    if ((0x4 & this.l) == 4)
      paramn.b(8, this.t);
    if ((0x8 & this.l) == 8)
      paramn.b(9, this.u);
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
        if (i1 >= p())
          break label65;
        if (!b(i1).a())
        {
          this.v = 0;
          bool = false;
          break;
        }
      }
      label65: for (int i2 = 0; ; i2++)
      {
        if (i2 >= s())
          break label103;
        if (!d(i2).a())
        {
          this.v = 0;
          bool = false;
          break;
        }
      }
      label103: for (int i3 = 0; ; i3++)
      {
        if (i3 >= v())
          break label144;
        if (!f(i3).a())
        {
          this.v = 0;
          bool = false;
          break;
        }
      }
      label144: for (int i4 = 0; ; i4++)
      {
        if (i4 >= y())
          break label185;
        if (!h(i4).a())
        {
          this.v = 0;
          bool = false;
          break;
        }
      }
      label185: if ((z()) && (!this.t.a()))
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
    for (int i1 = 0 + n.c(1, P()); ; i1 = 0)
    {
      if ((0x2 & this.l) == 2)
        i1 += n.c(2, Q());
      int i2 = 0;
      int i3 = 0;
      while (i2 < this.o.size())
      {
        i3 += n.b(this.o.a(i2));
        i2++;
      }
      int i4 = i1 + i3 + 1 * this.o.size();
      int i5 = 0;
      int i14;
      for (int i6 = i4; i5 < this.p.size(); i6 = i14)
      {
        i14 = i6 + n.e(4, (ex)this.p.get(i5));
        i5++;
      }
      int i7 = 0;
      while (i7 < this.q.size())
      {
        int i13 = i6 + n.e(5, (ex)this.q.get(i7));
        i7++;
        i6 = i13;
      }
      int i8 = 0;
      while (i8 < this.r.size())
      {
        int i12 = i6 + n.e(6, (ex)this.r.get(i8));
        i8++;
        i6 = i12;
      }
      int i9 = 0;
      while (i9 < this.s.size())
      {
        int i11 = i6 + n.e(7, (ex)this.s.get(i9));
        i9++;
        i6 = i11;
      }
      if ((0x4 & this.l) == 4);
      for (int i10 = i6 + n.e(8, this.t); ; i10 = i6)
      {
        if ((0x8 & this.l) == 8)
          i10 += n.e(9, this.u);
        j = i10 + b_().b();
        this.w = j;
        break;
      }
    }
  }

  public final r b(int paramInt)
  {
    return (r)this.p.get(paramInt);
  }

  public final w c(int paramInt)
  {
    return (w)this.p.get(paramInt);
  }

  public final x d(int paramInt)
  {
    return (x)this.q.get(paramInt);
  }

  public final z e(int paramInt)
  {
    return (z)this.q.get(paramInt);
  }

  public final bp f(int paramInt)
  {
    return (bp)this.r.get(paramInt);
  }

  public final br g(int paramInt)
  {
    return (br)this.r.get(paramInt);
  }

  protected final dv g()
  {
    return p.e();
  }

  public final aj h(int paramInt)
  {
    return (aj)this.s.get(paramInt);
  }

  public final ap i(int paramInt)
  {
    return (ap)this.s.get(paramInt);
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

  public final List l()
  {
    return this.o;
  }

  public final int m()
  {
    return this.o.size();
  }

  public final List n()
  {
    return this.p;
  }

  public final boolean n_()
  {
    if ((0x1 & this.l) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List o()
  {
    return this.p;
  }

  public final bf o_()
  {
    return this.t;
  }

  public final int p()
  {
    return this.p.size();
  }

  public final boolean p_()
  {
    if ((0x8 & this.l) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List q()
  {
    return this.q;
  }

  public final bv q_()
  {
    return this.u;
  }

  public final List r()
  {
    return this.q;
  }

  public final ca r_()
  {
    return this.u;
  }

  public final int s()
  {
    return this.q.size();
  }

  public final List t()
  {
    return this.r;
  }

  public final List u()
  {
    return this.r;
  }

  public final int v()
  {
    return this.r.size();
  }

  public final List w()
  {
    return this.s;
  }

  public final List x()
  {
    return this.s;
  }

  public final int y()
  {
    return this.s.size();
  }

  public final boolean z()
  {
    if ((0x4 & this.l) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.av
 * JD-Core Version:    0.6.2
 */