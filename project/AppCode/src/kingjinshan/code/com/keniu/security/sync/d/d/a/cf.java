package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ex;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class cf extends dk
  implements ch
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final cf e;
  private static final long n;
  private int f;
  private ge g;
  private gj h;
  private List i;
  private gy k;
  private byte l = -1;
  private int m = -1;

  static
  {
    cf localcf = new cf();
    e = localcf;
    localcf.g = ge.h();
    localcf.h = gj.h();
    localcf.i = Collections.emptyList();
    localcf.k = gy.h();
  }

  private cf()
  {
  }

  private cf(cg paramcg, byte paramByte)
  {
    super(paramcg);
  }

  private static cg A()
  {
    return cg.i();
  }

  private cg J()
  {
    return cg.i().a(this);
  }

  private static cf a(i parami)
  {
    return cg.a((cg)cg.i().a(parami));
  }

  private static cf a(i parami, df paramdf)
  {
    return cg.a((cg)cg.i().a(parami, paramdf));
  }

  private static cf a(m paramm)
  {
    return cg.a((cg)cg.i().a(paramm));
  }

  private static cf a(m paramm, df paramdf)
  {
    return cg.a(cg.i().e(paramm, paramdf));
  }

  public static cf a(InputStream paramInputStream)
  {
    return cg.a((cg)cg.i().a(paramInputStream));
  }

  private static cf a(InputStream paramInputStream, df paramdf)
  {
    return cg.a((cg)cg.i().a(paramInputStream, paramdf));
  }

  private static cf a(byte[] paramArrayOfByte)
  {
    return cg.a((cg)cg.i().a(paramArrayOfByte));
  }

  private static cf a(byte[] paramArrayOfByte, df paramdf)
  {
    return cg.a((cg)cg.i().a(paramArrayOfByte, paramdf));
  }

  private static cf b(InputStream paramInputStream)
  {
    cg localcg = cg.i();
    if (localcg.b(paramInputStream));
    for (cf localcf = cg.a(localcg); ; localcf = null)
      return localcf;
  }

  private static cf b(InputStream paramInputStream, df paramdf)
  {
    cg localcg = cg.i();
    if (localcg.b(paramInputStream, paramdf));
    for (cf localcf = cg.a(localcg); ; localcf = null)
      return localcf;
  }

  private static cg b(dp paramdp)
  {
    return new cg(paramdp);
  }

  private static cg b(cf paramcf)
  {
    return cg.i().a(paramcf);
  }

  public static cf h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.J();
  }

  private static cf x()
  {
    return e;
  }

  private void y()
  {
    this.g = ge.h();
    this.h = gj.h();
    this.i = Collections.emptyList();
    this.k = gy.h();
  }

  private static cg z()
  {
    return cg.i();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final gj a(int paramInt)
  {
    return (gj)this.i.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.b(1, this.g);
    if ((0x2 & this.f) == 2)
      paramn.b(2, this.h);
    for (int j = 0; j < this.i.size(); j++)
      paramn.b(3, (ex)this.i.get(j));
    if ((0x4 & this.f) == 4)
      paramn.b(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
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
        this.l = 0;
        bool = false;
      }
      else if (!this.g.a())
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.m;
    if (j != -1)
      return j;
    if ((0x1 & this.f) == 1);
    for (int i1 = 0 + n.e(1, this.g); ; i1 = 0)
    {
      if ((0x2 & this.f) == 2)
        i1 += n.e(2, this.h);
      int i2 = 0;
      int i5;
      for (int i3 = i1; i2 < this.i.size(); i3 = i5)
      {
        i5 = i3 + n.e(3, (ex)this.i.get(i2));
        i2++;
      }
      if ((0x4 & this.f) == 4);
      for (int i4 = i3 + n.e(4, this.k); ; i4 = i3)
      {
        j = i4 + b_().b();
        this.m = j;
        break;
      }
    }
  }

  public final gl b(int paramInt)
  {
    return (gl)this.i.get(paramInt);
  }

  protected final dv g()
  {
    return a.K();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.g;
  }

  public final gg l()
  {
    return this.g;
  }

  public final boolean m()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj n()
  {
    return this.h;
  }

  public final gl o()
  {
    return this.h;
  }

  public final List p()
  {
    return this.i;
  }

  public final List q()
  {
    return this.i;
  }

  public final int r()
  {
    return this.i.size();
  }

  public final boolean s()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy t()
  {
    return this.k;
  }

  public final ha u()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cf
 * JD-Core Version:    0.6.2
 */