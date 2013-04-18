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

public final class eg extends dk
  implements ei
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final eg e;
  private static final long n;
  private int f;
  private Object g;
  private Object h;
  private Object i;
  private int k;
  private byte l = -1;
  private int m = -1;

  static
  {
    eg localeg = new eg();
    e = localeg;
    localeg.g = "";
    localeg.h = "";
    localeg.i = "";
    localeg.k = 0;
  }

  private eg()
  {
  }

  private eg(eh parameh, byte paramByte)
  {
    super(parameh);
  }

  private static eg a(i parami)
  {
    return eh.a((eh)eh.i().a(parami));
  }

  private static eg a(i parami, df paramdf)
  {
    return eh.a((eh)eh.i().a(parami, paramdf));
  }

  private static eg a(m paramm)
  {
    return eh.a((eh)eh.i().a(paramm));
  }

  private static eg a(m paramm, df paramdf)
  {
    return eh.a(eh.i().e(paramm, paramdf));
  }

  private static eg a(InputStream paramInputStream)
  {
    return eh.a((eh)eh.i().a(paramInputStream));
  }

  private static eg a(InputStream paramInputStream, df paramdf)
  {
    return eh.a((eh)eh.i().a(paramInputStream, paramdf));
  }

  private static eg a(byte[] paramArrayOfByte)
  {
    return eh.a((eh)eh.i().a(paramArrayOfByte));
  }

  private static eg a(byte[] paramArrayOfByte, df paramdf)
  {
    return eh.a((eh)eh.i().a(paramArrayOfByte, paramdf));
  }

  private static eh a(eg parameg)
  {
    return eh.i().a(parameg);
  }

  private static eg b(InputStream paramInputStream)
  {
    eh localeh = eh.i();
    if (localeh.b(paramInputStream));
    for (eg localeg = eh.a(localeh); ; localeg = null)
      return localeg;
  }

  private static eg b(InputStream paramInputStream, df paramdf)
  {
    eh localeh = eh.i();
    if (localeh.b(paramInputStream, paramdf));
    for (eg localeg = eh.a(localeh); ; localeg = null)
      return localeg;
  }

  private static eh b(dp paramdp)
  {
    return new eh(paramdp);
  }

  public static eg h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.aj();
  }

  private static eg s()
  {
    return e;
  }

  private i t()
  {
    Object localObject = this.g;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.g = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i u()
  {
    Object localObject = this.h;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.h = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i v()
  {
    Object localObject = this.i;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.i = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void w()
  {
    this.g = "";
    this.h = "";
    this.i = "";
    this.k = 0;
  }

  private static eh x()
  {
    return eh.i();
  }

  private static eh y()
  {
    return eh.i();
  }

  private eh z()
  {
    return eh.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.a(1, t());
    if ((0x2 & this.f) == 2)
      paramn.a(2, u());
    if ((0x4 & this.f) == 4)
      paramn.a(3, v());
    if ((0x8 & this.f) == 8)
      paramn.a(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
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
        this.l = 0;
        bool = false;
      }
      else if (!l())
      {
        this.l = 0;
        bool = false;
      }
      else if (!n())
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.m;
    if (j != -1);
    while (true)
    {
      return j;
      int i1 = 0x1 & this.f;
      int i2 = 0;
      if (i1 == 1)
        i2 = 0 + n.c(1, t());
      if ((0x2 & this.f) == 2)
        i2 += n.c(2, u());
      if ((0x4 & this.f) == 4)
        i2 += n.c(3, v());
      if ((0x8 & this.f) == 8)
        i2 += n.d(4, this.k);
      j = i2 + b_().b();
      this.m = j;
    }
  }

  protected final dv g()
  {
    return a.ak();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.g = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.h = str;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.i;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.i = str;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.f) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.eg
 * JD-Core Version:    0.6.2
 */