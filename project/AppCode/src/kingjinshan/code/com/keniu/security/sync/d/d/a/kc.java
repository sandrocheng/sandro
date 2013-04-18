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

public final class kc extends dk
  implements ke
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final kc d;
  private static final long l;
  private int e;
  private Object f;
  private Object g;
  private Object h;
  private byte i = -1;
  private int k = -1;

  static
  {
    kc localkc = new kc();
    d = localkc;
    localkc.f = "";
    localkc.g = "";
    localkc.h = "";
  }

  private kc()
  {
  }

  private kc(kd paramkd, byte paramByte)
  {
    super(paramkd);
  }

  private static kc a(i parami)
  {
    return kd.a((kd)kd.i().a(parami));
  }

  private static kc a(i parami, df paramdf)
  {
    return kd.a((kd)kd.i().a(parami, paramdf));
  }

  private static kc a(m paramm)
  {
    return kd.a((kd)kd.i().a(paramm));
  }

  private static kc a(m paramm, df paramdf)
  {
    return kd.a(kd.i().e(paramm, paramdf));
  }

  private static kc a(InputStream paramInputStream)
  {
    return kd.a((kd)kd.i().a(paramInputStream));
  }

  private static kc a(InputStream paramInputStream, df paramdf)
  {
    return kd.a((kd)kd.i().a(paramInputStream, paramdf));
  }

  private static kc a(byte[] paramArrayOfByte)
  {
    return kd.a((kd)kd.i().a(paramArrayOfByte));
  }

  private static kc a(byte[] paramArrayOfByte, df paramdf)
  {
    return kd.a((kd)kd.i().a(paramArrayOfByte, paramdf));
  }

  private static kd a(kc paramkc)
  {
    return kd.i().a(paramkc);
  }

  private static kc b(InputStream paramInputStream)
  {
    kd localkd = kd.i();
    if (localkd.b(paramInputStream));
    for (kc localkc = kd.a(localkd); ; localkc = null)
      return localkc;
  }

  private static kc b(InputStream paramInputStream, df paramdf)
  {
    kd localkd = kd.i();
    if (localkd.b(paramInputStream, paramdf));
    for (kc localkc = kd.a(localkd); ; localkc = null)
      return localkc;
  }

  private static kd b(dp paramdp)
  {
    return new kd(paramdp);
  }

  public static kc h()
  {
    return d;
  }

  public static final cj i()
  {
    return ih.B();
  }

  private static kc q()
  {
    return d;
  }

  private i r()
  {
    Object localObject = this.f;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i s()
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

  private i t()
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

  private void u()
  {
    this.f = "";
    this.g = "";
    this.h = "";
  }

  private static kd v()
  {
    return kd.i();
  }

  private static kd w()
  {
    return kd.i();
  }

  private kd x()
  {
    return kd.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.a(1, r());
    if ((0x2 & this.e) == 2)
      paramn.a(2, s());
    if ((0x4 & this.e) == 4)
      paramn.a(3, t());
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
      else if (!l())
      {
        this.i = 0;
        bool = false;
      }
      else if (!n())
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
        n = 0 + n.c(1, r());
      if ((0x2 & this.e) == 2)
        n += n.c(2, s());
      if ((0x4 & this.e) == 4)
        n += n.c(3, t());
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return ih.C();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
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

  public final boolean n()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.kc
 * JD-Core Version:    0.6.2
 */