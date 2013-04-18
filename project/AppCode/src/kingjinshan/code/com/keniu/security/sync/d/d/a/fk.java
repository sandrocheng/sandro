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

public final class fk extends dk
  implements fm
{
  public static final int a = 1;
  private static final fk b;
  private static final long g;
  private int c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    fk localfk = new fk();
    b = localfk;
    localfk.d = "";
  }

  private fk()
  {
  }

  private fk(fl paramfl, byte paramByte)
  {
    super(paramfl);
  }

  private static fk a(i parami)
  {
    return fl.a((fl)fl.i().a(parami));
  }

  private static fk a(i parami, df paramdf)
  {
    return fl.a((fl)fl.i().a(parami, paramdf));
  }

  private static fk a(m paramm)
  {
    return fl.a((fl)fl.i().a(paramm));
  }

  private static fk a(m paramm, df paramdf)
  {
    return fl.a(fl.i().e(paramm, paramdf));
  }

  private static fk a(InputStream paramInputStream)
  {
    return fl.a((fl)fl.i().a(paramInputStream));
  }

  private static fk a(InputStream paramInputStream, df paramdf)
  {
    return fl.a((fl)fl.i().a(paramInputStream, paramdf));
  }

  private static fk a(byte[] paramArrayOfByte)
  {
    return fl.a((fl)fl.i().a(paramArrayOfByte));
  }

  private static fk a(byte[] paramArrayOfByte, df paramdf)
  {
    return fl.a((fl)fl.i().a(paramArrayOfByte, paramdf));
  }

  private static fl a(fk paramfk)
  {
    return fl.i().a(paramfk);
  }

  private static fk b(InputStream paramInputStream)
  {
    fl localfl = fl.i();
    if (localfl.b(paramInputStream));
    for (fk localfk = fl.a(localfl); ; localfk = null)
      return localfk;
  }

  private static fk b(InputStream paramInputStream, df paramdf)
  {
    fl localfl = fl.i();
    if (localfl.b(paramInputStream, paramdf));
    for (fk localfk = fl.a(localfl); ; localfk = null)
      return localfk;
  }

  private static fl b(dp paramdp)
  {
    return new fl(paramdp);
  }

  public static fk h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.bf();
  }

  private static fk m()
  {
    return b;
  }

  private i n()
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

  private void o()
  {
    this.d = "";
  }

  private static fl p()
  {
    return fl.i();
  }

  private static fl q()
  {
    return fl.i();
  }

  private fl r()
  {
    return fl.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.a(1, n());
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
        k = 0 + n.c(1, n());
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return a.bg();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.fk
 * JD-Core Version:    0.6.2
 */