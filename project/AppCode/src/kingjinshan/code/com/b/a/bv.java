package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bv extends dk
  implements ca
{
  public static final int a = 1;
  private static final bv b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    bv localbv = new bv();
    b = localbv;
    localbv.c = Collections.emptyList();
  }

  private bv()
  {
  }

  private bv(bw parambw, byte paramByte)
  {
    super(parambw);
  }

  private static bv a(i parami)
  {
    return bw.a((bw)bw.m().a(parami));
  }

  private static bv a(i parami, df paramdf)
  {
    return bw.a((bw)bw.m().a(parami, paramdf));
  }

  private static bv a(m paramm)
  {
    return bw.a((bw)bw.m().a(paramm));
  }

  private static bv a(m paramm, df paramdf)
  {
    return bw.a(bw.m().e(paramm, paramdf));
  }

  private static bv a(InputStream paramInputStream)
  {
    return bw.a((bw)bw.m().a(paramInputStream));
  }

  private static bv a(InputStream paramInputStream, df paramdf)
  {
    return bw.a((bw)bw.m().a(paramInputStream, paramdf));
  }

  private static bv a(byte[] paramArrayOfByte)
  {
    return bw.a((bw)bw.m().a(paramArrayOfByte));
  }

  private static bv a(byte[] paramArrayOfByte, df paramdf)
  {
    return bw.a((bw)bw.m().a(paramArrayOfByte, paramdf));
  }

  public static bw a(bv parambv)
  {
    return bw.m().a(parambv);
  }

  private static bv b(InputStream paramInputStream)
  {
    bw localbw = bw.m();
    if (localbw.b(paramInputStream));
    for (bv localbv = bw.a(localbw); ; localbv = null)
      return localbv;
  }

  private static bv b(InputStream paramInputStream, df paramdf)
  {
    bw localbw = bw.m();
    if (localbw.b(paramInputStream, paramdf));
    for (bv localbv = bw.a(localbw); ; localbv = null)
      return localbv;
  }

  private static bw b(dp paramdp)
  {
    return new bw(paramdp);
  }

  public static bv e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.L();
  }

  public static bw k()
  {
    return bw.m();
  }

  private static bv l()
  {
    return b;
  }

  private void m()
  {
    this.c = Collections.emptyList();
  }

  private static bw n()
  {
    return bw.m();
  }

  private bw o()
  {
    return bw.m().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final List D_()
  {
    return this.c;
  }

  public final bx a(int paramInt)
  {
    return (bx)this.c.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    for (int i = 0; i < this.c.size(); i++)
      paramn.b(1, (ex)this.c.get(i));
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.d;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      this.d = 1;
      bool = true;
    }
  }

  public final int b()
  {
    int i = 0;
    int j = this.e;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0;
      while (k < this.c.size())
      {
        int m = i + n.e(1, (ex)this.c.get(k));
        k++;
        i = m;
      }
      j = i + b_().b();
      this.e = j;
    }
  }

  public final bz b(int paramInt)
  {
    return (bz)this.c.get(paramInt);
  }

  protected final dv g()
  {
    return p.M();
  }

  public final List i()
  {
    return this.c;
  }

  public final int j()
  {
    return this.c.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bv
 * JD-Core Version:    0.6.2
 */