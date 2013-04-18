package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class ay extends dk
  implements ba
{
  public static final int a = 1;
  private static final ay b;
  private static final long g;
  private int c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    ay localay = new ay();
    b = localay;
    localay.d = "";
  }

  private ay()
  {
  }

  private ay(az paramaz, byte paramByte)
  {
    super(paramaz);
  }

  private static ay a(i parami)
  {
    return az.a((az)az.l().a(parami));
  }

  private static ay a(i parami, df paramdf)
  {
    return az.a((az)az.l().a(parami, paramdf));
  }

  private static ay a(m paramm)
  {
    return az.a((az)az.l().a(paramm));
  }

  private static ay a(m paramm, df paramdf)
  {
    return az.a(az.l().e(paramm, paramdf));
  }

  private static ay a(InputStream paramInputStream)
  {
    return az.a((az)az.l().a(paramInputStream));
  }

  private static ay a(InputStream paramInputStream, df paramdf)
  {
    return az.a((az)az.l().a(paramInputStream, paramdf));
  }

  private static ay a(byte[] paramArrayOfByte)
  {
    return az.a((az)az.l().a(paramArrayOfByte));
  }

  private static ay a(byte[] paramArrayOfByte, df paramdf)
  {
    return az.a((az)az.l().a(paramArrayOfByte, paramdf));
  }

  private static az a(ay paramay)
  {
    return az.l().a(paramay);
  }

  private static ay b(InputStream paramInputStream)
  {
    az localaz = az.l();
    if (localaz.b(paramInputStream));
    for (ay localay = az.a(localaz); ; localay = null)
      return localay;
  }

  private static ay b(InputStream paramInputStream, df paramdf)
  {
    az localaz = az.l();
    if (localaz.b(paramInputStream, paramdf));
    for (ay localay = az.a(localaz); ; localay = null)
      return localay;
  }

  private static az b(dp paramdp)
  {
    return new az(paramdp);
  }

  public static ay h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.b();
  }

  public static az l()
  {
    return az.l();
  }

  private static ay n()
  {
    return b;
  }

  private i o()
  {
    Object localObject = this.d;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.d = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void p()
  {
    this.d = "";
  }

  private static az q()
  {
    return az.l();
  }

  private az r()
  {
    return az.l().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.a(1, o());
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
        k = 0 + n.c(1, o());
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return a.c();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.d;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.d = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ay
 * JD-Core Version:    0.6.2
 */