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

public final class kf extends dk
  implements kh
{
  public static final int a = 1;
  private static final kf b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    kf localkf = new kf();
    b = localkf;
    localkf.d = ge.h();
  }

  private kf()
  {
  }

  private kf(kg paramkg, byte paramByte)
  {
    super(paramkg);
  }

  private static kf a(i parami)
  {
    return kg.a((kg)kg.i().a(parami));
  }

  private static kf a(i parami, df paramdf)
  {
    return kg.a((kg)kg.i().a(parami, paramdf));
  }

  private static kf a(m paramm)
  {
    return kg.a((kg)kg.i().a(paramm));
  }

  private static kf a(m paramm, df paramdf)
  {
    return kg.a(kg.i().e(paramm, paramdf));
  }

  private static kf a(InputStream paramInputStream)
  {
    return kg.a((kg)kg.i().a(paramInputStream));
  }

  private static kf a(InputStream paramInputStream, df paramdf)
  {
    return kg.a((kg)kg.i().a(paramInputStream, paramdf));
  }

  private static kf a(byte[] paramArrayOfByte)
  {
    return kg.a((kg)kg.i().a(paramArrayOfByte));
  }

  private static kf a(byte[] paramArrayOfByte, df paramdf)
  {
    return kg.a((kg)kg.i().a(paramArrayOfByte, paramdf));
  }

  private static kg a(kf paramkf)
  {
    return kg.i().a(paramkf);
  }

  private static kf b(InputStream paramInputStream)
  {
    kg localkg = kg.i();
    if (localkg.b(paramInputStream));
    for (kf localkf = kg.a(localkg); ; localkf = null)
      return localkf;
  }

  private static kf b(InputStream paramInputStream, df paramdf)
  {
    kg localkg = kg.i();
    if (localkg.b(paramInputStream, paramdf));
    for (kf localkf = kg.a(localkg); ; localkf = null)
      return localkf;
  }

  private static kg b(dp paramdp)
  {
    return new kg(paramdp);
  }

  public static kf h()
  {
    return b;
  }

  public static final cj i()
  {
    return ih.D();
  }

  private static kf n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static kg p()
  {
    return kg.i();
  }

  private static kg q()
  {
    return kg.i();
  }

  private kg r()
  {
    return kg.i().a(this);
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
    return ih.E();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.kf
 * JD-Core Version:    0.6.2
 */