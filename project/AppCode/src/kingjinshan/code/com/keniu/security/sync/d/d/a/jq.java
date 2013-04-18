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

public final class jq extends dk
  implements js
{
  public static final int a = 1;
  private static final jq b;
  private static final long g;
  private int c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    jq localjq = new jq();
    b = localjq;
    localjq.d = "";
  }

  private jq()
  {
  }

  private jq(jr paramjr, byte paramByte)
  {
    super(paramjr);
  }

  private static jq a(i parami)
  {
    return jr.a((jr)jr.l().a(parami));
  }

  private static jq a(i parami, df paramdf)
  {
    return jr.a((jr)jr.l().a(parami, paramdf));
  }

  private static jq a(m paramm)
  {
    return jr.a((jr)jr.l().a(paramm));
  }

  private static jq a(m paramm, df paramdf)
  {
    return jr.a(jr.l().e(paramm, paramdf));
  }

  private static jq a(InputStream paramInputStream)
  {
    return jr.a((jr)jr.l().a(paramInputStream));
  }

  private static jq a(InputStream paramInputStream, df paramdf)
  {
    return jr.a((jr)jr.l().a(paramInputStream, paramdf));
  }

  private static jq a(byte[] paramArrayOfByte)
  {
    return jr.a((jr)jr.l().a(paramArrayOfByte));
  }

  private static jq a(byte[] paramArrayOfByte, df paramdf)
  {
    return jr.a((jr)jr.l().a(paramArrayOfByte, paramdf));
  }

  private static jr a(jq paramjq)
  {
    return jr.l().a(paramjq);
  }

  private static jq b(InputStream paramInputStream)
  {
    jr localjr = jr.l();
    if (localjr.b(paramInputStream));
    for (jq localjq = jr.a(localjr); ; localjq = null)
      return localjq;
  }

  private static jq b(InputStream paramInputStream, df paramdf)
  {
    jr localjr = jr.l();
    if (localjr.b(paramInputStream, paramdf));
    for (jq localjq = jr.a(localjr); ; localjq = null)
      return localjq;
  }

  private static jr b(dp paramdp)
  {
    return new jr(paramdp);
  }

  public static jq h()
  {
    return b;
  }

  public static final cj i()
  {
    return ih.j();
  }

  public static jr l()
  {
    return jr.l();
  }

  private static jq n()
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

  private static jr q()
  {
    return jr.l();
  }

  private jr r()
  {
    return jr.l().a(this);
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
    return ih.k();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jq
 * JD-Core Version:    0.6.2
 */