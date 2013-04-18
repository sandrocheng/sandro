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

public final class ib extends dk
  implements id
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ib d;
  private static final long l;
  private int e;
  private gn f;
  private long g;
  private long h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ib localib = new ib();
    d = localib;
    localib.f = gn.h();
    localib.g = 0L;
    localib.h = 0L;
  }

  private ib()
  {
  }

  private ib(ic paramic, byte paramByte)
  {
    super(paramic);
  }

  private static ib a(i parami)
  {
    return ic.a((ic)ic.q().a(parami));
  }

  private static ib a(i parami, df paramdf)
  {
    return ic.a((ic)ic.q().a(parami, paramdf));
  }

  private static ib a(m paramm)
  {
    return ic.a((ic)ic.q().a(paramm));
  }

  private static ib a(m paramm, df paramdf)
  {
    return ic.a(ic.q().e(paramm, paramdf));
  }

  private static ib a(InputStream paramInputStream)
  {
    return ic.a((ic)ic.q().a(paramInputStream));
  }

  private static ib a(InputStream paramInputStream, df paramdf)
  {
    return ic.a((ic)ic.q().a(paramInputStream, paramdf));
  }

  private static ib a(byte[] paramArrayOfByte)
  {
    return ic.a((ic)ic.q().a(paramArrayOfByte));
  }

  private static ib a(byte[] paramArrayOfByte, df paramdf)
  {
    return ic.a((ic)ic.q().a(paramArrayOfByte, paramdf));
  }

  private static ic a(ib paramib)
  {
    return ic.q().a(paramib);
  }

  private static ib b(InputStream paramInputStream)
  {
    ic localic = ic.q();
    if (localic.b(paramInputStream));
    for (ib localib = ic.a(localic); ; localib = null)
      return localib;
  }

  private static ib b(InputStream paramInputStream, df paramdf)
  {
    ic localic = ic.q();
    if (localic.b(paramInputStream, paramdf));
    for (ib localib = ic.a(localic); ; localib = null)
      return localib;
  }

  private static ic b(dp paramdp)
  {
    return new ic(paramdp);
  }

  public static ib h()
  {
    return d;
  }

  public static final cj i()
  {
    return hh.f();
  }

  public static ic q()
  {
    return ic.q();
  }

  private static ib s()
  {
    return d;
  }

  private void t()
  {
    this.f = gn.h();
    this.g = 0L;
    this.h = 0L;
  }

  private static ic u()
  {
    return ic.q();
  }

  private ic v()
  {
    return ic.q().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.b(2, this.g);
    if ((0x4 & this.e) == 4)
      paramn.b(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
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
        this.i = 0;
        bool = false;
      }
      else if (!this.f.a())
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1);
    while (true)
    {
      return j;
      int m = 0x1 & this.e;
      int n = 0;
      if (m == 1)
        n = 0 + n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return hh.g();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    return this.f;
  }

  public final gp l()
  {
    return this.f;
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.g;
  }

  public final boolean o()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ib
 * JD-Core Version:    0.6.2
 */