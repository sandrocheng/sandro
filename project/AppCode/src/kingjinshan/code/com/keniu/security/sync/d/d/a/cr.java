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

public final class cr extends dk
  implements ct
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final cr d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    cr localcr = new cr();
    d = localcr;
    localcr.f = ge.h();
    localcr.g = gj.h();
    localcr.h = gy.h();
  }

  private cr()
  {
  }

  private cr(cs paramcs, byte paramByte)
  {
    super(paramcs);
  }

  private static cr a(i parami)
  {
    return cs.a((cs)cs.i().a(parami));
  }

  private static cr a(i parami, df paramdf)
  {
    return cs.a((cs)cs.i().a(parami, paramdf));
  }

  private static cr a(m paramm)
  {
    return cs.a((cs)cs.i().a(paramm));
  }

  private static cr a(m paramm, df paramdf)
  {
    return cs.a(cs.i().e(paramm, paramdf));
  }

  private static cr a(InputStream paramInputStream)
  {
    return cs.a((cs)cs.i().a(paramInputStream));
  }

  private static cr a(InputStream paramInputStream, df paramdf)
  {
    return cs.a((cs)cs.i().a(paramInputStream, paramdf));
  }

  private static cr a(byte[] paramArrayOfByte)
  {
    return cs.a((cs)cs.i().a(paramArrayOfByte));
  }

  private static cr a(byte[] paramArrayOfByte, df paramdf)
  {
    return cs.a((cs)cs.i().a(paramArrayOfByte, paramdf));
  }

  private static cs a(cr paramcr)
  {
    return cs.i().a(paramcr);
  }

  private static cr b(InputStream paramInputStream)
  {
    cs localcs = cs.i();
    if (localcs.b(paramInputStream));
    for (cr localcr = cs.a(localcs); ; localcr = null)
      return localcr;
  }

  private static cr b(InputStream paramInputStream, df paramdf)
  {
    cs localcs = cs.i();
    if (localcs.b(paramInputStream, paramdf));
    for (cr localcr = cs.a(localcs); ; localcr = null)
      return localcr;
  }

  private static cs b(dp paramdp)
  {
    return new cs(paramdp);
  }

  public static cr h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.x();
  }

  private static cr t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static cs v()
  {
    return cs.i();
  }

  private static cs w()
  {
    return cs.i();
  }

  private cs x()
  {
    return cs.i().a(this);
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
    return a.y();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.f;
  }

  public final gg l()
  {
    return this.f;
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj n()
  {
    return this.g;
  }

  public final gl o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.h;
  }

  public final ha r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.cr
 * JD-Core Version:    0.6.2
 */