package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class cl extends dk
  implements cn
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final cl e;
  private static final long n;
  private int f;
  private ge g;
  private gj h;
  private gy i;
  private gj k;
  private byte l = -1;
  private int m = -1;

  static
  {
    cl localcl = new cl();
    e = localcl;
    localcl.g = ge.h();
    localcl.h = gj.h();
    localcl.i = gy.h();
    localcl.k = gj.h();
  }

  private cl()
  {
  }

  private cl(cm paramcm, byte paramByte)
  {
    super(paramcm);
  }

  private cm A()
  {
    return cm.i().a(this);
  }

  private static cl a(i parami)
  {
    return cm.a((cm)cm.i().a(parami));
  }

  private static cl a(i parami, df paramdf)
  {
    return cm.a((cm)cm.i().a(parami, paramdf));
  }

  private static cl a(m paramm)
  {
    return cm.a((cm)cm.i().a(paramm));
  }

  private static cl a(m paramm, df paramdf)
  {
    return cm.a(cm.i().e(paramm, paramdf));
  }

  public static cl a(InputStream paramInputStream)
  {
    return cm.a((cm)cm.i().a(paramInputStream));
  }

  private static cl a(InputStream paramInputStream, df paramdf)
  {
    return cm.a((cm)cm.i().a(paramInputStream, paramdf));
  }

  private static cl a(byte[] paramArrayOfByte)
  {
    return cm.a((cm)cm.i().a(paramArrayOfByte));
  }

  private static cl a(byte[] paramArrayOfByte, df paramdf)
  {
    return cm.a((cm)cm.i().a(paramArrayOfByte, paramdf));
  }

  private static cm a(cl paramcl)
  {
    return cm.i().a(paramcl);
  }

  private static cl b(InputStream paramInputStream)
  {
    cm localcm = cm.i();
    if (localcm.b(paramInputStream));
    for (cl localcl = cm.a(localcm); ; localcl = null)
      return localcl;
  }

  private static cl b(InputStream paramInputStream, df paramdf)
  {
    cm localcm = cm.i();
    if (localcm.b(paramInputStream, paramdf));
    for (cl localcl = cm.a(localcm); ; localcl = null)
      return localcl;
  }

  private static cm b(dp paramdp)
  {
    return new cm(paramdp);
  }

  public static cl h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.t();
  }

  private static cl w()
  {
    return e;
  }

  private void x()
  {
    this.g = ge.h();
    this.h = gj.h();
    this.i = gy.h();
    this.k = gj.h();
  }

  private static cm y()
  {
    return cm.i();
  }

  private static cm z()
  {
    return cm.i();
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.b(1, this.g);
    if ((0x2 & this.f) == 2)
      paramn.b(2, this.h);
    if ((0x4 & this.f) == 4)
      paramn.b(3, this.i);
    if ((0x8 & this.f) == 8)
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
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.f;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.e(1, this.g);
      if ((0x2 & this.f) == 2)
        i2 += n.e(2, this.h);
      if ((0x4 & this.f) == 4)
        i2 += n.e(3, this.i);
      if ((0x8 & this.f) == 8)
        i2 += n.e(4, this.k);
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return a.u();
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

  public final boolean p()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.i;
  }

  public final ha r()
  {
    return this.i;
  }

  public final boolean s()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj t()
  {
    return this.k;
  }

  public final gl u()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cl
 * JD-Core Version:    0.6.2
 */