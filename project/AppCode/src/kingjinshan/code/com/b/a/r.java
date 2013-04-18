package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class r extends dk
  implements w
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 6;
  public static final int d = 3;
  public static final int e = 4;
  public static final int f = 5;
  public static final int g = 7;
  private static final r h;
  private static final long t;
  private int i;
  private Object k;
  private List l;
  private List m;
  private List n;
  private List o;
  private List p;
  private bg q;
  private byte r = -1;
  private int s = -1;

  static
  {
    r localr = new r();
    h = localr;
    localr.k = "";
    localr.l = Collections.emptyList();
    localr.m = Collections.emptyList();
    localr.n = Collections.emptyList();
    localr.o = Collections.emptyList();
    localr.p = Collections.emptyList();
    localr.q = bg.e();
  }

  private r()
  {
  }

  private r(s params, byte paramByte)
  {
    super(params);
  }

  private static r J()
  {
    return h;
  }

  private i K()
  {
    Object localObject = this.k;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.k = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void L()
  {
    this.k = "";
    this.l = Collections.emptyList();
    this.m = Collections.emptyList();
    this.n = Collections.emptyList();
    this.o = Collections.emptyList();
    this.p = Collections.emptyList();
    this.q = bg.e();
  }

  private static s M()
  {
    return s.N();
  }

  private s N()
  {
    return s.N().a(this);
  }

  private static r a(i parami)
  {
    return s.a((s)s.N().a(parami));
  }

  private static r a(i parami, df paramdf)
  {
    return s.a((s)s.N().a(parami, paramdf));
  }

  private static r a(m paramm)
  {
    return s.a((s)s.N().a(paramm));
  }

  private static r a(m paramm, df paramdf)
  {
    return s.a(s.N().e(paramm, paramdf));
  }

  private static r a(InputStream paramInputStream)
  {
    return s.a((s)s.N().a(paramInputStream));
  }

  private static r a(InputStream paramInputStream, df paramdf)
  {
    return s.a((s)s.N().a(paramInputStream, paramdf));
  }

  private static r a(byte[] paramArrayOfByte)
  {
    return s.a((s)s.N().a(paramArrayOfByte));
  }

  private static r a(byte[] paramArrayOfByte, df paramdf)
  {
    return s.a((s)s.N().a(paramArrayOfByte, paramdf));
  }

  private static r b(InputStream paramInputStream)
  {
    s locals = s.N();
    if (locals.b(paramInputStream));
    for (r localr = s.a(locals); ; localr = null)
      return localr;
  }

  private static r b(InputStream paramInputStream, df paramdf)
  {
    s locals = s.N();
    if (locals.b(paramInputStream, paramdf));
    for (r localr = s.a(locals); ; localr = null)
      return localr;
  }

  private static s b(dp paramdp)
  {
    return new s(paramdp);
  }

  public static s c_()
  {
    return s.N();
  }

  public static r e()
  {
    return h;
  }

  public static final cj f()
  {
    return p.f();
  }

  private static s f(r paramr)
  {
    return s.N().a(paramr);
  }

  public final bi A()
  {
    return this.q;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final aj a(int paramInt)
  {
    return (aj)this.l.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.i) == 1)
      paramn.a(1, K());
    for (int j = 0; j < this.l.size(); j++)
      paramn.b(2, (ex)this.l.get(j));
    for (int i1 = 0; i1 < this.n.size(); i1++)
      paramn.b(3, (ex)this.n.get(i1));
    for (int i2 = 0; i2 < this.o.size(); i2++)
      paramn.b(4, (ex)this.o.get(i2));
    for (int i3 = 0; i3 < this.p.size(); i3++)
      paramn.b(5, (ex)this.p.get(i3));
    for (int i4 = 0; i4 < this.m.size(); i4++)
      paramn.b(6, (ex)this.m.get(i4));
    if ((0x2 & this.i) == 2)
      paramn.b(7, this.q);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.r;
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
        if (i1 >= l())
          break label65;
        if (!a(i1).a())
        {
          this.r = 0;
          bool = false;
          break;
        }
      }
      label65: for (int i2 = 0; ; i2++)
      {
        if (i2 >= o())
          break label103;
        if (!c(i2).a())
        {
          this.r = 0;
          bool = false;
          break;
        }
      }
      label103: for (int i3 = 0; ; i3++)
      {
        if (i3 >= r())
          break label144;
        if (!e(i3).a())
        {
          this.r = 0;
          bool = false;
          break;
        }
      }
      label144: for (int i4 = 0; ; i4++)
      {
        if (i4 >= u())
          break label185;
        if (!g(i4).a())
        {
          this.r = 0;
          bool = false;
          break;
        }
      }
      label185: if ((y()) && (!this.q.a()))
      {
        this.r = 0;
        bool = false;
      }
      else
      {
        this.r = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.s;
    if (j != -1)
      return j;
    if ((0x1 & this.i) == 1);
    for (int i1 = 0 + n.c(1, K()); ; i1 = 0)
    {
      int i2 = 0;
      int i13;
      for (int i3 = i1; i2 < this.l.size(); i3 = i13)
      {
        i13 = i3 + n.e(2, (ex)this.l.get(i2));
        i2++;
      }
      int i4 = 0;
      while (i4 < this.n.size())
      {
        int i12 = i3 + n.e(3, (ex)this.n.get(i4));
        i4++;
        i3 = i12;
      }
      int i5 = 0;
      while (i5 < this.o.size())
      {
        int i11 = i3 + n.e(4, (ex)this.o.get(i5));
        i5++;
        i3 = i11;
      }
      int i6 = 0;
      while (i6 < this.p.size())
      {
        int i10 = i3 + n.e(5, (ex)this.p.get(i6));
        i6++;
        i3 = i10;
      }
      int i7 = 0;
      while (i7 < this.m.size())
      {
        int i9 = i3 + n.e(6, (ex)this.m.get(i7));
        i7++;
        i3 = i9;
      }
      if ((0x2 & this.i) == 2);
      for (int i8 = i3 + n.e(7, this.q); ; i8 = i3)
      {
        j = i8 + b_().b();
        this.s = j;
        break;
      }
    }
  }

  public final ap b(int paramInt)
  {
    return (ap)this.l.get(paramInt);
  }

  public final aj c(int paramInt)
  {
    return (aj)this.m.get(paramInt);
  }

  public final ap d(int paramInt)
  {
    return (ap)this.m.get(paramInt);
  }

  public final boolean d_()
  {
    if ((0x1 & this.i) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final r e(int paramInt)
  {
    return (r)this.n.get(paramInt);
  }

  public final w f(int paramInt)
  {
    return (w)this.n.get(paramInt);
  }

  protected final dv g()
  {
    return p.g();
  }

  public final x g(int paramInt)
  {
    return (x)this.o.get(paramInt);
  }

  public final z h(int paramInt)
  {
    return (z)this.o.get(paramInt);
  }

  public final t i(int paramInt)
  {
    return (t)this.p.get(paramInt);
  }

  public final String i()
  {
    Object localObject1 = this.k;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.k = str;
    }
  }

  public final v j(int paramInt)
  {
    return (v)this.p.get(paramInt);
  }

  public final List j()
  {
    return this.l;
  }

  public final List k()
  {
    return this.l;
  }

  public final int l()
  {
    return this.l.size();
  }

  public final List m()
  {
    return this.m;
  }

  public final List n()
  {
    return this.m;
  }

  public final int o()
  {
    return this.m.size();
  }

  public final List p()
  {
    return this.n;
  }

  public final List q()
  {
    return this.n;
  }

  public final int r()
  {
    return this.n.size();
  }

  public final List s()
  {
    return this.o;
  }

  public final List t()
  {
    return this.o;
  }

  public final int u()
  {
    return this.o.size();
  }

  public final List v()
  {
    return this.p;
  }

  public final List w()
  {
    return this.p;
  }

  public final int x()
  {
    return this.p.size();
  }

  public final boolean y()
  {
    if ((0x2 & this.i) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bg z()
  {
    return this.q;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.r
 * JD-Core Version:    0.6.2
 */