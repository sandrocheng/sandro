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

public final class jt extends dk
  implements jv
{
  public static final int a = 1;
  private static final jt b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    jt localjt = new jt();
    b = localjt;
    localjt.d = ge.h();
  }

  private jt()
  {
  }

  private jt(ju paramju, byte paramByte)
  {
    super(paramju);
  }

  private static jt a(i parami)
  {
    return ju.a((ju)ju.i().a(parami));
  }

  private static jt a(i parami, df paramdf)
  {
    return ju.a((ju)ju.i().a(parami, paramdf));
  }

  private static jt a(m paramm)
  {
    return ju.a((ju)ju.i().a(paramm));
  }

  private static jt a(m paramm, df paramdf)
  {
    return ju.a(ju.i().e(paramm, paramdf));
  }

  public static jt a(InputStream paramInputStream)
  {
    return ju.a((ju)ju.i().a(paramInputStream));
  }

  private static jt a(InputStream paramInputStream, df paramdf)
  {
    return ju.a((ju)ju.i().a(paramInputStream, paramdf));
  }

  private static jt a(byte[] paramArrayOfByte)
  {
    return ju.a((ju)ju.i().a(paramArrayOfByte));
  }

  private static jt a(byte[] paramArrayOfByte, df paramdf)
  {
    return ju.a((ju)ju.i().a(paramArrayOfByte, paramdf));
  }

  private static ju a(jt paramjt)
  {
    return ju.i().a(paramjt);
  }

  private static jt b(InputStream paramInputStream)
  {
    ju localju = ju.i();
    if (localju.b(paramInputStream));
    for (jt localjt = ju.a(localju); ; localjt = null)
      return localjt;
  }

  private static jt b(InputStream paramInputStream, df paramdf)
  {
    ju localju = ju.i();
    if (localju.b(paramInputStream, paramdf));
    for (jt localjt = ju.a(localju); ; localjt = null)
      return localjt;
  }

  private static ju b(dp paramdp)
  {
    return new ju(paramdp);
  }

  public static jt h()
  {
    return b;
  }

  public static final cj i()
  {
    return ih.l();
  }

  private static jt n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static ju p()
  {
    return ju.i();
  }

  private static ju q()
  {
    return ju.i();
  }

  private ju r()
  {
    return ju.i().a(this);
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
    return ih.m();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jt
 * JD-Core Version:    0.6.2
 */