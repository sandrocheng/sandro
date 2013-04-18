package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class hj extends dk
  implements hl
{
  public static final int a = 1;
  private static final hj b;
  private static final long g;
  private int c;
  private gn d;
  private byte e = -1;
  private int f = -1;

  static
  {
    hj localhj = new hj();
    b = localhj;
    localhj.d = gn.h();
  }

  private hj()
  {
  }

  private hj(hk paramhk, byte paramByte)
  {
    super(paramhk);
  }

  private static hj a(i parami)
  {
    return hk.a((hk)hk.m().a(parami));
  }

  private static hj a(i parami, df paramdf)
  {
    return hk.a((hk)hk.m().a(parami, paramdf));
  }

  private static hj a(m paramm)
  {
    return hk.a((hk)hk.m().a(paramm));
  }

  private static hj a(m paramm, df paramdf)
  {
    return hk.a(hk.m().e(paramm, paramdf));
  }

  private static hj a(InputStream paramInputStream)
  {
    return hk.a((hk)hk.m().a(paramInputStream));
  }

  private static hj a(InputStream paramInputStream, df paramdf)
  {
    return hk.a((hk)hk.m().a(paramInputStream, paramdf));
  }

  private static hj a(byte[] paramArrayOfByte)
  {
    return hk.a((hk)hk.m().a(paramArrayOfByte));
  }

  private static hj a(byte[] paramArrayOfByte, df paramdf)
  {
    return hk.a((hk)hk.m().a(paramArrayOfByte, paramdf));
  }

  private static hk a(hj paramhj)
  {
    return hk.m().a(paramhj);
  }

  private static hj b(InputStream paramInputStream)
  {
    hk localhk = hk.m();
    if (localhk.b(paramInputStream));
    for (hj localhj = hk.a(localhk); ; localhj = null)
      return localhj;
  }

  private static hj b(InputStream paramInputStream, df paramdf)
  {
    hk localhk = hk.m();
    if (localhk.b(paramInputStream, paramdf));
    for (hj localhj = hk.a(localhk); ; localhj = null)
      return localhj;
  }

  private static hk b(dp paramdp)
  {
    return new hk(paramdp);
  }

  public static hj h()
  {
    return b;
  }

  public static final cj i()
  {
    return hh.b();
  }

  public static hk m()
  {
    return hk.m();
  }

  private static hj o()
  {
    return b;
  }

  private void p()
  {
    this.d = gn.h();
  }

  private static hk q()
  {
    return hk.m();
  }

  private hk r()
  {
    return hk.m().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.b(1, this.d);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.e;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.e = 0;
        bool = false;
      }
      else if (!this.d.a())
      {
        this.e = 0;
        bool = false;
      }
      else
      {
        this.e = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int i = this.f;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.c;
      int k = 0;
      if (j == 1)
        k = 0 + n.e(1, this.d);
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return hh.c();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    return this.d;
  }

  public final gp l()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hj
 * JD-Core Version:    0.6.2
 */