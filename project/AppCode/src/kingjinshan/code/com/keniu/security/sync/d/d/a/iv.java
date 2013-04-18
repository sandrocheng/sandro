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

public final class iv extends dk
  implements ix
{
  public static final int a = 1;
  private static final iv b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    iv localiv = new iv();
    b = localiv;
    localiv.d = ge.h();
  }

  private iv()
  {
  }

  private iv(iw paramiw, byte paramByte)
  {
    super(paramiw);
  }

  private static iv a(i parami)
  {
    return iw.a((iw)iw.i().a(parami));
  }

  private static iv a(i parami, df paramdf)
  {
    return iw.a((iw)iw.i().a(parami, paramdf));
  }

  private static iv a(m paramm)
  {
    return iw.a((iw)iw.i().a(paramm));
  }

  private static iv a(m paramm, df paramdf)
  {
    return iw.a(iw.i().e(paramm, paramdf));
  }

  private static iv a(InputStream paramInputStream)
  {
    return iw.a((iw)iw.i().a(paramInputStream));
  }

  private static iv a(InputStream paramInputStream, df paramdf)
  {
    return iw.a((iw)iw.i().a(paramInputStream, paramdf));
  }

  private static iv a(byte[] paramArrayOfByte)
  {
    return iw.a((iw)iw.i().a(paramArrayOfByte));
  }

  private static iv a(byte[] paramArrayOfByte, df paramdf)
  {
    return iw.a((iw)iw.i().a(paramArrayOfByte, paramdf));
  }

  private static iw a(iv paramiv)
  {
    return iw.i().a(paramiv);
  }

  private static iv b(InputStream paramInputStream)
  {
    iw localiw = iw.i();
    if (localiw.b(paramInputStream));
    for (iv localiv = iw.a(localiw); ; localiv = null)
      return localiv;
  }

  private static iv b(InputStream paramInputStream, df paramdf)
  {
    iw localiw = iw.i();
    if (localiw.b(paramInputStream, paramdf));
    for (iv localiv = iw.a(localiw); ; localiv = null)
      return localiv;
  }

  private static iw b(dp paramdp)
  {
    return new iw(paramdp);
  }

  public static iv h()
  {
    return b;
  }

  public static final cj i()
  {
    return ih.H();
  }

  private static iv n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static iw p()
  {
    return iw.i();
  }

  private static iw q()
  {
    return iw.i();
  }

  private iw r()
  {
    return iw.i().a(this);
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
    return ih.I();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.d;
  }

  public final gg l()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.iv
 * JD-Core Version:    0.6.2
 */