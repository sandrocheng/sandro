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

public final class im extends dk
  implements io
{
  public static final int a = 1;
  private static final im b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    im localim = new im();
    b = localim;
    localim.d = ge.h();
  }

  private im()
  {
  }

  private im(in paramin, byte paramByte)
  {
    super(paramin);
  }

  private static im a(i parami)
  {
    return in.a((in)in.i().a(parami));
  }

  private static im a(i parami, df paramdf)
  {
    return in.a((in)in.i().a(parami, paramdf));
  }

  private static im a(m paramm)
  {
    return in.a((in)in.i().a(paramm));
  }

  private static im a(m paramm, df paramdf)
  {
    return in.a(in.i().e(paramm, paramdf));
  }

  private static im a(InputStream paramInputStream)
  {
    return in.a((in)in.i().a(paramInputStream));
  }

  private static im a(InputStream paramInputStream, df paramdf)
  {
    return in.a((in)in.i().a(paramInputStream, paramdf));
  }

  private static im a(byte[] paramArrayOfByte)
  {
    return in.a((in)in.i().a(paramArrayOfByte));
  }

  private static im a(byte[] paramArrayOfByte, df paramdf)
  {
    return in.a((in)in.i().a(paramArrayOfByte, paramdf));
  }

  private static in a(im paramim)
  {
    return in.i().a(paramim);
  }

  private static im b(InputStream paramInputStream)
  {
    in localin = in.i();
    if (localin.b(paramInputStream));
    for (im localim = in.a(localin); ; localim = null)
      return localim;
  }

  private static im b(InputStream paramInputStream, df paramdf)
  {
    in localin = in.i();
    if (localin.b(paramInputStream, paramdf));
    for (im localim = in.a(localin); ; localim = null)
      return localim;
  }

  private static in b(dp paramdp)
  {
    return new in(paramdp);
  }

  public static im h()
  {
    return b;
  }

  public static final cj i()
  {
    return ih.p();
  }

  private static im n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static in p()
  {
    return in.i();
  }

  private static in q()
  {
    return in.i();
  }

  private in r()
  {
    return in.i().a(this);
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
    return ih.q();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.im
 * JD-Core Version:    0.6.2
 */