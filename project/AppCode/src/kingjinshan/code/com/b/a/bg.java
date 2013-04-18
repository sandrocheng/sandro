package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bg extends dr
  implements bi
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 999;
  private static final bg d;
  private static final long l;
  private int e;
  private boolean f;
  private boolean g;
  private List h;
  private byte i = -1;
  private int k = -1;

  static
  {
    bg localbg = new bg();
    d = localbg;
    localbg.f = false;
    localbg.g = false;
    localbg.h = Collections.emptyList();
  }

  private bg()
  {
  }

  private bg(bh parambh, byte paramByte)
  {
    super(parambh);
  }

  private static bg a(i parami)
  {
    return bh.a((bh)bh.q().a(parami));
  }

  private static bg a(i parami, df paramdf)
  {
    return bh.a((bh)bh.q().a(parami, paramdf));
  }

  private static bg a(m paramm)
  {
    return bh.a((bh)bh.q().a(paramm));
  }

  private static bg a(m paramm, df paramdf)
  {
    return bh.a(bh.q().e(paramm, paramdf));
  }

  private static bg a(InputStream paramInputStream)
  {
    return bh.a((bh)bh.q().a(paramInputStream));
  }

  private static bg a(InputStream paramInputStream, df paramdf)
  {
    return bh.a((bh)bh.q().a(paramInputStream, paramdf));
  }

  private static bg a(byte[] paramArrayOfByte)
  {
    return bh.a((bh)bh.q().a(paramArrayOfByte));
  }

  private static bg a(byte[] paramArrayOfByte, df paramdf)
  {
    return bh.a((bh)bh.q().a(paramArrayOfByte, paramdf));
  }

  public static bh a(bg parambg)
  {
    return bh.q().a(parambg);
  }

  private static bg b(InputStream paramInputStream)
  {
    bh localbh = bh.q();
    if (localbh.b(paramInputStream));
    for (bg localbg = bh.a(localbh); ; localbg = null)
      return localbg;
  }

  private static bg b(InputStream paramInputStream, df paramdf)
  {
    bh localbh = bh.q();
    if (localbh.b(paramInputStream, paramdf));
    for (bg localbg = bh.a(localbh); ; localbg = null)
      return localbg;
  }

  private static bh b(dp paramdp)
  {
    return new bh(paramdp);
  }

  public static bg e()
  {
    return d;
  }

  public static final cj f()
  {
    return p.v();
  }

  public static bh o()
  {
    return bh.q();
  }

  private static bg p()
  {
    return d;
  }

  private void q()
  {
    this.f = false;
    this.g = false;
    this.h = Collections.emptyList();
  }

  private static bh r()
  {
    return bh.q();
  }

  private bh s()
  {
    return bh.q().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final cb a(int paramInt)
  {
    return (cb)this.h.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    ds localds = K();
    if ((0x1 & this.e) == 1)
      paramn.a(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.a(2, this.g);
    for (int j = 0; j < this.h.size(); j++)
      paramn.b(999, (ex)this.h.get(j));
    localds.a(paramn);
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
      for (int m = 0; ; m++)
      {
        if (m >= x_())
          break label61;
        if (!a(m).a())
        {
          this.i = 0;
          bool = false;
          break;
        }
      }
      label61: if (!J())
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
    if (j != -1)
      return j;
    if ((0x1 & this.e) == 1);
    for (int m = 0 + (1 + n.p(1)); ; m = 0)
    {
      if ((0x2 & this.e) == 2)
        m += 1 + n.p(2);
      int n = 0;
      int i2;
      for (int i1 = m; n < this.h.size(); i1 = i2)
      {
        i2 = i1 + n.e(999, (ex)this.h.get(n));
        n++;
      }
      j = i1 + L() + b_().b();
      this.k = j;
      break;
    }
  }

  public final cg b(int paramInt)
  {
    return (cg)this.h.get(paramInt);
  }

  protected final dv g()
  {
    return p.w();
  }

  public final boolean i()
  {
    return this.f;
  }

  public final boolean j()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean k()
  {
    return this.g;
  }

  public final List l()
  {
    return this.h;
  }

  public final boolean w_()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int x_()
  {
    return this.h.size();
  }

  public final List y_()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bg
 * JD-Core Version:    0.6.2
 */