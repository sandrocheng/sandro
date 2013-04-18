package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.List;

public final class gq extends dk
  implements gs
{
  private static final long B = 0L;
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  public static final int k = 10;
  public static final int l = 11;
  private static final gq m;
  private int A = -1;
  private int n;
  private Object o;
  private int p;
  private Object q;
  private long r;
  private Object s;
  private Object t;
  private int u;
  private int v;
  private long w;
  private eu x;
  private eu y;
  private byte z = -1;

  static
  {
    gq localgq = new gq();
    m = localgq;
    localgq.o = "";
    localgq.p = 0;
    localgq.q = "";
    localgq.r = 0L;
    localgq.s = "";
    localgq.t = "";
    localgq.u = 0;
    localgq.v = 0;
    localgq.w = 0L;
    localgq.x = et.a;
    localgq.y = et.a;
  }

  private gq()
  {
  }

  private gq(gr paramgr, byte paramByte)
  {
    super(paramgr);
  }

  public static gr N()
  {
    return gr.E();
  }

  private static gq P()
  {
    return m;
  }

  private i Q()
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

  private i R()
  {
    Object localObject = this.q;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.q = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i S()
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

  private i T()
  {
    Object localObject = this.t;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.t = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void U()
  {
    this.o = "";
    this.p = 0;
    this.q = "";
    this.r = 0L;
    this.s = "";
    this.t = "";
    this.u = 0;
    this.v = 0;
    this.w = 0L;
    this.x = et.a;
    this.y = et.a;
  }

  private static gr V()
  {
    return gr.E();
  }

  private gr W()
  {
    return gr.E().a(this);
  }

  private static gq a(i parami)
  {
    return gr.a((gr)gr.E().a(parami));
  }

  private static gq a(i parami, df paramdf)
  {
    return gr.a((gr)gr.E().a(parami, paramdf));
  }

  private static gq a(m paramm)
  {
    return gr.a((gr)gr.E().a(paramm));
  }

  private static gq a(m paramm, df paramdf)
  {
    return gr.a(gr.E().e(paramm, paramdf));
  }

  private static gq a(InputStream paramInputStream)
  {
    return gr.a((gr)gr.E().a(paramInputStream));
  }

  private static gq a(InputStream paramInputStream, df paramdf)
  {
    return gr.a((gr)gr.E().a(paramInputStream, paramdf));
  }

  private static gq a(byte[] paramArrayOfByte)
  {
    return gr.a((gr)gr.E().a(paramArrayOfByte));
  }

  private static gq a(byte[] paramArrayOfByte, df paramdf)
  {
    return gr.a((gr)gr.E().a(paramArrayOfByte, paramdf));
  }

  public static gr a(gq paramgq)
  {
    return gr.E().a(paramgq);
  }

  private static gq b(InputStream paramInputStream)
  {
    gr localgr = gr.E();
    if (localgr.b(paramInputStream));
    for (gq localgq = gr.a(localgr); ; localgq = null)
      return localgq;
  }

  private static gq b(InputStream paramInputStream, df paramdf)
  {
    gr localgr = gr.E();
    if (localgr.b(paramInputStream, paramdf));
    for (gq localgq = gr.a(localgr); ; localgq = null)
      return localgq;
  }

  private static gr b(dp paramdp)
  {
    return new gr(paramdp);
  }

  public static gq h()
  {
    return m;
  }

  public static final cj i()
  {
    return gc.r();
  }

  public final long A()
  {
    return this.w;
  }

  protected final Object B()
  {
    return super.B();
  }

  public final String a(int paramInt)
  {
    return (String)this.x.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.n) == 1)
      paramn.a(1, Q());
    if ((0x2 & this.n) == 2)
      paramn.a(2, this.p);
    if ((0x4 & this.n) == 4)
      paramn.a(3, R());
    if ((0x8 & this.n) == 8)
      paramn.b(4, this.r);
    if ((0x10 & this.n) == 16)
      paramn.a(5, S());
    if ((0x20 & this.n) == 32)
      paramn.a(6, T());
    if ((0x40 & this.n) == 64)
      paramn.a(7, this.u);
    if ((0x80 & this.n) == 128)
      paramn.a(8, this.v);
    if ((0x100 & this.n) == 256)
      paramn.b(9, this.w);
    for (int j = 0; j < this.x.size(); j++)
      paramn.a(10, this.x.a(j));
    for (int i1 = 0; i1 < this.y.size(); i1++)
      paramn.a(11, this.y.a(i1));
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.z;
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
        this.z = 0;
        bool = false;
      }
      else if (!l())
      {
        this.z = 0;
        bool = false;
      }
      else if (!n())
      {
        this.z = 0;
        bool = false;
      }
      else if (!p())
      {
        this.z = 0;
        bool = false;
      }
      else if (!r())
      {
        this.z = 0;
        bool = false;
      }
      else if (!t())
      {
        this.z = 0;
        bool = false;
      }
      else if (!v())
      {
        this.z = 0;
        bool = false;
      }
      else if (!x())
      {
        this.z = 0;
        bool = false;
      }
      else if (!z())
      {
        this.z = 0;
        bool = false;
      }
      else
      {
        this.z = 1;
        bool = true;
      }
    }
  }

  public final List ag_()
  {
    return this.x;
  }

  public final int ah_()
  {
    return this.x.size();
  }

  public final List ai_()
  {
    return this.y;
  }

  public final int aj_()
  {
    return this.y.size();
  }

  public final int b()
  {
    int j = this.A;
    if (j != -1)
      return j;
    if ((0x1 & this.n) == 1);
    for (int i1 = 0 + n.c(1, Q()); ; i1 = 0)
    {
      if ((0x2 & this.n) == 2)
        i1 += n.d(2, this.p);
      if ((0x4 & this.n) == 4)
        i1 += n.c(3, R());
      if ((0x8 & this.n) == 8)
        i1 += n.e(4, this.r);
      if ((0x10 & this.n) == 16)
        i1 += n.c(5, S());
      if ((0x20 & this.n) == 32)
        i1 += n.c(6, T());
      if ((0x40 & this.n) == 64)
        i1 += n.d(7, this.u);
      if ((0x80 & this.n) == 128)
        i1 += n.d(8, this.v);
      if ((0x100 & this.n) == 256)
        i1 += n.e(9, this.w);
      int i2 = 0;
      int i3 = 0;
      while (i2 < this.x.size())
      {
        i3 += n.b(this.x.a(i2));
        i2++;
      }
      int i4 = i1 + i3 + 1 * this.x.size();
      int i5 = 0;
      int i6 = 0;
      while (i5 < this.y.size())
      {
        i6 += n.b(this.y.a(i5));
        i5++;
      }
      j = i4 + i6 + 1 * this.y.size() + b_().b();
      this.A = j;
      break;
    }
  }

  public final String b(int paramInt)
  {
    return (String)this.y.get(paramInt);
  }

  protected final dv g()
  {
    return gc.s();
  }

  public final boolean j()
  {
    if ((0x1 & this.n) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x2 & this.n) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int m()
  {
    return this.p;
  }

  public final boolean n()
  {
    if ((0x4 & this.n) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.q;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.q = str;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.n) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.r;
  }

  public final boolean r()
  {
    if ((0x10 & this.n) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String s()
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

  public final boolean t()
  {
    if ((0x20 & this.n) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String u()
  {
    Object localObject1 = this.t;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.t = str;
    }
  }

  public final boolean v()
  {
    if ((0x40 & this.n) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int w()
  {
    return this.u;
  }

  public final boolean x()
  {
    if ((0x80 & this.n) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int y()
  {
    return this.v;
  }

  public final boolean z()
  {
    if ((0x100 & this.n) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gq
 * JD-Core Version:    0.6.2
 */